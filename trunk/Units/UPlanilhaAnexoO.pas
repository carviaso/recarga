unit UPlanilhaAnexoO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPai, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, Mask,
  ToolEdit, DB, IBCustomDataSet, IBQuery, DBCtrls, ComCtrls, OleServer, ExcelXP, ComObj;

type
  TFPlanilhaAnexoO = class(TFPai)
    GroupBox1: TGroupBox;
    Label10: TLabel;
    edPesquisaEntradaIni: TDateEdit;
    edPesquisaEntradaFim: TDateEdit;
    Panel1: TPanel;
    BitImprimir: TBitBtn;
    btnPesquisa: TBitBtn;
    BitFechar: TBitBtn;
    dbgCadastro: TDBGrid;
    QR_Empresa: TIBQuery;
    DS_CabOrdemServico: TDataSource;
    QR_Item: TIBQuery;
    DS_Item: TDataSource;
    DirectoryEdit: TDirectoryEdit;
    Label1: TLabel;
    StatusBar1: TStatusBar;
    Label2: TLabel;
    edSeloIni: TEdit;
    edSeloFim: TEdit;
    procedure BitImprimirClick(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
  private
    {Declarações planilha excel}
    ExApp : TExcelApplication;
    ExWBook : TExcelWorkbook;
    ExWSheet : TExcelWorksheet;
    sArquivo : Pchar;
    {Declarações planilha excel}
    { Private declarations }
    procedure CarregaEmpresaOrdemServico;
    procedure CarregaItemOrdemServico;
    {Declarações planilha excel}
    procedure CriarXLS;
    procedure SalvarXLS(sArq: String);
    procedure FecharXLS;
    procedure ExportarXls(obj: TObject);
    {Declarações planilha excel}
  public
    { Public declarations }
  end;

var
  FPlanilhaAnexoO: TFPlanilhaAnexoO;

implementation

uses UAnexoO, UAnexoOItens;

{$R *.dfm}

procedure TFPlanilhaAnexoO.BitImprimirClick(Sender: TObject);
var
  Objeto : TAnexoO;
  Item : array of TAnexoOItem;
  i:  integer;
begin
  SetLength(Item, QR_Item.RecordCount);
  inherited;

  if trim( DirectoryEdit.Text ) = '' then
  begin
    ShowMessage('Informe o destino do arquivo');
    DirectoryEdit.SetFocus;
    exit;
  end;

  if not DirectoryExists(DirectoryEdit.Text) then
  begin
    ShowMessage('Informe um diretório válido');
    DirectoryEdit.SetFocus;
    exit;
  end;

  i := 0;
  BitImprimir.Enabled := False;
  BitImprimir.Caption := 'Aguarde';
  QR_Item.DisableControls;
  QR_Empresa.First;
  if not QR_Empresa.IsEmpty and not QR_Item.IsEmpty then
  begin
    Objeto := TAnexoO.Create;
    Objeto.DataIni := edPesquisaEntradaIni.Text;
    Objeto.DataFim := edPesquisaEntradaFim.Text;
    Objeto.RazaoSocial := Trim(QR_Empresa.FieldByName('razao_social').AsString);
    Objeto.CNPJ := Trim(QR_Empresa.FieldByName('CNPJ').AsString);
    Objeto.LocalArquivoDestino := DirectoryEdit.Text;
    QR_Item.First;
    Objeto.SeqInicial := QR_Item.FieldByName('SELO_MIN').AsString;
    while not QR_Item.Eof do
    begin
      Item[i] := TAnexoOItem.Create;
      Item[i].DataOS     := QR_Item.FieldByName('Entrada').AsString;
      Item[i].OS         := QR_Item.FieldByName('RGS').AsString;
      Item[i].NotaFiscal := QR_Item.FieldByName('Nota_Fiscal').AsString;
      Item[i].QtdBC      := QR_Item.FieldByName('bc').AsInteger;
      Item[i].QtdABC     := QR_Item.FieldByName('abc').AsInteger;
      Item[i].QtdCO2     := QR_Item.FieldByName('co2').AsInteger;
      Item[i].QtdAP      := QR_Item.FieldByName('ap').AsInteger;
      Item[i].QtdEM      := QR_Item.FieldByName('em').AsInteger;
      Item[i].QtdTt      := Item[i].QtdBC  +
                            Item[i].QtdABC +
                            Item[i].QtdCO2 +
                            Item[i].QtdAP  +
                            Item[i].QtdEM;

      Item[i].SeqSeloIni := QR_Item.FieldByName('SELO_MIN').AsString;
      Item[i].SeqSeloFim := QR_Item.FieldByName('SELO_MAX').AsString;
      if QR_Item.FieldByName('TOTAL').AsString = '0' then
        Item[i].TotalSelos := '1'
      else
        Item[i].TotalSelos := QR_Item.FieldByName('TOTAL').AsString;
      Objeto.Item.Add(Item[i]);
      i := i + 1;
      QR_Item.Next;
    end;
    Objeto.SeqFinal := QR_Item.FieldByName('SELO_MAX').AsString;
  end;
  ExportarXls(Objeto);
  QR_Item.EnableControls;
  BitImprimir.Enabled := True;
  BitImprimir.Caption := '&Inmetro';
end;

procedure TFPlanilhaAnexoO.CarregaEmpresaOrdemServico;
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

procedure TFPlanilhaAnexoO.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  if ( Trim( edSeloIni.Text )    = '' ) and
     ( Trim( edSeloFim.Text )    = '' ) and
     ( edPesquisaEntradaIni.Date = 0  ) and
     ( edPesquisaEntradaFim.Date = 0  ) then
  begin
    ShowMessage('Informe o período ou o intervalo de selo!');
    {
    if edPesquisaEntradaIni.Date = 0 then
    begin
      ShowMessage('A data inicial deve ser informada!');
      edPesquisaEntradaIni.SetFocus;
      Exit;
    end;

    if edPesquisaEntradaFim.Date = 0 then
    begin
      ShowMessage('A data final deve ser informada!');
      edPesquisaEntradaFim.SetFocus;
      Exit;
    end;
    }
    Exit;
  end;

  if edPesquisaEntradaFim.Date < edPesquisaEntradaIni.Date then
  begin
    MessageDlg('Data inicial da pesquisa é maior do que a final',mtinformation,[mbok],0);
    if edPesquisaEntradaIni.CanFocus then
      edPesquisaEntradaIni.SetFocus;
    exit;
  end;

  if Trim( DirectoryEdit.Text ) = '' then
  begin
    ShowMessage('O diretório deve ser informado!');
    DirectoryEdit.SetFocus;
    Exit;
  end
  else if not DirectoryExists( DirectoryEdit.Text ) then
  begin
    ShowMessage('O diretório não existe!');
    DirectoryEdit.SetFocus;
    Exit;
  end;

  CarregaEmpresaOrdemServico;
  CarregaItemOrdemServico;
  if not QR_Item.IsEmpty then
    BitImprimir.Enabled := True
  else
    BitImprimir.Enabled := False;
end;

procedure TFPlanilhaAnexoO.CarregaItemOrdemServico;
begin
  QR_Item.Close;
  QR_Item.SQL.Clear;
  QR_Item.SQL.Add('SELECT RECARGA.RGS,                           ' );
  QR_Item.SQL.Add('       RECARGA.NOTA_FISCAL,                   ' );
  QR_Item.SQL.Add('       CAST(RECARGA.ENTRADA AS DATE) ENTRADA, ' );
  QR_Item.SQL.Add('       (select count(ir.codigo) from itens_recarga ir, tipo tp where ir.tipo=tp.codigo and ir.rgs = recarga.rgs and tp.tipo_inmetro = ''BC'') as BC,  ');
  QR_Item.SQL.Add('       (select count(ir.codigo) from itens_recarga ir, tipo tp where ir.tipo=tp.codigo and ir.rgs = recarga.rgs and tp.tipo_inmetro = ''ABC'') as ABC,');
  QR_Item.SQL.Add('       (select count(ir.codigo) from itens_recarga ir, tipo tp where ir.tipo=tp.codigo and ir.rgs = recarga.rgs and tp.tipo_inmetro = ''CO2'') as CO2,');
  QR_Item.SQL.Add('       (select count(ir.codigo) from itens_recarga ir, tipo tp where ir.tipo=tp.codigo and ir.rgs = recarga.rgs and tp.tipo_inmetro = ''AP'') as AP,  ');
  QR_Item.SQL.Add('       (select count(ir.codigo) from itens_recarga ir, tipo tp where ir.tipo=tp.codigo and ir.rgs = recarga.rgs and tp.tipo_inmetro = ''EM'') as EM,  ');
  QR_Item.SQL.Add('       MIN(ITENS_RECARGA.SELO) SELO_MIN, ' );
  QR_Item.SQL.Add('       MAX(ITENS_RECARGA.SELO) SELO_MAX, ' );
  QR_Item.SQL.Add('       (CAST(MAX(ITENS_RECARGA.SELO) AS INTEGER) - CAST(MIN(ITENS_RECARGA.SELO) AS INTEGER)) TOTAL ' );
  QR_Item.SQL.Add('  FROM RECARGA, ITENS_RECARGA ' );
  QR_Item.SQL.Add(' WHERE RECARGA.RGS = ITENS_RECARGA.RGS ' );

  if (edPesquisaEntradaIni.Date <> 0) and
     (edPesquisaEntradaFim.Date <> 0) then
  begin
    QR_Item.SQL.Add('   AND RECARGA.ENTRADA >= ''' + FormatDateTime('mm/dd/yyyy 0:00:00',edPesquisaEntradaIni.Date) + '''' );
    QR_Item.SQL.Add('   AND RECARGA.ENTRADA <= ''' + FormatDateTime('mm/dd/yyyy 0:00:00',edPesquisaEntradaFim.Date) + '''' );
  end;

  if ( Trim(edSeloIni.Text) <> '' ) and
     ( Trim(edSeloFim.Text) <> '' ) then
  begin
    QR_Item.SQL.Add('     AND ITENS_RECARGA.SELO >= ' + QuotedStr( edSeloIni.Text ));
    QR_Item.SQL.Add('     AND ITENS_RECARGA.SELO <= ' + QuotedStr( edSeloFim.Text ));
  end;

  QR_Item.SQL.Add('   AND ITENS_RECARGA.SELO NOT LIKE ''%G%'' ' );
  QR_Item.SQL.Add('   AND ITENS_RECARGA.SELO NOT LIKE ''%A%'' ' );
  QR_Item.SQL.Add('   AND ITENS_RECARGA.SELO NOT LIKE ''%C%'' ' );
  QR_Item.SQL.Add('   AND ITENS_RECARGA.SELO NOT LIKE ''%S%'' ' );
  QR_Item.SQL.Add('   AND ITENS_RECARGA.SELO NOT LIKE ''%R%'' ' );
  QR_Item.SQL.Add('   AND ITENS_RECARGA.SELO NOT LIKE ''%I%'' ' );
  QR_Item.SQL.Add('   AND ITENS_RECARGA.SELO NOT LIKE ''%E%'' ' );
  QR_Item.SQL.Add('   AND ITENS_RECARGA.SELO NOT LIKE ''%M%'' ' );
  QR_Item.SQL.Add('   AND ITENS_RECARGA.SELO NOT LIKE ''%T%'' ' );
  QR_Item.SQL.Add('   AND ITENS_RECARGA.SELO <> ''11 MANGUEI'' ' );
  QR_Item.SQL.Add('   AND ITENS_RECARGA.SELO <> ''01 MANG.'' ' );
  QR_Item.SQL.Add('GROUP BY RECARGA.RGS, RECARGA.NOTA_FISCAL, RECARGA.ENTRADA ');
  QR_Item.SQL.Add('ORDER BY 9 ');
  QR_Item.Open;
  QR_Item.Last;
  QR_Item.First;
  StatusBar1.Panels[0].Text := 'Quantidade de Registros: ' + IntToStr( QR_Item.RecordCount );
end;

procedure TFPlanilhaAnexoO.CriarXLS;
begin
  ExApp := TExcelApplication.Create(nil);
  ExWBook := TExcelWorkbook.Create(nil);
  ExWSheet := TExcelWorksheet.Create(nil);
end;

procedure TFPlanilhaAnexoO.ExportarXls(obj: TObject);
var
  LCID : Integer;
  sArq : String;
  i: Integer;
  FileName : string;
const
  ctI = 13;//Quantidade de linhas a ignorar
begin
   //Cria os objetos
  CriarXLS;

  sArquivo := 'C:\modelo_anexoO.xls';
  // sArq := TRelatorioOrdemServico(obj).LocalArquivoDestino +
  //        '\RELATORIO_INMETRO_'+ FormatDateTime('mmddaa-hhmmss', now) +'.xls';

  CopyFile(Pchar(sArquivo), Pchar(sArq), False);

  //Configuração geral do objeto de exportação
  LCID := GetUserDefaultLCID;
  ExApp.DisplayAlerts[LCID] := False;
  ExApp.Workbooks.Open(sArquivo, EmptyParam,EmptyParam,EmptyParam,
                       EmptyParam, EmptyParam,EmptyParam,
                       EmptyParam,EmptyParam,EmptyParam,
                       EmptyParam,EmptyParam,EmptyParam,
                       EmptyParam,EmptyParam,LCID);
  ExWBook.ConnectTo(ExApp.Workbooks[1] as _Workbook);
  ExWSheet.ConnectTo(ExWBook.Worksheets[1] as _Worksheet);
  ExWSheet.Activate(LCID);
  ExApp.ScreenUpdating[LCID] := true;

  if (obj is TAnexoO) then
  begin

    ExWSheet.Range['C3', 'C3'].Value2   := TAnexoO(obj).RazaoSocial;
    ExWSheet.Range['A2', 'A2'].Value2   := 'Período: de ' + TAnexoO(obj).DataIni +
                                           ' a ' + TAnexoO(obj).DataFim;
    ExWSheet.Range['C4', 'C4'].Value2   := TAnexoO(obj).CNPJ;
    ExWSheet.Range['J10', 'J10'].Value2 := TAnexoO(obj).SeqInicial;
    ExWSheet.Range['K10', 'K10'].Value2 := TAnexoO(obj).SeqFinal;
    ExWSheet.Range['D7', 'D7'].Value2   := TAnexoO(obj).SeqSelosEstoqIni;
    ExWSheet.Range['J7', 'J7'].Value2   := TAnexoO(obj).SeqSelosEstoqFim;

    for i := 0 to TAnexoO(obj).Item.Count - 1 do
    begin
      ExWSheet.Range['A' + IntToStr(i + ctI), 'A' + IntToStr(i + ctI)].Value2 := TAnexoOItem(TAnexoO(obj).Item[i]).DataOS;
      ExWSheet.Range['B' + IntToStr(i + ctI), 'B' + IntToStr(i + ctI)].Value2 := TAnexoOItem(TAnexoO(obj).Item[i]).OS;
      ExWSheet.Range['C' + IntToStr(i + ctI), 'C' + IntToStr(i + ctI)].Value2 := TAnexoOItem(TAnexoO(obj).Item[i]).NotaFiscal;

      ExWSheet.Range['D' + IntToStr(i + ctI), 'D' + IntToStr(i + ctI)].Value2 := TAnexoOItem(TAnexoO(obj).Item[i]).Qtdbc;
      ExWSheet.Range['F' + IntToStr(i + ctI), 'E' + IntToStr(i + ctI)].Value2 := TAnexoOItem(TAnexoO(obj).Item[i]).Qtdabc;
      ExWSheet.Range['F' + IntToStr(i + ctI), 'F' + IntToStr(i + ctI)].Value2 := TAnexoOItem(TAnexoO(obj).Item[i]).Qtdco2;
      ExWSheet.Range['G' + IntToStr(i + ctI), 'G' + IntToStr(i + ctI)].Value2 := TAnexoOItem(TAnexoO(obj).Item[i]).Qtdap;
      ExWSheet.Range['H' + IntToStr(i + ctI), 'H' + IntToStr(i + ctI)].Value2 := TAnexoOItem(TAnexoO(obj).Item[i]).Qtdem;
      ExWSheet.Range['I' + IntToStr(i + ctI), 'I' + IntToStr(i + ctI)].Value2 := TAnexoOItem(TAnexoO(obj).Item[i]).QtdTt;
      ExWSheet.Range['J' + IntToStr(i + ctI), 'J' + IntToStr(i + ctI)].Value2 := TAnexoOItem(TAnexoO(obj).Item[i]).SeqSeloIni;
      ExWSheet.Range['K' + IntToStr(i + ctI), 'K' + IntToStr(i + ctI)].Value2 := TAnexoOItem(TAnexoO(obj).Item[i]).SeqSeloFim;
      ExWSheet.Range['L' + IntToStr(i + ctI), 'L' + IntToStr(i + ctI)].Value2 := TAnexoOItem(TAnexoO(obj).Item[i]).TotalSelos;
    end;
  end;

  //Retirando a barra do final do diretório para evitar erros na geração do arquivo
  if copy(TAnexoO(obj).LocalArquivoDestino, length( TAnexoO(obj).LocalArquivoDestino ), 1) = '\' then
    TAnexoO(obj).LocalArquivoDestino := copy(TAnexoO(obj).LocalArquivoDestino,
                                             1,
                                             length( TAnexoO(obj).LocalArquivoDestino )-1);

  FileName :=  TAnexoO(obj).LocalArquivoDestino +'\ANEXO_O'+ FormatDateTime('mmddyy-hhmmss', now) +'.xls';
  SalvarXLS( FileName );
  ShowMessage( 'Arquivo gerado com sucesso: '#10#13 + FileName );

  //Fecha o xls e destroe os objetos
  FecharXLS;
end;

procedure TFPlanilhaAnexoO.FecharXLS;
begin
  ExWBook.Close;

  ExWSheet.Free;
  ExWBook.Free;
  ExApp.Free;
end;

procedure TFPlanilhaAnexoO.SalvarXLS(sArq: String);
begin
  if FileExists(sArq) then
  begin
    DeleteFile(PChar(sArq));
  end;

  //Salva Arquivo
  ExWSheet.SaveAs(sArq);

end;

end.
