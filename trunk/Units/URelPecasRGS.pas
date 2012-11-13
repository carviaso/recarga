unit URelPecasRGS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPai, StdCtrls, ExtCtrls, Buttons, DBCtrls, Mask, ToolEdit, DB,
  IBCustomDataSet, IBQuery, DBClient, RLReport, Grids, DBGrids, RLParser;

type
  TFRelPecasRGS = class(TFPai)
    Panel1: TPanel;
    edRGSIni: TEdit;
    edRGSFim: TEdit;
    Label1: TLabel;
    Label10: TLabel;
    edPesquisaEntradaIni: TDateEdit;
    Label15: TLabel;
    edPesquisaEntradaFim: TDateEdit;
    Label14: TLabel;
    dblPesquisaCliente: TDBLookupComboBox;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    btnPesquisa: TBitBtn;
    btnRelatorio: TBitBtn;
    dsCliente: TDataSource;
    QPesquisa: TIBQuery;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    cdsTemp: TClientDataSet;
    Qaux: TIBQuery;
    dsRelatorio: TDataSource;
    RLBand2: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    l01: TRLLabel;
    L02: TRLLabel;
    L03: TRLLabel;
    L04: TRLLabel;
    L05: TRLLabel;
    L06: TRLLabel;
    L07: TRLLabel;
    L08: TRLLabel;
    L09: TRLLabel;
    L10: TRLLabel;
    L11: TRLLabel;
    L12: TRLLabel;
    L13: TRLLabel;
    L14: TRLLabel;
    L15: TRLLabel;
    L16: TRLLabel;
    L17: TRLLabel;
    L18: TRLLabel;
    L19: TRLLabel;
    L20: TRLLabel;
    L21: TRLLabel;
    L22: TRLLabel;
    L23: TRLLabel;
    L24: TRLLabel;
    L25: TRLLabel;
    L26: TRLLabel;
    L27: TRLLabel;
    L28: TRLLabel;
    L29: TRLLabel;
    L30: TRLLabel;
    D01: TRLDBText;
    D02: TRLDBText;
    D03: TRLDBText;
    D04: TRLDBText;
    D05: TRLDBText;
    D06: TRLDBText;
    D07: TRLDBText;
    D08: TRLDBText;
    D09: TRLDBText;
    D10: TRLDBText;
    D11: TRLDBText;
    D12: TRLDBText;
    D13: TRLDBText;
    D14: TRLDBText;
    D15: TRLDBText;
    D16: TRLDBText;
    D17: TRLDBText;
    D18: TRLDBText;
    D19: TRLDBText;
    D20: TRLDBText;
    D21: TRLDBText;
    D22: TRLDBText;
    D23: TRLDBText;
    D24: TRLDBText;
    D25: TRLDBText;
    D26: TRLDBText;
    D27: TRLDBText;
    D28: TRLDBText;
    D29: TRLDBText;
    D30: TRLDBText;
    RLBand4: TRLBand;
    R01: TRLDBResult;
    R02: TRLDBResult;
    R03: TRLDBResult;
    R04: TRLDBResult;
    R05: TRLDBResult;
    R06: TRLDBResult;
    R07: TRLDBResult;
    R08: TRLDBResult;
    R09: TRLDBResult;
    R10: TRLDBResult;
    R11: TRLDBResult;
    R12: TRLDBResult;
    R13: TRLDBResult;
    R14: TRLDBResult;
    R15: TRLDBResult;
    R16: TRLDBResult;
    R17: TRLDBResult;
    R18: TRLDBResult;
    R19: TRLDBResult;
    R20: TRLDBResult;
    R21: TRLDBResult;
    R22: TRLDBResult;
    R23: TRLDBResult;
    R24: TRLDBResult;
    R25: TRLDBResult;
    R26: TRLDBResult;
    R27: TRLDBResult;
    R28: TRLDBResult;
    R29: TRLDBResult;
    R30: TRLDBResult;
    RLExpressionParser1: TRLExpressionParser;
    RLLabel3: TRLLabel;
    RLMemo1: TRLMemo;
    RLLabel4: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    rlEmpresa: TRLLabel;
    rlEndereco: TRLLabel;
    rlComplemento: TRLLabel;
    Label2: TLabel;
    qtdRgs: TLabel;
    procedure edRGSIniKeyPress(Sender: TObject; var Key: Char);
    procedure btnPesquisaClick(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure R01BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure R02BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure R03BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure R04BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure R05BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure R06BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure R07BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure R08BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure R09BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure R10BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure R11BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure R12BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure R13BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure R14BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure R15BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure R16BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure R17BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure R18BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure R19BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure R20BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure R21BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure R22BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure R23BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure R24BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure R25BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure R26BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure R27BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure R28BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure R29BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure R30BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLBand4AfterPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelPecasRGS: TFRelPecasRGS;
  i, c : Integer;
  t1, t2, t3, t4, t5, t6, t7, t8, t9, t10          : integer;
  t11, t12, t13, t14, t15, t16, t17, t18, t19, t20 : integer;
  t21, t22, t23, t24, t25, t26, t27, t28, t29, t30 : integer;
implementation

uses UdmPesquisa, UFsuper, UdmGeral;

{$R *.dfm}

procedure TFRelPecasRGS.edRGSIniKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not(key in['0'..'9','-',#8]) then
    key := #0;
end;

procedure TFRelPecasRGS.btnPesquisaClick(Sender: TObject);
const
  ctPesquisa =
    'SELECT'#10+
    '  RECARGA.RGS,'#10+
    '  CLIENTE.CODIGO || ''-'' || CLIENTE.RAZAO_SOCIAL AS CLIENTE'#10+
    'FROM'#10+
    '  RECARGA'#10+
    '  INNER JOIN CLIENTE ON CLIENTE.CODIGO = RECARGA.CLIENTE'#10+
    'WHERE'#10+
    '  (RECARGA.CODIGO <> 0)%s';

  ctPecas =
    'SELECT DISTINCT'#10+
    '  PECAS.CODIGO_PECAS AS CODIGO_PECA,'#10+
    '  PECAS.DESCRICAO'#10+
    'FROM'#10+
    '  PECAS'#10+
    'ORDER BY'#10+
    '  PECAS.CODIGO_PECAS';

  ctConteudo =
    'SELECT'#10+
    '  RECARGA.RGS,'#10+
    '  RECARGA.CLIENTE,'#10+
    '  CLIENTE.RAZAO_SOCIAL,'#10+
    '  RGS_EXTINTOR_PECAS.CODIGO_PECA,'#10+
    '  COUNT(RGS_EXTINTOR_PECAS.CODIGO_PECA) AS QTD'#10+
    'FROM'#10+
    '  RECARGA'#10+
    '  INNER JOIN RGS_EXTINTOR_PECAS ON (RECARGA.CODIGO = RGS_EXTINTOR_PECAS.CODIGO_RGS)'#10+
    '  INNER JOIN CLIENTE ON CLIENTE.CODIGO = RECARGA.CLIENTE'#10+
    'WHERE'#10+
    '  (RECARGA.CODIGO <> 0)%s'#10+
    'GROUP BY'#10+
    '  RECARGA.RGS,'#10+
    '  RECARGA.CLIENTE,'#10+
    '  CLIENTE.RAZAO_SOCIAL,'#10+
    '  RGS_EXTINTOR_PECAS.CODIGO_PECA';

var
  filtro, linha, temp : string;
begin
  inherited;
  (* PESQUISA *)
  if edRGSIni.Text <> '' then
    Filtro := 'AND(RECARGA.RGS BETWEEN ''' + edRGSIni.Text + ''' AND ''' + edRGSFim.Text + ''')';

  if edPesquisaEntradaIni.Date <> 0 then
    Filtro := 'AND(RECARGA.ENTRADA >= ''' + FormatDateTime('mm/dd/yyyy',edPesquisaEntradaIni.Date) + ''')';

  if edPesquisaEntradaFim.Date <> 0 then
    Filtro := 'AND(RECARGA.ENTRADA <= ''' + FormatDateTime('mm/dd/yyyy',edPesquisaEntradaFim.Date) + ''')';

  if dblPesquisaCliente.KeyValue <> null then
    Filtro := 'AND(RECARGA.CLIENTE = ''' + VarToStr(dblPesquisaCliente.KeyValue) + ''')';

  QPesquisa.Close;
  QPesquisa.SQL.Clear;
  QPesquisa.SQL.Add(Format(ctPesquisa,[Filtro]));
  QPesquisa.Open;

  (* CONSULTANDO AS PECAS *)
  Qaux.Close;
  Qaux.SQL.Clear;
  Qaux.SQL.Add(ctPecas);
  Qaux.Open;

  (* MONTANDO A TABELA TEMPORÁRIA *)
  if cdsTemp.Active then
  begin
    cdsTemp.EmptyDataSet;
    cdsTemp.close;
  end;

  cdsTemp.FieldDefs.Clear;
  with cdsTemp.FieldDefs do
  begin
    Add('RGS', ftString, 7);
    Add('CLIENTES', ftString, 60);

    RLMemo1.Lines.Clear;
    while not(Qaux.Eof) do
    begin
      Add(Qaux.FieldByName('CODIGO_PECA').AsString, ftString, 2);

      temp := Qaux.FieldByName('CODIGO_PECA').AsString + ' - ' +
              Qaux.FieldByName('DESCRICAO').AsString   +
              '                                              ';
      linha := linha + Copy(temp, 1, 30);

      if Qaux.RecNo mod 5 = 0 then
      begin
        RLMemo1.Lines.Add(linha);
        linha := '';
      end;

      Qaux.Next;
    end;
      RLMemo1.Lines.Add(linha);
  end;

  cdsTemp.CreateDataSet;
  cdsTemp.IndexFieldNames := 'RGS';
  cdsTemp.Open;

  (* PREENCHENDO A TABELA TEMPORÁRIA *)
  Qaux.Close;
  Qaux.SQL.Clear;
  Qaux.SQL.Add(Format(ctConteudo, [Filtro]));
  Qaux.Open;

  while not(Qaux.Eof)do
  begin
    if cdsTemp.Locate('RGS',Qaux.FieldByName('RGS').AsVariant,[]) then
      cdsTemp.Edit
    else begin
      cdsTemp.Insert;
      cdsTemp.FieldByName('RGS').AsString := Qaux.FieldByName('RGS').AsString;
      cdsTemp.FieldByName('CLIENTES').AsString := Qaux.FieldByName('CLIENTE').AsString + ' - ' + Qaux.FieldByName('RAZAO_SOCIAL').AsString;
    end;

    cdsTemp.FieldByName(Qaux.FieldByName('CODIGO_PECA').AsString).AsInteger := Qaux.FieldByName('QTD').AsInteger;
    cdsTemp.Post;
    Qaux.Next;
  end;

  qtdRgs.Caption := IntToStr(cdsTemp.RecordCount);

end;

procedure TFRelPecasRGS.btnRelatorioClick(Sender: TObject);
begin

  for c := 2 to cdsTemp.FieldCount do
  begin
    i := (c-1);
    if i < strToInt(cdsTemp.Fields[cdsTemp.FieldCount -1].FieldName) then
    begin

      if i > 30 then
        Break;

      TRLLabel(FindComponent('L'    + FormatFloat('00',i))).Caption    := cdsTemp.Fields[c].FieldName;
      TRLDBText(FindComponent('D'   + FormatFloat('00',i))).DataSource := dsRelatorio;
      TRLDBText(FindComponent('D'   + FormatFloat('00',i))).DataField  := cdsTemp.Fields[c].FieldName;
      TRLDBResult(FindComponent('R' + FormatFloat('00',i))).Info := riSum;
      TRLDBResult(FindComponent('R' + FormatFloat('00',i))).DataSource := dsRelatorio;
      TRLDBResult(FindComponent('R' + FormatFloat('00',i))).DataFormula:= cdsTemp.Fields[c].FieldName;
    end;
  end;
  inherited;
  rlEmpresa.Caption     := DMPesquisa.cdsEmpresa.FieldByName('FANTASIA').AsString;
  rlEndereco.Caption    := DMPesquisa.cdsEmpresa.FieldByName('ENDERECO').AsString + ' - ' +
                           DMPesquisa.cdsEmpresa.FieldByName('BAIRRO').AsString   + ' - ' +
                           DMPesquisa.cdsEmpresa.FieldByName('CIDADE').AsString   + '-'   +
                           DMPesquisa.cdsEmpresa.FieldByName('UF').AsString;

  rlComplemento.Caption := 'Fone: ' + DMPesquisa.cdsEmpresa.FieldByName('FONE').AsString;
  RLReport1.Preview;
end;

procedure TFRelPecasRGS.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
  if (D01.DataField <> '') and (D01.field.AsString <> '') then
    t1  := t1  + D01.Field.AsInteger;
  if (D02.DataField <> '') and (D02.field.AsString <> '') then
    t2  := t2  + D02.Field.AsInteger;
  if (D03.DataField <> '') and (D03.field.AsString <> '') then
    t3  := t3  + D03.Field.AsInteger;
  if (D04.DataField <> '') and (D04.field.AsString <> '') then
    t4  := t4  + D04.Field.AsInteger;
  if (D05.DataField <> '') and (D05.field.AsString <> '') then
    t5  := t5  + D05.Field.AsInteger;
  if (D06.DataField <> '') and (D06.field.AsString <> '') then
    t6  := t6  + D06.Field.AsInteger;
  if (D07.DataField <> '') and (D07.field.AsString <> '') then
    t7  := t7  + D07.Field.AsInteger;
  if (D08.DataField <> '') and (D08.field.AsString <> '') then
    t8  := t8  + D08.Field.AsInteger;
  if (D09.DataField <> '') and (D09.field.AsString <> '') then
    t9  := t9  + D09.Field.AsInteger;
  if (D10.DataField <> '') and (D10.field.AsString <> '') then
    t10 := t10 + D10.Field.AsInteger;
  if (D11.DataField <> '') and (D11.field.AsString <> '') then
    t11 := t11 + D11.Field.AsInteger;
  if (D12.DataField <> '') and (D12.field.AsString <> '') then
    t12 := t12 + D12.Field.AsInteger;
  if (D13.DataField <> '') and (D13.field.AsString <> '') then
    t13 := t13 + D13.Field.AsInteger;
  if (D14.DataField <> '') and (D14.field.AsString <> '') then
    t14 := t14 + D14.Field.AsInteger;
  if (D15.DataField <> '') and (D15.field.AsString <> '') then
    t15 := t15 + D15.Field.AsInteger;
  if (D16.DataField <> '') and (D16.field.AsString <> '') then
    t16 := t16 + D16.Field.AsInteger;
  if (D17.DataField <> '') and (D17.field.AsString <> '') then
     t17 := t17 + D17.Field.AsInteger;
  if (D18.DataField <> '') and (D18.field.AsString <> '') then
    t18 := t18 + D18.Field.AsInteger;
  if (D19.DataField <> '') and (D19.field.AsString <> '') then
    t19 := t19 + D19.Field.AsInteger;
  if (D20.DataField <> '') and (D20.field.AsString <> '') then
     t20 := t20 + D20.Field.AsInteger;
  if (D21.DataField <> '') and (D21.field.AsString <> '') then
    t21 := t21 + D21.Field.AsInteger;
  if (D22.DataField <> '') and (D22.field.AsString <> '') then
    t22 := t22 + D22.Field.AsInteger;
  if (D23.DataField <> '') and (D23.field.AsString <> '') then
    t23 := t23 + D23.Field.AsInteger;
  if (D24.DataField <> '') and (D24.field.AsString <> '') then
    t24 := t24 + D24.Field.AsInteger;
  if (D25.DataField <> '') and (D25.field.AsString <> '') then
    t25 := t25 + D25.Field.AsInteger;
  if (D26.DataField <> '') and (D26.field.AsString <> '') then
    t26 := t26 + D26.Field.AsInteger;
  if (D27.DataField <> '') and (D27.field.AsString <> '') then
    t27 := t27 + D27.Field.AsInteger;
  if (D28.DataField <> '') and (D28.field.AsString <> '') then
    t28 := t28 + D28.Field.AsInteger;
  if (D29.DataField <> '') and (D29.field.AsString <> '') then
    t29 := t29 + D29.Field.AsInteger;
  if (D30.DataField <> '') and (D30.field.AsString <> '') then
    t30 := t30 + D30.Field.AsInteger;

end;

procedure TFRelPecasRGS.R01BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
  inherited;
  Text := FormatFloat('##0;; ',t1);
end;

procedure TFRelPecasRGS.R02BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
  inherited;
  Text := FormatFloat('##0;; ',t2);

end;

procedure TFRelPecasRGS.R03BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
  inherited;
  Text := FormatFloat('##0;; ',t3);

end;

procedure TFRelPecasRGS.R04BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
  inherited;
  Text := FormatFloat('##0;; ',t4);

end;

procedure TFRelPecasRGS.R05BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
  inherited;
  Text := FormatFloat('##0;; ',t5);

end;

procedure TFRelPecasRGS.R06BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
  inherited;
  Text := FormatFloat('##0;; ',t6);

end;

procedure TFRelPecasRGS.R07BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
  inherited;
  Text := FormatFloat('##0;; ',t7);

end;

procedure TFRelPecasRGS.R08BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
  inherited;
  Text := FormatFloat('##0;; ',t8);

end;

procedure TFRelPecasRGS.R09BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
  inherited;
  Text := FormatFloat('##0;; ',t9);

end;

procedure TFRelPecasRGS.R10BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
  inherited;
  Text := FormatFloat('##0;; ',t10);

end;

procedure TFRelPecasRGS.R11BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
  inherited;
  Text := FormatFloat('##0;; ',t11);

end;

procedure TFRelPecasRGS.R12BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
  inherited;
  Text := FormatFloat('##0;; ',t12);

end;

procedure TFRelPecasRGS.R13BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
  inherited;
  Text := FormatFloat('##0;; ',t13);

end;

procedure TFRelPecasRGS.R14BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
  inherited;
  Text := FormatFloat('##0;; ',t14);

end;

procedure TFRelPecasRGS.R15BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
  inherited;
  Text := FormatFloat('##0;; ',t15);

end;

procedure TFRelPecasRGS.R16BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
  inherited;
  Text := FormatFloat('##0;; ',t16);

end;

procedure TFRelPecasRGS.R17BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
  inherited;
  Text := FormatFloat('##0;; ',t17);

end;

procedure TFRelPecasRGS.R18BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
  inherited;
  Text := FormatFloat('##0;; ',t18);

end;

procedure TFRelPecasRGS.R19BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
  inherited;
  Text := FormatFloat('##0;; ',t19);

end;

procedure TFRelPecasRGS.R20BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
  inherited;
  Text := FormatFloat('##0;; ',t20);

end;

procedure TFRelPecasRGS.R21BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
  inherited;
  Text := FormatFloat('##0;; ',t21);

end;

procedure TFRelPecasRGS.R22BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
  inherited;
  Text := FormatFloat('##0;; ',t22);

end;

procedure TFRelPecasRGS.R23BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
  inherited;
  Text := FormatFloat('##0;; ',t23);

end;

procedure TFRelPecasRGS.R24BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
  inherited;
  Text := FormatFloat('##0;; ',t24);

end;

procedure TFRelPecasRGS.R25BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
  inherited;
  Text := FormatFloat('##0;; ',t25);

end;

procedure TFRelPecasRGS.R26BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
  inherited;
  Text := FormatFloat('##0;; ',t26);

end;

procedure TFRelPecasRGS.R27BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
  inherited;
  Text := FormatFloat('##0;; ',t27);

end;

procedure TFRelPecasRGS.R28BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
  inherited;
  Text := FormatFloat('##0;; ',t28);

end;

procedure TFRelPecasRGS.R29BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
  inherited;
  Text := FormatFloat('##0;; ',t29);

end;

procedure TFRelPecasRGS.R30BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
  inherited;
  Text := FormatFloat('##0;; ',t30);

end;

procedure TFRelPecasRGS.RLBand4AfterPrint(Sender: TObject);
begin
  inherited;
  t1  := 0;
  t2  := 0;
  t3  := 0;
  t4  := 0;
  t5  := 0;
  t6  := 0;
  t7  := 0;
  t8  := 0;
  t9  := 0;
  t10 := 0;
  t11 := 0;
  t12 := 0;
  t13 := 0;
  t14 := 0;
  t15 := 0;
  t16 := 0;
  t17 := 0;
  t18 := 0;
  t19 := 0;
  t20 := 0;
  t21 := 0;
  t22 := 0;
  t23 := 0;
  t24 := 0;
  t25 := 0;
  t26 := 0;
  t27 := 0;
  t28 := 0;
  t29 := 0;
  t30 := 0;

end;

end.
