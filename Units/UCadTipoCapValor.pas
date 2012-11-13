unit UCadTipoCapValor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadastro, CurrEdit, RXDBCtrl, DBCtrls, StdCtrls, DB, IBTable,
  IBCustomDataSet, IBQuery, Mask, ToolEdit, Grids, DBGrids, ComCtrls,
  Buttons, ExtCtrls;

type
  TFCadTipoCapValor = class(TFCadastro)
    cdsCadastroTIPO: TIntegerField;
    cdsCadastroCAPACIDADE: TIntegerField;
    cdsCadastroVR_RECARGA: TFloatField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dblTipo: TDBLookupComboBox;
    edCapacidade: TDBEdit;
    edVrTeste: TRxDBCalcEdit;
    edVrRecarga: TRxDBCalcEdit;
    cdsCadastroTIPO_DESC: TIBStringField;
    dsTipo: TDataSource;
    cdsCadastroVR_TESTE: TFloatField;
    procedure btnGravarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadTipoCapValor: TFCadTipoCapValor;

implementation

uses UdmGeral, UdmPesquisa;

{$R *.dfm}

procedure TFCadTipoCapValor.btnGravarClick(Sender: TObject);
begin

  if dblTipo.KeyValue = Null then
  begin

    ShowMessage('O Tipo deve ser informado!');
    dblTipo.SetFocus;
    Exit;

  end;

  if edCapacidade.Text = '' then
  begin

    ShowMessage('A Capacidade deve ser informada!');
    edCapacidade.SetFocus;
    Exit;

  end;

  if edVrTeste.Value = 0 then
    ShowMessage('O valor de teste não foi informado!');

  if edVrRecarga.Value = 0 then
    ShowMessage('O valor de recarga não foi informado!');

  cdsCadastroTIPO_DESC.AsString := dblTipo.Text;
  inherited;

end;

procedure TFCadTipoCapValor.btnNovoClick(Sender: TObject);
begin
  inherited;
  dblTipo.SetFocus;
end;

procedure TFCadTipoCapValor.btnAlterarClick(Sender: TObject);
begin
  inherited;
  dblTipo.SetFocus;
end;

end.
