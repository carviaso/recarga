unit URelatorio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPai, DB, IBCustomDataSet, IBQuery, ComCtrls, StdCtrls, Buttons,
  ExtCtrls,RLReport;

type
  TFRelatorio = class(TFPai)
    Panel1: TPanel;
    btnConsultar: TBitBtn;
    btnVisualizar: TBitBtn;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    StatusBar: TStatusBar;
    QPesquisa: TIBQuery;
    dsPesquisa: TDataSource;
    procedure btnFecharClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure relatorio(Relatorio : TRLReport; tipo : integer);
  end;

var
  FRelatorio: TFRelatorio;

implementation

uses UrelatorioRevisao;

{$R *.dfm}

procedure TFRelatorio.btnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFRelatorio.btnConsultarClick(Sender: TObject);
begin

  inherited;
  if dsPesquisa.DataSet.Active then
  begin

    if dsPesquisa.DataSet.RecordCount > 0 then
    begin
      StatusBar.Panels[0].Text := 'Registro Encontrados: ' + IntToStr(dsPesquisa.DataSet.RecordCount);
      btnVisualizar.Enabled    := True;
      btnImprimir.Enabled      := True;
    end else begin
      StatusBar.Panels[0].Text := 'Nenhum Registro Encontrado';
      btnVisualizar.Enabled    := False;
      btnImprimir.Enabled      := False;
    end;

  end;
end;

procedure TFRelatorio.relatorio(Relatorio: TRLReport; tipo: integer);
begin
  if tipo = 0 then
    relatorio.Preview
  else
    relatorio.Print
end;

end.
