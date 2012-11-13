unit UTestes;

interface

uses
  Windows, Messages, UPai, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, DB, IBCustomDataSet, IBTable, Buttons,
  ExtCtrls;

type
  TFTestes = class(TFPai)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cdsCadastro: TIBTable;
    dsCadastro: TDataSource;
    dsMotivo: TDataSource;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    edPv: TDBEdit;
    GroupBox4: TGroupBox;
    edPc: TDBEdit;
    GroupBox5: TGroupBox;
    lbPvPc: TLabel;
    GroupBox6: TGroupBox;
    lbResultadoCubagem: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    lbResultadoAltaPressao: TLabel;
    GroupBox9: TGroupBox;
    edEt: TDBEdit;
    GroupBox10: TGroupBox;
    edEp: TDBEdit;
    GroupBox14: TGroupBox;
    GroupBox17: TGroupBox;
    lbPercaMassa: TLabel;
    GroupBox15: TGroupBox;
    DBText2: TDBText;
    GroupBox18: TGroupBox;
    edTara: TDBEdit;
    GroupBox16: TGroupBox;
    lbMotivo: TLabel;
    mmMotivo: TMemo;
    dblMotivo: TDBLookupComboBox;
    Panel1: TPanel;
    DBText1: TDBText;
    Label1: TLabel;
    procedure edPvExit(Sender: TObject);
    procedure edEpExit(Sender: TObject);
    procedure edTaraExit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    procedure rodaFuncoes;
    function cubagem(pc, pv, cp : real; L : Tlabel; constate : Real = 0.68):Boolean;
    function altaPress(ep, et : real; L : Tlabel):Boolean;
    function percaMassa(pv, tara: real; L : Tlabel):Boolean;
  public
    { Public declarations }
  end;

var
  FTestes: TFTestes;

implementation

uses UdmGeral, UdmPesquisa;

{$R *.dfm}

{ TFTestes }

procedure TFTestes.rodaFuncoes;
begin
      mmMotivo.Clear;
      // Ensaio Alta Pressão ///////////////////////////////////////
      if not(altaPress(edEp.Field.AsFloat,
                       edEt.Field.AsFloat,
                       lbResultadoAltaPressao)) then
      begin
        if dsCadastro.DataSet.State in[dsEdit, dsInsert] then
          dsCadastro.DataSet.FieldByName('SITUACAO').AsString := 'N';
        mmMotivo.Lines.Add('O resultado da alta pressão é maior que 10%!');
      end else if dsCadastro.DataSet.State in[dsEdit, dsInsert] then begin
        dsCadastro.DataSet.FieldByName('SITUACAO').AsString := 'S';
        mmMotivo.Lines.Add('Alta Pressão OK!');
      end;

      // Perca de Massa       /////////////////////////////////////
      if not(percaMassa(dsCadastro.DataSet.FieldByName('PESO_VAZIO').AsFloat,
                        dsCadastro.DataSet.FieldByName('TARA').AsFloat,
                        lbPercaMassa))then
      begin
        if dsCadastro.DataSet.State in[dsEdit, dsInsert] then
          dsCadastro.DataSet.FieldByName('SITUACAO').AsString := 'N';
        mmMotivo.Lines.Add('A perca de massa supera os 5%!!');
      end else if dsCadastro.DataSet.State in[dsEdit, dsInsert] then begin
        dsCadastro.DataSet.FieldByName('SITUACAO').AsString := 'S';
        mmMotivo.Lines.Add('Perca de massa OK!');
      end;


end;

procedure TFTestes.edPvExit(Sender: TObject);
begin
    rodaFuncoes;
    if dsCadastro.DataSet.State in[dsEdit, dsInsert] then
    begin
      mmMotivo.Clear;
      // Ensaio Cubagem  ////////////////////////////////////////////
      if not(cubagem(edPc.Field.AsFloat,
                     edPv.Field.AsFloat,
                     cdsCadastro.FieldByName('CAPACIDADE').AsFloat,
                     lbResultadoCubagem)) then
        mmMotivo.Lines.Add('A resultado da cubagem difere da capacidade!')
      else
        mmMotivo.Lines.Add('Cubagem OK!');

    end;

end;

procedure TFTestes.edEpExit(Sender: TObject);
begin
  rodaFuncoes;

end;

procedure TFTestes.edTaraExit(Sender: TObject);
begin
  rodaFuncoes;

end;

function TFTestes.altaPress(ep, et: real; L: Tlabel): Boolean;
begin
  (* Especificação
     ep = ?;
     et = ?;

     formula: (ep - et) * 100 <= 10;

     se o resultado for <= 10 reprovado!

     mostrar o resultado como porcentagem '%'.
   *)
   if (ep = 0) or (et = 0) then
   begin
     L.Caption := '0%';
     result := false;
   end else begin
     L.Caption := FormatFloat('0%',(ep / et) * 100);
     if dsCadastro.DataSet.State in [dsInsert, dsEdit]then
       dsCadastro.DataSet.FieldByName('RS_EP_ET').AsFloat := (ep / et) * 100;
     result := (ep / et) * 100 <= 10;
   end;
end;

function TFTestes.cubagem(pc, pv, cp: real; L: Tlabel;
  constate: Real): Boolean;
begin
  (* Especificação
     constate = 0.68;
     pc = Peso Cheio;
     pv = Peso Vazio;
     cp = capacidade;

     formula: (pc - pv) * constate = capacidade;

     se o resultado for <> da capacidade mostrar informação no memo!

     unidade de medida 'Kg'.
   *)
  L.Caption := FormatFloat('0%',(pc - pv) * constate);
  result := FormatFloat('0%',(pc - pv) * constate) = FormatFloat('0%',cp);

end;

function TFTestes.percaMassa(pv, tara: real; L: Tlabel): Boolean;
begin
  (* Especificação
     pv     = peso cheio;
     tara   = peso de fabrica;

     formula: (1- (pv / tara))*100;

     se o resultado for <= 5 reprovado!

     mostrar o resultado como porcentagem '%'.
   *)
   if (pv = 0) or (tara = 0) then
   begin
     L.Caption := '0%';
     result := false;
   end else begin
     L.Caption := FormatFloat('0%',(1- (pv / tara))*100);

     if dsCadastro.DataSet.State in [dsInsert, dsEdit]then
       dsCadastro.DataSet.FieldByName('RS_PERDA').AsFloat := (1- (pv / tara))*100;

     result := (1- (pv / tara))*100 <= 5;
   end;
end;

procedure TFTestes.BitBtn2Click(Sender: TObject);
begin
  cdsCadastro.Post;
  cdsCadastro.Transaction.CommitRetaining;
end;

end.
