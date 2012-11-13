unit UCadGrupoAcesso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadastro, FMTBcd, StdCtrls, ComCtrls, DBCtrls, SqlExpr, DB,
  DBClient, Provider, Mask, ToolEdit, Grids, DBGrids, Buttons, ExtCtrls,
  IBTable, IBCustomDataSet, IBQuery;

type
  TFCadGrupoAcesso = class(TFCadastro)
    Label3: TLabel;
    DBText1: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    edDescricao: TDBEdit;
    DBRichEdit1: TDBRichEdit;
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
  FCadGrupoAcesso: TFCadGrupoAcesso;

implementation

uses UdmGeral;

{$R *.dfm}

procedure TFCadGrupoAcesso.btnNovoClick(Sender: TObject);
const
  ctCodigo = 'SELECT MAX(CODIGO) FROM GRUPO_ACESSO';
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

procedure TFCadGrupoAcesso.btnAlterarClick(Sender: TObject);
begin
  inherited;
  edDescricao.SetFocus;

end;

procedure TFCadGrupoAcesso.edPesquisaButtonClick(Sender: TObject);
begin
  if rbDescricao.Checked then
    cdsCadastro.Filter := 'DESCRICAO LIKE ''' + edPesquisa.Text + '%'''
  else if rbCodigo.Checked then
    cdsCadastro.Filter := 'CODIGO = ' + edPesquisa.Text;

  cdsCadastro.Filtered := true;
  inherited;

end;

end.
