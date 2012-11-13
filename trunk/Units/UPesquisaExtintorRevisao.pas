unit UPesquisaExtintorRevisao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPai, ComCtrls, Grids, DBGrids, DB, IBCustomDataSet, IBQuery,
  ExtCtrls, StdCtrls, Buttons;

type
  TFPesquisaExtintorRevisao = class(TFPai)
    Panel1: TPanel;
    qaux: TIBQuery;
    dsaux: TDataSource;
    DBGrid1: TDBGrid;
    StatusBar1: TStatusBar;
    btnFechar: TBitBtn;
    btnSelecionar: TBitBtn;
    BitBtn1: TBitBtn;
    procedure btnFecharClick(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure pesquisaextintor(cod_cliente : string);
  end;

var
  FPesquisaExtintorRevisao: TFPesquisaExtintorRevisao;

implementation

uses UdmGeral, UCadRevisao;

{$R *.dfm}

procedure TFPesquisaExtintorRevisao.pesquisaextintor(cod_cliente: string);
const
  ctPesquisa =
    'SELECT'#10+
    '  (CAST(CLIENTE.CODIGO AS VARCHAR(10)) || '' - '' ||CLIENTE.RAZAO_SOCIAL) AS RAZAO_SOCIAL,'#10+
    '  ESTINTOR.ULTIMA_VISITA,'#10+
    '  ESTINTOR.CODIGO,'#10+
    '  ESTINTOR.NUMERO_SERIE,'#10+
    '  TIPO.TIPO,'#10+
    '  ESTINTOR.CAPACIDADE,'#10+
    '  ESTINTOR.LOCAL_EXTINTOR'#10+
    'FROM'#10+
    '  ESTINTOR'#10+
    '  INNER JOIN CLIENTE ON (ESTINTOR.CLIENTE = CLIENTE.CODIGO)'#10+
    '  INNER JOIN TIPO ON (TIPO.CODIGO = ESTINTOR.TIPO)'#10+
    'WHERE'#10+
    '  (CLIENTE.CODIGO = %s)'#10+
    'ORDER BY'#10+
    '  ESTINTOR.CODIGO';

begin

  if cod_cliente <> '' then
  begin

    qaux.close;
    qaux.SQL.clear;
    qaux.SQL.Add(Format(ctPesquisa, [cod_cliente]));
    qaux.Open;
    qaux.last;
    qaux.first;
    
    StatusBar1.panels[0].Text := qaux.FieldByName('RAZAO_SOCIAL').AsString;
    StatusBar1.panels[1].Text := 'qtd: ' + IntToStr(qaux.recordcount);

  end;

end;

procedure TFPesquisaExtintorRevisao.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFPesquisaExtintorRevisao.btnSelecionarClick(Sender: TObject);
var
  local : string;
begin
  inherited;

  if FCadRevisao.dsItensRevisao.DataSet.Locate('EXT_CODIGO', dsaux.DataSet.FieldByName('CODIGO').AsInteger,[]) then
  begin
    showmessage('Extintor ja esta cadastrado!');
    exit;
  end;

  local := InputBox('Informe o local do extintor', 'LOCAL','');

  FCadRevisao.dsItensRevisao.DataSet.Insert;

  FCadRevisao.dsItensRevisao.DataSet.FieldByName('EXT_CODIGO').AsString :=
  dsaux.DataSet.FieldByName('CODIGO').AsString;

  FCadRevisao.dsItensRevisao.DataSet.FieldByName('REV_CODIGO').AsInteger :=
  FCadRevisao.dsCadastro.DataSet.FieldByName('REV_CODIGO').AsInteger;

  if local <> '' then
    FCadRevisao.dsItensRevisao.DataSet.FieldByName('LOCAL_EXTINTOR').AsString := uppercase(local);

  FCadRevisao.dsItensRevisao.DataSet.Post;
  
  //FCadRevisao.edCodigoExit(sender);

end;

procedure TFPesquisaExtintorRevisao.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

  if FCadRevisao.dsItensRevisao.DataSet.Locate('EXT_CODIGO', dsaux.DataSet.FieldByName('CODIGO').AsInteger,[]) then
    DBGrid1.Canvas.Brush.Color := clSkyBlue
  else
    DBGrid1.Canvas.Brush.Color := clWhite;

  DBGrid1.Canvas.Font.Color := clBlack;
  DBGrid1.DefaultDrawDataCell( Rect, Column.Field, State);
  inherited;

end;

procedure TFPesquisaExtintorRevisao.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  btnSelecionar.Click;
end;

procedure TFPesquisaExtintorRevisao.BitBtn1Click(Sender: TObject);
begin
  inherited;

  while not(qaux.Eof)do
  begin

    if not(FCadRevisao.dsItensRevisao.DataSet.Locate('EXT_CODIGO',
                                                     dsaux.DataSet.FieldByName('CODIGO').AsInteger,[])) then
    begin

      FCadRevisao.dsItensRevisao.DataSet.Insert;

      FCadRevisao.dsItensRevisao.DataSet.FieldByName('EXT_CODIGO').AsString :=
      dsaux.DataSet.FieldByName('CODIGO').AsString;

      FCadRevisao.dsItensRevisao.DataSet.FieldByName('REV_CODIGO').AsInteger :=
      FCadRevisao.dsCadastro.DataSet.FieldByName('REV_CODIGO').AsInteger;

      FCadRevisao.dsItensRevisao.DataSet.Post;

    end;

    qaux.Next;

  end;

end;

end.
