unit UCadUnidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadastro, FMTBcd, DBCtrls, StdCtrls, SqlExpr, DB, DBClient,
  Provider, Mask, ToolEdit, Grids, DBGrids, ComCtrls, Buttons, ExtCtrls,
  IBTable, IBCustomDataSet, IBQuery;

type
  TFCadUnidade = class(TFCadastro)
    Label3: TLabel;
    DBText1: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    edEmb: TDBEdit;
    edDescricao: TDBEdit;
    rbDescricao: TRadioButton;
    rbCodigo: TRadioButton;
    rbEmb: TRadioButton;
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure edPesquisaButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadUnidade: TFCadUnidade;

implementation

uses UdmGeral;

{$R *.dfm}

procedure TFCadUnidade.btnNovoClick(Sender: TObject);
const
  ctCodigo = 'SELECT MAX(CODIGO) FROM UNIDADE';
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

procedure TFCadUnidade.btnAlterarClick(Sender: TObject);
begin
  inherited;
  edDescricao.SetFocus;

end;

procedure TFCadUnidade.edPesquisaButtonClick(Sender: TObject);
begin
  if rbDescricao.Checked then
    cdsCadastro.Filter := 'DESCRICAO LIKE ''' + edPesquisa.Text + '%'''
  else if rbCodigo.Checked then
    cdsCadastro.Filter := 'CODIGO = ' + edPesquisa.Text
  else if rbEmb.Checked then
    cdsCadastro.Filter := 'EMB LIKE ''' + edPesquisa.Text + '%''';

  cdsCadastro.Filtered := true;
  inherited;

end;

end.
