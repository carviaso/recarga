unit UpesquisaClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPai, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, DB,
  IBCustomDataSet, IBQuery;

type
  TFpesquisaClientes = class(TFPai)
    Panel1: TPanel;
    dbgPesquisa: TDBGrid;
    edPesquisa: TEdit;
    btnSelecionar: TBitBtn;
    Panel2: TPanel;
    QPesquisa: TIBQuery;
    dsPesquisa: TDataSource;
    QPesquisaCODIGO: TIntegerField;
    QPesquisaRAZAO_SOCIAL: TIBStringField;
    QPesquisaENDERECO: TIBStringField;
    QPesquisaBAIRRO: TIBStringField;
    QPesquisaCIDADE: TIBStringField;
    QPesquisaUF: TIBStringField;
    QPesquisaCEP: TIBStringField;
    QPesquisaTELEFONE: TIBStringField;
    QPesquisaCNPJ: TIBStringField;
    QPesquisaEMAIL: TIBStringField;
    QPesquisaFANTAZIA: TIBStringField;
    rgTipoPesquisa: TRadioGroup;
    procedure edPesquisaChange(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
    procedure dbgPesquisaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure dbgPesquisaDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FpesquisaClientes: TFpesquisaClientes;

implementation

uses UdmGeral;

{$R *.dfm}

procedure TFpesquisaClientes.edPesquisaChange(Sender: TObject);
const
  ctPesquisa =
    'SELECT * FROM CLIENTE WHERE %s';
begin
  inherited;

  if Trim(edPesquisa.Text) <> '' then
  begin

    QPesquisa.Close;
    QPesquisa.SQl.Clear;


    case rgTipoPesquisa.ItemIndex of
      0: QPesquisa.SQL.Add(Format(ctPesquisa, ['RAZAO_SOCIAL LIKE ' + QuotedStr(edPesquisa.Text + '%')]));
      1: QPesquisa.SQL.Add(Format(ctPesquisa, ['RAZAO_SOCIAL LIKE ' + QuotedStr('%' + edPesquisa.Text + '%')]));
    end;

    QPesquisa.Open;

    Panel2.Caption := QPesquisa.Fields[1].AsString;

  end;
  {
  if QPesquisa.Locate('RAZAO_SOCIAL',edPesquisa.Text,[loPartialKey,loCaseInsensitive]) then
    Panel2.Caption := QPesquisa.Fields[1].AsString
  else
    Panel2.Caption := '';
  }
end;

procedure TFpesquisaClientes.btnSelecionarClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFpesquisaClientes.dbgPesquisaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if dbgPesquisa.DataSource.DataSet.RecNo mod 2 = 0 then
    dbgPesquisa.Canvas.Brush.Color := clMoneyGreen
  else
    dbgPesquisa.Canvas.Brush.Color := clWhite;

  dbgPesquisa.Canvas.Font.Color := clBlack;
  dbgPesquisa.DefaultDrawDataCell( Rect, Column.Field, State);

end;

procedure TFpesquisaClientes.FormCreate(Sender: TObject);
begin
  inherited;

  Panel2.Caption := QPesquisa.Fields[1].AsString;

end;

procedure TFpesquisaClientes.dbgPesquisaDblClick(Sender: TObject);
begin
  inherited;
  btnSelecionar.Click;
end;

end.
