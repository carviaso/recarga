unit UCadPressao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadastro, FMTBcd, StdCtrls, DBCtrls, SqlExpr, DB, DBClient,
  Provider, Mask, ToolEdit, Grids, DBGrids, ComCtrls, Buttons, ExtCtrls,
  IBTable, IBCustomDataSet, IBQuery;

type
  TFCadPressao = class(TFCadastro)
    Label3: TLabel;
    DBText1: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    edPE: TDBEdit;
    EDpT: TDBEdit;
    rbCodigo: TRadioButton;
    edAb: TDBComboBox;
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure edPesquisaButtonClick(Sender: TObject);
    procedure EDpTKeyPress(Sender: TObject; var Key: Char);
    procedure btnGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadPressao: TFCadPressao;

implementation

uses UdmGeral, UFsuper;

{$R *.dfm}

procedure TFCadPressao.btnNovoClick(Sender: TObject);
const
  ctCodigo = 'SELECT MAX(CODIGO) FROM PRESSAO';
begin
  qaux.close;
  qaux.SQL.clear;
  qaux.SQL.Add(ctCodigo);
  qaux.Open;

  inherited;
  EDpT.SetFocus;
  dsCadastro.DataSet.FieldByName('CODIGO').AsInteger := qaux.Fields[0].asInteger + 1;
  qaux.Close;
end;

procedure TFCadPressao.btnAlterarClick(Sender: TObject);
begin
  inherited;
  EDpT.SetFocus;

end;

procedure TFCadPressao.edPesquisaButtonClick(Sender: TObject);
begin
  inherited;
  if rbCodigo.Checked then
    cdsCadastro.Filter := 'CODIGO = ' + edPesquisa.Text;
  cdsCadastro.Filtered := true;

end;

procedure TFCadPressao.EDpTKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in ['0'..'9',#8,'.',',']) then
    key := #0;
  inherited;

end;

procedure TFCadPressao.btnGravarClick(Sender: TObject);
begin
  if EDpT.Text = '' then
  begin
    alert('A pressão de trabalho tem que ser informada!');
    PageControl.ActivePageIndex := 1;
    EDpT.SetFocus;
    exit;
  end;

  if edPE.Text = '' then
  begin
    alert('A pressão de ensaio tem que ser informada!');
    PageControl.ActivePageIndex := 1;
    edPE.SetFocus;
    exit;
  end;

  inherited;

end;

end.
