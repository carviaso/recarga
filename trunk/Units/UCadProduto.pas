unit UCadProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadastro, ExtCtrls, DBCtrls, StdCtrls, DB, IBCustomDataSet,
  IBTable, IBQuery, Mask, ToolEdit, Grids, DBGrids, ComCtrls, Buttons,
  DBTables;

type
  TFCadProduto = class(TFCadastro)
    cdsCadastroPROD_CODIGO: TIntegerField;
    cdsCadastroPROD_DESC: TIBStringField;
    cdsCadastroPROD_FABRICANTE: TIBStringField;
    cdsCadastroPROD_CODBARRA: TIBStringField;
    cdsCadastroPROD_REF: TIBStringField;
    cdsCadastroPROD_VRCOMPRA: TFloatField;
    cdsCadastroPROD_VRVENDA: TFloatField;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBText1: TDBText;
    cdsCadastroPROD_TIPO: TIBStringField;
    DBRadioGroup1: TDBRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    BitBtn1: TBitBtn;
    QSiac: TQuery;
    procedure btnNovoClick(Sender: TObject);
    procedure edPesquisaButtonClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadProduto: TFCadProduto;

implementation

uses UdmGeral, UFsuper;

{$R *.dfm}

procedure TFCadProduto.btnNovoClick(Sender: TObject);
begin
  inherited;
  dsCadastro.DataSet.FieldByName('PROD_CODIGO').AsInteger := Retorna_Codigo_Generetor('GEN_PRODUTO');
  dsCadastro.DataSet.FieldByName('PROD_TIPO').AsString    := 'M';
end;

procedure TFCadProduto.edPesquisaButtonClick(Sender: TObject);
var
  Filtro : String;

begin

  if RadioButton1.Checked then
  begin

    if edPesquisa.Text <> '' then
      Filtro := '(PROD_CODIGO = '+edPesquisa.Text+')'

  end else
    Filtro := '(PROD_DESC CONTAINING '+QUotedStr(edPesquisa.Text)+')';


  if edPesquisa.Text <> '' then
  begin
    cdsCadastro.Filtered := True;
    cdsCadastro.Filter   := Filtro;
  end else
    cdsCadastro.Filter := '';


  inherited;

end;

procedure TFCadProduto.btnGravarClick(Sender: TObject);
begin

  if dsCadastro.DataSet.FieldByName('PROD_TIPO').AsVariant = null then
  begin

    ShowMessage('O Tipo deve ser informado!');
    PageControl.ActivePage := tabCadastro;
    RadioButton1.SetFocus;
    Exit;

  end;

  if dsCadastro.DataSet.FieldByName('PROD_DESC').AsString = '' then
  begin

    ShowMessage('A descrição deve ser informada!');
    PageControl.ActivePage := tabCadastro;
    DBEdit1.SetFocus;
    Exit;

  end;


  inherited;

end;

procedure TFCadProduto.BitBtn1Click(Sender: TObject);
const
  ctPesquisa =
    'SELECT'#10+
    '  COD_MERC,'#10+
    '  MERC'#10+
    'FROM'#10+
    '  SACMERC'#10+
    'WHERE'#10+
    '  COD_MERC = %s';

var
  cod : String;

begin

  cod := InputBox('Código do SAC', 'Digite o código', '');

  if cod <> '' then
  begin

    QSiac.Close;
    QSiac.SQL.Clear;
    QSiac.SQL.Add(Format(ctPesquisa, [QuotedStr(cod)]));
    try
      QSiac.Open;
    except
      //ShowMessage('Falta instalação do BDE ou o Alias PREV');
      on e : EDatabaseError do
        ShowMessage(e.Message);

      // Para que está rotina funcione deve ser instalado o BDE
      // e configurado o Alias PREV apontando para o banco do SAC.

    end;
    if not(QSiac.IsEmpty) then
    begin

      btnNovo.Click;
      cdsCadastro.FieldByName('PROD_TIPO').AsVariant := null;
      cdsCadastro.FieldByName('PROD_DESC').AsString  := QSiac.FieldByName('MERC').AsString;
      cdsCadastro.FieldByName('PROD_REF').AsString   := QSiac.FieldByName('COD_MERC').AsString;
      //btnGravar.Click;

      //ShowMessage('Produto Incluido com sucesso!');

    end;

  end;

  inherited;

end;

end.
