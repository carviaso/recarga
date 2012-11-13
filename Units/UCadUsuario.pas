unit UCadUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadastro, FMTBcd, DBCtrls, StdCtrls, SqlExpr, DB, DBClient,
  Provider, Mask, ToolEdit, Grids, DBGrids, ComCtrls, Buttons, ExtCtrls,
  IBTable, IBCustomDataSet, IBQuery;

type
  TFCadUsuario = class(TFCadastro)
    Label3: TLabel;
    DBText1: TDBText;
    Label1: TLabel;
    edNome: TDBEdit;
    Label2: TLabel;
    Label4: TLabel;
    edSenha: TDBEdit;
    dblGrupoAcesso: TDBLookupComboBox;
    dsGrupo: TDataSource;
    rbCodigo: TRadioButton;
    rbNome: TRadioButton;
    rbGrupoAcesso: TRadioButton;
    DBCheckBox1: TDBCheckBox;
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure edPesquisaButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadUsuario: TFCadUsuario;

implementation

uses UdmGeral, UdmPesquisa, UFsuper;

{$R *.dfm}

procedure TFCadUsuario.btnNovoClick(Sender: TObject);
const
  ctCodigo = 'SELECT MAX(CODIGO) FROM USUARIO';
begin
  qaux.close;
  qaux.SQL.clear;
  qaux.SQL.Add(ctCodigo);
  qaux.Open;

  inherited;
  edNome.SetFocus;
  dsCadastro.DataSet.FieldByName('CODIGO').AsInteger := qaux.Fields[0].asInteger + 1;
  dsCadastro.DataSet.FieldByName('USUARIO_MASTER').AsInteger := 0;
  qaux.Close;
end;

procedure TFCadUsuario.btnAlterarClick(Sender: TObject);
begin
  inherited;
  edNome.SetFocus;

end;

procedure TFCadUsuario.edPesquisaButtonClick(Sender: TObject);
begin
  if rbNome.Checked then
    cdsCadastro.Filter := 'NOME LIKE ''' + edPesquisa.Text + '%'''
  else if rbCodigo.Checked then
    cdsCadastro.Filter := 'CODIGO = ' + edPesquisa.Text
  else if rbGrupoAcesso.Checked then
  begin
    if DMPesquisa.cdsGrupo.Locate('DESCRICAO',edPesquisa.Text,[loPartialKey]) then
      cdsCadastro.Filter := 'COD_GRUPO = ' + DMPesquisa.cdsGrupo.FieldbyName('CODIGO').AsString;
  end;

  cdsCadastro.Filtered := true;
  inherited;

end;

procedure TFCadUsuario.FormCreate(Sender: TObject);
begin
  DMPesquisa.cdsGrupo.Open;
  inherited;

end;

procedure TFCadUsuario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DMPesquisa.cdsGrupo.Close;
  inherited;

end;

procedure TFCadUsuario.btnGravarClick(Sender: TObject);
begin
  if edNome.Text = '' then
  begin
    alert('O nome do usuário deve ser informado!');
    edNome.SetFocus;
    exit;
  end;

  if edSenha.Text = '' then
  begin
    alert('A senha do usuário deve ser informada!');
    edSenha.SetFocus;
    exit;
  end;
  inherited;

end;

end.
