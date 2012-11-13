unit UPlanilhaAnexoI;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPai, Grids, DBGrids, ToolEdit, StdCtrls, Buttons, ExtCtrls,
  Mask, DB, IBCustomDataSet, IBQuery, ComCtrls, OleServer, ExcelXP, ComObj;

type
  TFPlanilhaAnexoI = class(TFPai)
    QR_Empresa: TIBQuery;
    DS_CabOrdemServico: TDataSource;
    QR_Item: TIBQuery;
    DS_Item: TDataSource;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    Label1: TLabel;
    edPesquisaEntradaIni: TDateEdit;
    edPesquisaEntradaFim: TDateEdit;
    Panel1: TPanel;
    BitImprimir: TBitBtn;
    btnPesquisa: TBitBtn;
    BitFechar: TBitBtn;
    DirectoryEdit: TDirectoryEdit;
    dbgCadastro: TDBGrid;
    StatusBar1: TStatusBar;
    Label2: TLabel;
    edSeloIni: TEdit;
    edSeloFim: TEdit;
    procedure btnPesquisaClick(Sender: TObject);
    procedure BitImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Declarações planilha excel}
    ExApp : TExcelApplication;
    ExWBook : TExcelWorkbook;
    ExWSheet : TExcelWorksheet;
    sArquivo : Pchar;
    {Declarações planilha excel}

    { Private declarations }
    procedure CarregaEmpresaOrdemServico;
    procedure RealizarConsulta;

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
  FPlanilhaAnexoI: TFPlanilhaAnexoI;

implementation

uses UAnexoI, UAnexoIItens;

{$R *.dfm}

{ TFPai1 }

procedure TFPlanilhaAnexoI.CarregaEmpresaOrdemServico;
begin
end;


procedure TFPlanilhaAnexoI.RealizarConsulta;
begin

  QR_Item.Close;
  QR_Item.SQL.Clear;
  QR_Item.SQL.Add('  select tipo.tipo_inmetro                 ');
  QR_Item.SQL.Add('        ,itens_recarga.capacidade          ');
  QR_Item.SQL.Add('        ,itens_recarga.nivel_manutencao    ');
  QR_Item.SQL.Add('        ,count(itens_recarga.codigo) as qtd');
  QR_Item.SQL.Add('    from recarga                           ');
  QR_Item.SQL.Add('        ,itens_recarga                     ');
  QR_Item.SQL.Add('        ,tipo                              ');
  QR_Item.SQL.Add('   where recarga.rgs = itens_recarga.rgs   ');
  QR_Item.SQL.Add('     and itens_recarga.tipo = tipo.codigo  ');

  if (edPesquisaEntradaIni.Date > 0) and
     (edPesquisaEntradaFim.Date > 0) then
  begin
    QR_Item.SQL.Add('     and recarga.entrada >= :pDataIni      ');
    QR_Item.SQL.Add('     and recarga.entrada <= :pDataFim      ');
  end;

  if ( Trim(edSeloIni.Text) <> '' ) and
     ( Trim(edSeloFim.Text) <> '' ) then
  begin
    QR_Item.SQL.Add('     and itens_recarga.selo >= :pSeloIni      ');
    QR_Item.SQL.Add('     and itens_recarga.selo <= :pSeloFim      ');
  end;

  QR_Item.SQL.Add('     and tipo.tipo_inmetro is not null     ');
  QR_Item.SQL.Add('group by tipo.tipo_inmetro                 ');
  QR_Item.SQL.Add('        ,itens_recarga.capacidade          ');
  QR_Item.SQL.Add('        ,itens_recarga.nivel_manutencao    ');

  if (edPesquisaEntradaIni.Date > 0) and
     (edPesquisaEntradaFim.Date > 0) then
  begin
    QR_Item.ParamByName('pDataIni').AsDateTime := edPesquisaEntradaIni.Date;
    QR_Item.ParamByName('pDataFim').AsDateTime := edPesquisaEntradaFim.Date;
  end;

  if ( Trim(edSeloIni.Text) <> '' ) and
     ( Trim(edSeloFim.Text) <> '' ) then
  begin
    QR_Item.ParamByName('pSeloIni').AsString := EdSeloIni.Text;
    QR_Item.ParamByName('pSeloFim').AsString := EdSeloFim.Text;
  end;

  QR_Item.Open;
  QR_Item.Last;
  QR_Item.First;
  BitImprimir.Enabled := not QR_Item.IsEmpty;
  StatusBar1.Panels[0].Text := 'Quantidade de Registros: ' + IntToStr( QR_Item.RecordCount );

end;

procedure TFPlanilhaAnexoI.btnPesquisaClick(Sender: TObject);
begin

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

  if edPesquisaEntradaFim.Date < edPesquisaEntradaIni.Date then
  begin
    MessageDlg('Data inicial da pesquisa é maior do que a final',mtinformation,[mbok],0);
    if edPesquisaEntradaIni.CanFocus then
      edPesquisaEntradaIni.SetFocus;
    exit;
  end;

  inherited;
  RealizarConsulta;
end;

procedure TFPlanilhaAnexoI.BitImprimirClick(Sender: TObject);
var
  objeto : TAnexoI;
  i : integer;
  Item : array of TAnexoIItem;
begin
  SetLength(Item, QR_Item.RecordCount);

  objeto := TAnexoI.Create;
  objeto.RazaoSocial := QR_Empresa.FieldByName('razao_social').AsString;
  objeto.CNPJ := QR_Empresa.FieldByName('cnpj').AsString;
  objeto.DataIni := edPesquisaEntradaIni.Text;
  objeto.DataFim := edPesquisaEntradaFim.Text;
  objeto.LocalArquivoDestino := DirectoryEdit.Text;
  i := 0;
  while not QR_Item.Eof do
  begin
    if (Item[i] = Nil)  then
    begin
      Item[i] := TAnexoIItem.Create;
      Item[i].nivelIII := '0';
      Item[i].nivelII  := '0';

      Item[i].tipo       := QR_Item.FieldByName('tipo_inmetro').AsString;
      Item[i].capacidade := QR_Item.FieldByName('capacidade').AsString;
    end;

    if QR_item.FieldByName('nivel_manutencao').AsInteger > 2 then
      Item[i].nivelIII := QR_Item.FieldByName('qtd').AsString
    else
      Item[i].nivelII  := QR_Item.FieldByName('qtd').AsString;

    QR_Item.Next;
    if (Item[i].tipo <> QR_Item.FieldByName('tipo_inmetro').AsString) or
       (Item[i].capacidade <> QR_Item.FieldByName('capacidade').AsString) then
    begin
      Item[i].quantidade := FloatToStr( strToInt( Item[i].nivelIII ) + strToInt( Item[i].nivelII ) );
      objeto.Item.Add(Item[i]);
      inc( i );
    end;
  end;

  ExportarXls( objeto );

  inherited;

end;

procedure TFPlanilhaAnexoI.CriarXLS;
begin
  ExApp := TExcelApplication.Create(nil);
  ExWBook := TExcelWorkbook.Create(nil);
  ExWSheet := TExcelWorksheet.Create(nil);

end;

procedure TFPlanilhaAnexoI.FecharXLS;
begin
  ExWBook.Close;

  ExWSheet.Free;
  ExWBook.Free;
  ExApp.Free;

end;

procedure TFPlanilhaAnexoI.SalvarXLS(sArq: String);
begin
  if FileExists(sArq) then
  begin
    DeleteFile(PChar(sArq));
  end;

  //Salva Arquivo
  ExWSheet.SaveAs(sArq);

end;

procedure TFPlanilhaAnexoI.ExportarXls(obj: TObject);
var
  LCID : Integer;
  sArq : String;
  i: Integer;
  countCO2 : Integer;
  countBCa : Integer;
  countBCb : Integer;
  countAP  : Integer;
  countEM  : Integer;
  FileName : String;
const
  ctI = 13;//Quantidade de linhas a ignorar
begin
  countBCa := 26;
  countBCb := 44;
  countCO2 := 59;
  countAP  := 86;
  countEM  := 95;

   //Cria os objetos
  CriarXLS;

  sArquivo := 'C:\modelo_anexoI.xlsx';
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

  if (obj is TAnexoI) then
  begin

    ExWSheet.Range['B6', 'B6'].Value2   := 'Razão Social: ' + TAnexoI(obj).RazaoSocial;
    ExWSheet.Range['B7', 'B7'].Value2   := 'CNPJ:' + TAnexoI(obj).CNPJ;
    ExWSheet.Range['C8', 'C8'].Value2   := TAnexoI(obj).DataIni;
    ExWSheet.Range['F8', 'F8'].Value2   := TAnexoI(obj).DataFim;

    for i := 0 to TAnexoI(obj).Item.Count - 1 do
    begin

      if (TAnexoIItem(TAnexoI(obj).Item[i]).tipo = 'BC') and
         ( strToInt( TAnexoIItem(TAnexoI(obj).Item[i]).capacidade ) <= 4) then
      begin
        ExWSheet.Range['B' + IntToStr( countBCb ), 'B' + IntToStr( countBCb )].Value2 := TAnexoIItem(TAnexoI(obj).Item[i]).capacidade;
        ExWSheet.Range['F' + IntToStr( countBCb ), 'F' + IntToStr( countBCb )].Value2 := TAnexoIItem(TAnexoI(obj).Item[i]).NivelII;
        ExWSheet.Range['G' + IntToStr( countBCb ), 'G' + IntToStr( countBCb )].Value2 := TAnexoIItem(TAnexoI(obj).Item[i]).NivelIII;
        ExWSheet.Range['H' + IntToStr( countBCb ), 'H' + IntToStr( countBCb )].Value2 := TAnexoIItem(TAnexoI(obj).Item[i]).quantidade;
        inc( countBCb );
      end;

      if (TAnexoIItem(TAnexoI(obj).Item[i]).tipo = 'BC') and
         ( strToInt( TAnexoIItem(TAnexoI(obj).Item[i]).capacidade ) > 4) then
      begin
        ExWSheet.Range['B' + IntToStr( countBCa ), 'B' + IntToStr( countBCa )].Value2 := TAnexoIItem(TAnexoI(obj).Item[i]).capacidade;
        ExWSheet.Range['F' + IntToStr( countBCa ), 'F' + IntToStr( countBCa )].Value2 := TAnexoIItem(TAnexoI(obj).Item[i]).NivelII;
        ExWSheet.Range['G' + IntToStr( countBCa ), 'G' + IntToStr( countBCa )].Value2 := TAnexoIItem(TAnexoI(obj).Item[i]).NivelIII;
        ExWSheet.Range['H' + IntToStr( countBCa ), 'H' + IntToStr( countBCa )].Value2 := TAnexoIItem(TAnexoI(obj).Item[i]).quantidade;
        inc( countBCa );
      end;

      if TAnexoIItem(TAnexoI(obj).Item[i]).tipo = 'CO2' then
      begin
        ExWSheet.Range['B' + IntToStr( countCO2 ), 'B' + IntToStr( countCO2 )].Value2 := TAnexoIItem(TAnexoI(obj).Item[i]).capacidade;
        ExWSheet.Range['F' + IntToStr( countCO2 ), 'F' + IntToStr( countCO2 )].Value2 := TAnexoIItem(TAnexoI(obj).Item[i]).NivelII;
        ExWSheet.Range['G' + IntToStr( countCO2 ), 'G' + IntToStr( countCO2 )].Value2 := TAnexoIItem(TAnexoI(obj).Item[i]).NivelIII;
        ExWSheet.Range['H' + IntToStr( countCO2 ), 'H' + IntToStr( countCO2 )].Value2 := TAnexoIItem(TAnexoI(obj).Item[i]).quantidade;
        inc( countCO2 );
      end;

      if TAnexoIItem(TAnexoI(obj).Item[i]).tipo = 'AP' then
      begin
        ExWSheet.Range['B' + IntToStr( countAP ), 'B' + IntToStr( countAP )].Value2 := TAnexoIItem(TAnexoI(obj).Item[i]).capacidade;
        ExWSheet.Range['F' + IntToStr( countAP ), 'F' + IntToStr( countAP )].Value2 := TAnexoIItem(TAnexoI(obj).Item[i]).NivelII;
        ExWSheet.Range['G' + IntToStr( countAP ), 'G' + IntToStr( countAP )].Value2 := TAnexoIItem(TAnexoI(obj).Item[i]).NivelIII;
        ExWSheet.Range['H' + IntToStr( countAP ), 'H' + IntToStr( countAP )].Value2 := TAnexoIItem(TAnexoI(obj).Item[i]).quantidade;
        inc( countAP );
      end;

      if TAnexoIItem(TAnexoI(obj).Item[i]).tipo = 'EM' then
      begin
        ExWSheet.Range['B' + IntToStr( countEM ), 'B' + IntToStr( countEM )].Value2 := TAnexoIItem(TAnexoI(obj).Item[i]).capacidade;
        ExWSheet.Range['F' + IntToStr( countEM ), 'F' + IntToStr( countEM )].Value2 := TAnexoIItem(TAnexoI(obj).Item[i]).NivelII;
        ExWSheet.Range['G' + IntToStr( countEM ), 'G' + IntToStr( countEM )].Value2 := TAnexoIItem(TAnexoI(obj).Item[i]).NivelIII;
        ExWSheet.Range['H' + IntToStr( countEM ), 'H' + IntToStr( countEM )].Value2 := TAnexoIItem(TAnexoI(obj).Item[i]).quantidade;
        inc( countEM );
      end;
    end;
  end;

  //Retirando a barra do final do diretório para evitar erros na geração do arquivo
  if copy(TAnexoI(obj).LocalArquivoDestino, length( TAnexoI(obj).LocalArquivoDestino ), 1) = '\' then
    TAnexoI(obj).LocalArquivoDestino := copy(TAnexoI(obj).LocalArquivoDestino,
                                             1,
                                             length( TAnexoI(obj).LocalArquivoDestino )-1);

  FileName :=  TAnexoI(obj).LocalArquivoDestino +'\ANEXO_I'+ FormatDateTime('mmddyy-hhmmss', now) +'.xls';
  SalvarXLS( FileName );

  ShowMessage( 'Arquivo gerado com sucesso: '#10#13 + FileName );

  //Fecha o xls e destroe os objetos
  FecharXLS;
end;

procedure TFPlanilhaAnexoI.FormShow(Sender: TObject);
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

end.
