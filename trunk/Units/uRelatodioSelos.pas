unit uRelatodioSelos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPai, DB, IBCustomDataSet, IBQuery, StdCtrls, Buttons, ExtCtrls,
  Mask, ToolEdit;

type
  TFRelatodioSelos = class(TFPai)
    GroupBox1: TGroupBox;
    Label10: TLabel;
    edPesquisaEntradaIni: TDateEdit;
    edPesquisaEntradaFim: TDateEdit;
    Panel1: TPanel;
    BitImprimir: TBitBtn;
    btnPesquisa: TBitBtn;
    BitFechar: TBitBtn;
    QR_Empresa: TIBQuery;
    DS_CabOrdemServico: TDataSource;
    QR_REL: TIBQuery;
    DS_REL: TDataSource;
    procedure btnPesquisaClick(Sender: TObject);
    procedure BitImprimirClick(Sender: TObject);
  private
    { Private declarations }
    procedure CarregaEmpresaOrdemServico;

  public
    { Public declarations }
  end;

var
  FRelatodioSelos: TFRelatodioSelos;

implementation

uses uRelatodioSelosReport;

{$R *.dfm}

{ TFPai2 }

procedure TFRelatodioSelos.CarregaEmpresaOrdemServico;
var
  sSql : String;
begin
  sSql := 'SELECT EMPRESA.razao_social, ' +
          '       EMPRESA.cnpj '+
          '  FROM EMPRESA ';
  try
    QR_Empresa.Close;
    QR_Empresa.SQL.Clear;
    QR_Empresa.SQL.Text := sSql;
    QR_Empresa.Open;
  except
    if btnPesquisa.CanFocus then
      btnPesquisa.SetFocus;
  end;
end;

procedure TFRelatodioSelos.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  QR_REL.sql.clear;
  QR_REL.SQl.Add('  SELECT RECARGA.RGS,');
  QR_REL.SQl.Add('         RECARGA.ENTRADA,');
  QR_REL.SQl.Add('         CLIENTE.RAZAO_SOCIAL,');
  QR_REL.SQl.Add('         TIPO.TIPO,');
  QR_REL.SQl.Add('         TIPO.TIPO_INMETRO,');
  QR_REL.SQl.Add('         ITENS_RECARGA.CAPACIDADE,');
  QR_REL.SQl.Add('         ITENS_RECARGA.SELO');
  QR_REL.SQl.Add('    FROM RECARGA');
  QR_REL.SQl.Add('         INNER JOIN CLIENTE ON (RECARGA.CLIENTE = CLIENTE.CODIGO)');
  QR_REL.SQl.Add('         INNER JOIN ITENS_RECARGA ON (RECARGA.RGS = ITENS_RECARGA.RGS)');
  QR_REL.SQl.Add('         INNER JOIN TIPO ON (ITENS_RECARGA.TIPO = TIPO.CODIGO)');
  QR_REL.SQl.Add('   WHERE RECARGA.ENTRADA BETWEEN '+QuotedStr( FormatDateTime('yyyy/mm/dd', edPesquisaEntradaIni.Date) ) );
  QR_REL.SQl.Add('     AND '+QuotedStr( FormatDateTime('yyyy/mm/dd', edPesquisaEntradaFim.Date) ) );
  QR_REL.SQl.Add('     AND TIPO.TIPO_INMETRO IS NOT NULL');
  QR_REL.SQl.Add('ORDER BY ITENS_RECARGA.SELO');
  QR_REL.Open;
  BitImprimir.Enabled := not QR_REL.IsEmpty;
end;

procedure TFRelatodioSelos.BitImprimirClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFRelatodioSelosReport, FRelatodioSelosReport);
  FRelatodioSelosReport.RLReport1.Preview;
  FRelatodioSelosReport.Free;
end;

end.
