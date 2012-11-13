unit UCadastroProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UcadastroExpress, FMTBcd, DBCtrls, ToolEdit, CurrEdit, RXDBCtrl,
  Mask, DB, DBClient, Provider, SqlExpr, ComCtrls, StdCtrls, Grids,
  DBGrids, Buttons, ExtCtrls;

type
  TFCadastroProduto = class(TFCadExpress)
    CDSPROD_CODIGO: TIntegerField;
    CDSPROD_DESC: TStringField;
    CDSPROD_FABRICANTE: TStringField;
    CDSPROD_CODBARRA: TStringField;
    CDSPROD_REF: TStringField;
    CDSPROD_VRCOMPRA: TFloatField;
    CDSPROD_VRVENDA: TFloatField;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    RxDBCalcEdit1: TRxDBCalcEdit;
    RxDBCalcEdit2: TRxDBCalcEdit;
    DBText1: TDBText;
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadastroProduto: TFCadastroProduto;

implementation

uses UFsuper;

{$R *.dfm}

procedure TFCadastroProduto.btnNovoClick(Sender: TObject);
begin
  inherited;
  dscadastro.DataSet.FieldByName('PROD_CODIGO').AsInteger := Retorna_Codigo_Generetor('GEN_PRODUTO');
  DBEdit2.SetFocus;
end;

end.
