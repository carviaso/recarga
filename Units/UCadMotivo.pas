unit UCadMotivo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadastro, StdCtrls, DBCtrls, IBTable, DB, IBCustomDataSet,
  IBQuery, Mask, ToolEdit, Grids, DBGrids, ComCtrls, Buttons, ExtCtrls;

type
  TFCadMotivo = class(TFCadastro)
    Label1: TLabel;
    lbNumero: TLabel;
    edMotivo: TDBEdit;
    procedure edPesquisaButtonClick(Sender: TObject);
    procedure mMotivoChange(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadMotivo: TFCadMotivo;

implementation

uses UdmGeral, UFsuper;

{$R *.dfm}

procedure TFCadMotivo.edPesquisaButtonClick(Sender: TObject);
begin
  inherited;
  cdsCadastro.Filtered := true;
  cdsCadastro.Filter   := 'MOTIVO LIKE ''' + edPesquisa.Text + '%''';
end;

procedure TFCadMotivo.mMotivoChange(Sender: TObject);
begin
  inherited;
  lbNumero.Caption := 'Quantidade de Caracteres ' + intToStr(length(edMotivo.Text)) + '/250';
end;

procedure TFCadMotivo.btnNovoClick(Sender: TObject);
const
  ctLimite = 'SELECT COUNT(*) FROM MOTIVO';
begin
  qaux.Close;
  qaux.SQL.Clear;
  qaux.SQL.Add(ctLimite);
  qaux.Open;

  if qaux.Fields[0].AsInteger >= 10 then
  begin
    alert('Não pode haver mais de 10 motivos cadastrados!');
    exit;
  end;
  inherited;
  edMotivo.SetFocus;
end;

procedure TFCadMotivo.btnAlterarClick(Sender: TObject);
begin
  inherited;
  edMotivo.SetFocus;

end;

end.
