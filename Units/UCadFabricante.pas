unit UCadFabricante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadastro, FMTBcd, StdCtrls, DBCtrls, SqlExpr, DB, DBClient,
  Provider, Mask, ToolEdit, Grids, DBGrids, ComCtrls, Buttons, ExtCtrls,
  IBTable, IBCustomDataSet, IBQuery;

type
  TFCadFabricante = class(TFCadastro)
    Label3: TLabel;
    DBText1: TDBText;
    Label1: TLabel;
    edDescricao: TDBEdit;
    rbCodigo: TRadioButton;
    rbDescricao: TRadioButton;
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure edPesquisaButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadFabricante: TFCadFabricante;

implementation

uses UdmGeral;

{$R *.dfm}

procedure TFCadFabricante.btnNovoClick(Sender: TObject);
const
  ctCodigo = 'SELECT MAX(CODIGO) FROM FABRICANTE';
begin
  qaux.close;
  qaux.SQL.clear;
  qaux.SQL.Add(ctCodigo);
  qaux.Open;

  inherited;
  edDescricao.SetFocus;
  dsCadastro.DataSet.FieldByName('CODIGO').AsInteger := qaux.Fields[0].asInteger + 1;
  qaux.Close;
end;

procedure TFCadFabricante.btnAlterarClick(Sender: TObject);
begin
  inherited;
  edDescricao.SetFocus;

end;

procedure TFCadFabricante.edPesquisaButtonClick(Sender: TObject);
begin
  if rbDescricao.Checked then
    cdsCadastro.Filter := 'DESCRICAO LIKE ''' + edPesquisa.Text + '%'''
  else if rbCodigo.Checked then
    cdsCadastro.Filter := 'CODIGO = ' + edPesquisa.Text;

  cdsCadastro.Filtered := true;
  inherited;

end;

end.
