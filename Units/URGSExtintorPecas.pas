unit URGSExtintorPecas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPai, ExtCtrls, DB,
  StdCtrls, CheckLst, Grids, DBGrids, Buttons, IBCustomDataSet, IBQuery,
  ComCtrls;

type
  TFRGSExtintorPecas = class(TFPai)
    CheckListBox: TCheckListBox;
    dsPecas: TDataSource;
    qaux: TIBQuery;
    Panel1: TPanel;
    btnCancelar: TBitBtn;
    btnGravar: TBitBtn;
    Panel2: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    ProgressBar1: TProgressBar;
    procedure FormCreate(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure atualizaListBox;
  end;

var
  FRGSExtintorPecas: TFRGSExtintorPecas;
  codrgs, codExtintor : integer;
  i : integer;
implementation

uses UdmGeral, UdmPesquisa, UFsuper, UCadSituacao, UCadRgs;

{$R *.dfm}

procedure TFRGSExtintorPecas.FormCreate(Sender: TObject);
const
  ctPesquisa =
    'select * from RGS_EXTINTOR_PECAS WHERE CODIGO_RGS = %s';

begin
  inherited;
  // Abro a query onde será pesquisado o relacionamento RGS/Extintor/Pecas
  if codrgs = 0 then
    codrgs      := FCadRgs.dsCadastro.DataSet.FieldByName('CODIGO').AsInteger;

  qaux.Close;
  qaux.SQL.Clear;
  qaux.SQL.Add(Format(ctPesquisa, [intToStr(codrgs)]));
  qaux.Open;

  dsPecas.DataSet.Open;
  dsPecas.DataSet.First;

  while not(dsPecas.DataSet.Eof) do
  begin
    CheckListBox.Items.Add(' ' + dsPecas.DataSet.FieldByName('DESCRICAO').AsString);
    dsPecas.DataSet.Next;
  end;
  dsPecas.DataSet.First;


end;

procedure TFRGSExtintorPecas.btnCancelarClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFRGSExtintorPecas.btnGravarClick(Sender: TObject);
const
  ctInsert =
    'INSERT INTO RGS_EXTINTOR_PECAS(CODIGO_RGS, CODIGO_EXTINTOR, CODIGO_PECA) VALUES(%s, %s, %s)';
  ctDelete =
    'DELETE FROM RGS_EXTINTOR_PECAS WHERE (CODIGO_RGS = %s)AND(CODIGO_EXTINTOR = %s)AND(CODIGO_PECA = %s)';
var
  i : integer;

begin

  if RadioButton2.Checked then
  begin

    ProgressBar1.Max := (CheckListBox.Items.Count - 1);
    ProgressBar1.Position := 0;
    for i := 0 to (CheckListBox.Items.Count - 1) do
    begin
      if not(dsPecas.DataSet.Locate('DESCRICAO',CheckListBox.Items.ValueFromIndex[i],[])) then
        continue;

      if CheckListBox.Checked[i] then
      begin
       // Verifico se ja existe o relacionamento RGS extintor Peca
       if qaux.Locate('CODIGO_RGS;CODIGO_EXTINTOR;CODIGO_PECA',VarArrayOf([intToStr(codrgs),
                                                                           intToStr(codExtintor),
                                                                           dsPecas.DataSet.FieldByName('CODIGO_PECAS').Asstring]),[]) then
         continue
       else
        execDml(Format(ctInsert,[intToStr(codrgs),
                                 intToStr(codExtintor),
                                 dsPecas.DataSet.FieldByName('CODIGO_PECAS').Asstring]));
      end else begin
       // Verifico se ja existe o relacionamento RGS extintor Peca
       if qaux.Locate('CODIGO_RGS;CODIGO_EXTINTOR;CODIGO_PECA',VarArrayOf([intToStr(codrgs),
                                                                          intToStr(codExtintor),
                                                                          dsPecas.DataSet.FieldByName('CODIGO_PECAS').Asstring]),[]) then
        execDml(Format(ctDelete,[intToStr(codrgs),
                                 intToStr(codExtintor),
                                 dsPecas.DataSet.FieldByName('CODIGO_PECAS').Asstring]))
       else
         continue;
      end;

      ProgressBar1.Position := i;
    end;
    close;

    end else begin

      FCadRgs.dsExtintorRGS2.DataSet.First;

      ProgressBar1.Max := FCadRgs.dsExtintorRGS2.DataSet.RecordCount;
      ProgressBar1.Position := 0;

      while not(FCadRgs.dsExtintorRGS2.DataSet.Eof) do
      begin

        for i := 0 to (CheckListBox.Items.Count - 1) do
        begin
          if not(dsPecas.DataSet.Locate('DESCRICAO',CheckListBox.Items.ValueFromIndex[i],[])) then
            continue;

          if CheckListBox.Checked[i] then
          begin
           // Verifico se ja existe o relacionamento RGS extintor Peca
           if qaux.Locate('CODIGO_RGS;CODIGO_EXTINTOR;CODIGO_PECA',VarArrayOf([intToStr(codrgs),
                                                                               FCadRgs.dsExtintorRGS2.DataSet.FieldByName('CODIGO').AsString,
                                                                               dsPecas.DataSet.FieldByName('CODIGO_PECAS').Asstring]),[]) then
             continue
           else
            execDml(Format(ctInsert,[intToStr(codrgs),
                                     FCadRgs.dsExtintorRGS2.DataSet.FieldByName('CODIGO').AsString,
                                     dsPecas.DataSet.FieldByName('CODIGO_PECAS').Asstring]));
          end else begin
           // Verifico se ja existe o relacionamento RGS extintor Peca
           if qaux.Locate('CODIGO_RGS;CODIGO_EXTINTOR;CODIGO_PECA',VarArrayOf([intToStr(codrgs),
                                                                              FCadRgs.dsExtintorRGS2.DataSet.FieldByName('CODIGO').AsString,
                                                                              dsPecas.DataSet.FieldByName('CODIGO_PECAS').Asstring]),[]) then
            execDml(Format(ctDelete,[intToStr(codrgs),
                                     FCadRgs.dsExtintorRGS2.DataSet.FieldByName('CODIGO').AsString,
                                     dsPecas.DataSet.FieldByName('CODIGO_PECAS').Asstring]))
           else
             continue;
          end;

        end;

        ProgressBar1.StepBy(1);
        FCadRgs.dsExtintorRGS2.DataSet.Next;
      end;

      Close;

  end;

  //inherited;

end;

procedure TFRGSExtintorPecas.atualizaListBox;
begin
  // Marco ou desmarco os itens de acordo com os relacioamentos existentes
  for i := 0 to (CheckListBox.Items.Count - 1) do
  begin
     // Verifico se ja existe o relacionamento RGS extintor Peca
    if dsPecas.DataSet.Locate('DESCRICAO',CheckListBox.Items.ValueFromIndex[i],[]) then
      CheckListBox.Checked[i] :=  qaux.Locate('CODIGO_RGS;CODIGO_EXTINTOR;CODIGO_PECA',VarArrayOf([intToStr(codrgs),
                                                                                                 intToStr(codExtintor),
                                                                                                 dsPecas.DataSet.FieldByName('CODIGO_PECAS').Asstring]),[]);
  end;

end;

end.
