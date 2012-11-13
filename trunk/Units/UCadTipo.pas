unit UCadTipo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadastro, FMTBcd, SqlExpr, DB, DBClient, Provider, StdCtrls,
  Mask, ToolEdit, Grids, DBGrids, ComCtrls, Buttons, ExtCtrls, DBCtrls,
  IBTable, IBCustomDataSet, IBQuery;

type
  TFCadTipo = class(TFCadastro)
    Label3: TLabel;
    DBText1: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    edtipo: TDBEdit;
    edDescricao: TDBEdit;
    rbTipo: TRadioButton;
    rbCodigo: TRadioButton;
    rbDescricao: TRadioButton;
    cbAltaPress: TDBCheckBox;
    Label4: TLabel;
    edNbm: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    rgTipoInmetro: TDBRadioGroup;
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure edPesquisaButtonClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure edDescricaoEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadTipo: TFCadTipo;

implementation

uses UdmGeral;

{$R *.dfm}

procedure TFCadTipo.btnNovoClick(Sender: TObject);
const
  ctCodigo = 'SELECT MAX(CODIGO) FROM TIPO';
begin
  qaux.close;
  qaux.SQL.clear;
  qaux.SQL.Add(ctCodigo);
  qaux.Open;

  inherited;
  edtipo.SetFocus;
  dsCadastro.DataSet.FieldByName('CODIGO').AsInteger := qaux.Fields[0].asInteger + 1;
  qaux.Close;
end;

procedure TFCadTipo.btnAlterarClick(Sender: TObject);
begin
  inherited;
  edtipo.SetFocus;
end;

procedure TFCadTipo.edPesquisaButtonClick(Sender: TObject);
begin
  if rbDescricao.Checked then
    cdsCadastro.Filter := 'DESCRICAO LIKE ''' + edPesquisa.Text + '%'''
  else if rbCodigo.Checked then
    cdsCadastro.Filter := 'CODIGO = ' + edPesquisa.Text
  else if rbTipo.Checked then
    cdsCadastro.Filter := 'TIPO LIKE ''' + edPesquisa.Text + '%''';

  cdsCadastro.Filtered := true;
  inherited;


end;

procedure TFCadTipo.btnGravarClick(Sender: TObject);
begin
  if Trim( edtipo.Text ) = '' then
  begin
    ShowMessage('O tipo deve ser informado!');
    edtipo.SetFocus;
    exit;
  end;
  inherited;

end;

procedure TFCadTipo.edDescricaoEnter(Sender: TObject);
begin
  inherited;
  if trim( edDescricao.Text ) = '' then
    edDescricao.Text := edtipo.text;
end;

end.
