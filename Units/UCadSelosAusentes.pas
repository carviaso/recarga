unit UCadSelosAusentes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadastro, IBTable, DB, IBCustomDataSet, IBQuery, StdCtrls,
  Mask, ToolEdit, Grids, DBGrids, ComCtrls, DBCtrls, Buttons, ExtCtrls;

type
  TFCadSelosAusentes = class(TFCadastro)
    cdsCadastroSELO: TIBStringField;
    cdsCadastroMOTIVO_AUSENCIA: TIBStringField;
    cdsCadastroDATA: TDateTimeField;
    Label1: TLabel;
    edSelo: TDBEdit;
    Label2: TLabel;
    edMotivo: TDBEdit;
    rbSelo: TRadioButton;
    rbMotivo: TRadioButton;
    Label3: TLabel;
    DBText1: TDBText;
    procedure edSeloExit(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure edPesquisaButtonClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadSelosAusentes: TFCadSelosAusentes;

implementation

uses UdmGeral, UFsuper;

{$R *.dfm}

procedure TFCadSelosAusentes.edSeloExit(Sender: TObject);
begin
  inherited;

  if not( testaInteiro( edSelo.text ) ) then
  begin
    Showmessage( 'O número do selo só pode conter números!' );
    edSelo.SetFocus;
    exit;
  end;
end;

procedure TFCadSelosAusentes.btnGravarClick(Sender: TObject);
begin

  if trim( edSelo.text ) = '' then
  begin
    Showmessage( 'O número do selo deve ser informado!' );
    edSelo.SetFocus;
    exit;
  end;

  if trim( edMotivo.text ) = '' then
  begin
    Showmessage( 'O motivo de descarte deve ser informado!' );
    edMotivo.SetFocus;
    exit;
  end;

  if dsCadastro.DataSet.State = dsInsert then
    cdsCadastroDATA.AsDateTime := Now;

  inherited;

end;

procedure TFCadSelosAusentes.edPesquisaButtonClick(Sender: TObject);
begin
  if rbSelo.Checked then
    cdsCadastro.Filter := 'SELO = ' + QuotedStr( edPesquisa.Text )
  else if rbMotivo.Checked then
    cdsCadastro.Filter := 'MOTIVO_AUSENCIA LIKE ' + QuotedStr( edPesquisa.Text + '%');

  cdsCadastro.Filtered := true;
  inherited;

end;

procedure TFCadSelosAusentes.btnNovoClick(Sender: TObject);
begin

  inherited;
  edSelo.SetFocus;
end;

procedure TFCadSelosAusentes.btnAlterarClick(Sender: TObject);
begin
  inherited;
  edSelo.SetFocus;
end;

end.
