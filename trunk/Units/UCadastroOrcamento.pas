unit UCadastroOrcamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UcadastroExpress, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ComCtrls, StdCtrls, DBCtrls, Grids, DBGrids, Buttons, ExtCtrls, Mask,
  ToolEdit, CurrEdit, RXDBCtrl, math, IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TFCadastroOrcamento = class(TFCadExpress)
    dsCliente: TDataSource;
    gbCliente: TGroupBox;
    DBText2: TDBText;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    Label8: TLabel;
    dblCliente: TDBLookupComboBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    rbIndustria: TRadioButton;
    rbCondominio: TRadioButton;
    Label4: TLabel;
    rbOutros: TRadioButton;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    SQLServico: TSQLDataSet;
    SQLPecas: TSQLDataSet;
    DSPServicos: TDataSetProvider;
    DSPPecas: TDataSetProvider;
    CDSServicos: TClientDataSet;
    CDSPecas: TClientDataSet;
    DSServicos: TDataSource;
    DSPecas: TDataSource;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    DBText1: TDBText;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    RxDBCalcEdit1: TRxDBCalcEdit;
    RxDBCalcEdit2: TRxDBCalcEdit;
    DBEdit3: TDBEdit;
    CDSPecasORCPECAS_CODIGO: TIntegerField;
    CDSPecasORC_CODIGO: TIntegerField;
    CDSPecasORCPECAS_QTD: TFloatField;
    CDSPecasORCPECAS_VRUNITA: TFloatField;
    CDSPecasORCPECAS_VRTOTAL: TFloatField;
    CDSPecasORCPECAS_CODPECA: TIntegerField;
    dblpecas: TDBLookupComboBox;
    dsPesquisaPecas: TDataSource;
    btnImpRGS: TBitBtn;
    edpecasQTD: TRxDBCalcEdit;
    edpecasVrUnit: TRxDBCalcEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    btnpecaNovo: TBitBtn;
    btnpecaExcluir: TBitBtn;
    btnpecaGravar: TBitBtn;
    btnservicoNovo: TBitBtn;
    btnservicoExcluir: TBitBtn;
    btnservicoGravar: TBitBtn;
    dblServico: TDBLookupComboBox;
    edServicoQTD: TRxDBCalcEdit;
    edServicoVrUnit: TRxDBCalcEdit;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    btnpecaAlterar: TBitBtn;
    btnpecaCancelar: TBitBtn;
    CDSPecasORCPECAS_DESCPECA: TStringField;
    btnservicoAlterar: TBitBtn;
    btnservicoCancelar: TBitBtn;
    dsPesquisaServico: TDataSource;
    CDSServicosORCSERV_CODIGO: TIntegerField;
    CDSServicosORC_CODIGO: TIntegerField;
    CDSServicosORCSERV_CODSERVICO: TStringField;
    CDSServicosORCSERV_QTD: TIntegerField;
    CDSServicosORCSERV_VRUNITA: TFloatField;
    CDSServicosORCSERV_VRTOTAL: TFloatField;
    CDSServicosORCSERV_DESCSERVICO: TStringField;
    DBDateEdit1: TDBDateEdit;
    Label19: TLabel;
    Label20: TLabel;
    GroupBox3: TGroupBox;
    Label21: TLabel;
    RxDBCalcEdit3: TRxDBCalcEdit;
    Label22: TLabel;
    RxDBCalcEdit4: TRxDBCalcEdit;
    Label23: TLabel;
    RxDBCalcEdit5: TRxDBCalcEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    QCadastro: TIBQuery;
    UpdataCadastro: TIBUpdateSQL;
    procedure btnNovoClick(Sender: TObject);
    procedure CDSPecasBeforePost(DataSet: TDataSet);
    procedure CDSServicosBeforePost(DataSet: TDataSet);
    procedure btnGravarClick(Sender: TObject);
    procedure dsCadastroDataChange(Sender: TObject; Field: TField);
    procedure btnImpRGSClick(Sender: TObject);
    procedure DSPecasStateChange(Sender: TObject);
    procedure btnpecaNovoClick(Sender: TObject);
    procedure btnpecaExcluirClick(Sender: TObject);
    procedure btnpecaGravarClick(Sender: TObject);
    procedure btnpecaAlterarClick(Sender: TObject);
    procedure btnpecaCancelarClick(Sender: TObject);
    procedure dsCadastroStateChange(Sender: TObject);
    procedure CDSPecasAfterOpen(DataSet: TDataSet);
    procedure dsClienteDataChange(Sender: TObject; Field: TField);
    procedure dblpecasExit(Sender: TObject);
    procedure dblClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dblServicoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dblpecasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnservicoNovoClick(Sender: TObject);
    procedure btnservicoAlterarClick(Sender: TObject);
    procedure btnservicoGravarClick(Sender: TObject);
    procedure btnservicoCancelarClick(Sender: TObject);
    procedure btnservicoExcluirClick(Sender: TObject);
    procedure DSServicosStateChange(Sender: TObject);
    procedure dblServicoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
  private
    { Private declarations }
    procedure atualizaTabelaPreco(Cliente, codServOuPeca : integer; tipo: String; preco : Real);
    function calculatotalpeca:real;
    function calculatotalServ:real;
  public
    { Public declarations }
  end;

var
  FCadastroOrcamento: TFCadastroOrcamento;
  lista_dos_itens_do_registro1 : TStrings;
  lista_dos_itens_do_registro2 : TStrings;

const
  ctPesquisaPreco =
    'SELECT'#10+
    '  TABELAPRECOS.TAB_VALOR'#10+
    'FROM'#10+
    '  TABELAPRECOS'#10+
    'WHERE'#10+
    '  (TABELAPRECOS.tab_cliente   = %s) AND'#10+
    '  (TABELAPRECOS.tab_codigo    = %s)AND'#10+
    '  (TABELAPRECOS.tab_tipopreco = %s)';

implementation

uses UdmPesquisa, UdmGeral, UFsuper, URelatorioOrcamento, UDMRgs,
  UpesquisaClientes;

{$R *.dfm}

procedure TFCadastroOrcamento.btnNovoClick(Sender: TObject);
begin

  inherited;
  dsCadastro.DataSet.FieldByName('ORC_CODIGO').AsInteger       := Retorna_Codigo_Generetor('GEN_ORCAMENTO');
  dsCadastro.DataSet.FieldByName('ORC_PRAZOENTREGA').AsInteger := 0;
  dsCadastro.DataSet.FieldByName('ORC_VALIDADE').AsInteger     := 0;
  dsCadastro.DataSet.FieldByName('ORC_DATA').AsDateTime        := Now;
  lista_dos_itens_do_registro1.Clear;
  lista_dos_itens_do_registro2.Clear;
  PageControl.ActivePageIndex := 1;
  dblCliente.SetFocus;
  
end;

procedure TFCadastroOrcamento.CDSPecasBeforePost(DataSet: TDataSet);
begin
  inherited;
  DSPecas.DataSet.FieldByName('ORCPECAS_DESCPECA').AsString := dblpecas.Text;

  DSPecas.DataSet.FieldByName('ORCPECAS_VRTOTAL').AsFloat :=
  SimpleRoundTo(DSPecas.DataSet.FieldByName('ORCPECAS_VRUNITA').AsFloat*
                DSPecas.DataSet.FieldByName('ORCPECAS_QTD').AsInteger,-2);

end;

procedure TFCadastroOrcamento.CDSServicosBeforePost(DataSet: TDataSet);
begin
  inherited;

  DSServicos.DataSet.FieldByName('ORCSERV_CODIGO').AsInteger := Retorna_Codigo_Generetor('GEN_ORCSERVICOS');
  DSServicos.DataSet.FieldByName('ORC_CODIGO').AsInteger :=
  DsCadastro.DataSet.FieldByName('ORC_CODIGO').AsInteger;
  DSServicos.DataSet.FieldByName('ORCSERV_VRTOTAL').AsFloat := DSServicos.DataSet.FieldByName('ORCSERV_VRUNITA').AsFloat *
                                                               DSServicos.DataSet.FieldByName('ORCSERV_QTD').AsInteger;

end;

procedure TFCadastroOrcamento.btnGravarClick(Sender: TObject);
var
  updateCliente, tipo : string;
begin

  if dsCadastro.DataSet.State in[dsEdit, dsInsert] then
    dsCadastro.DataSet.FieldByName('ORC_VRPECAS').AsFloat    := calculatotalpeca;

  dsCadastro.DataSet.FieldByName('ORC_VRPECAS').AsFloat      := calculatotalpeca;
  dsCadastro.DataSet.FieldByName('ORC_VRSERVICO').AsFloat    := calculatotalServ;

  dsCadastro.DataSet.FieldByName('ORC_VALOR').AsFloat        := dsCadastro.DataSet.FieldByName('ORC_VRPECAS').AsFloat +
                                                                dsCadastro.DataSet.FieldByName('ORC_VRSERVICO').AsFloat;
  dsCadastro.DataSet.FieldByName('ORC_CLIENTEDESC').AsString := dblCliente.Text;

  if RadioButton1.Checked then
    dsCadastro.DataSet.FieldByName('ORC_INFOBOMBEIRO').AsInteger := 0;
  if RadioButton2.Checked then
    dsCadastro.DataSet.FieldByName('ORC_INFOBOMBEIRO').AsInteger := 1;
  if RadioButton3.Checked then
    dsCadastro.DataSet.FieldByName('ORC_INFOBOMBEIRO').AsInteger := 2;

  inherited;

  if (dsPecas.DataSet as TClientdataSet).ChangeCount > 0 then
    (dsPecas.DataSet as TClientdataSet).ApplyUpdates(-1);

  if (DSServicos.DataSet as TClientdataSet).ChangeCount > 0 then
    (DSServicos.DataSet as TClientdataSet).ApplyUpdates(-1);

  // Atualizando tabela de preço com os valores dos serviços
  DSServicos.DataSet.First;
  while not(DSServicos.DataSet.EOF) do
  begin

    atualizaTabelaPreco(dsCadastro.DataSet.FieldByName('ORC_CLIENTE').AsInteger,
                        DSServicos.DataSet.FieldByName('ORCSERV_CODSERVICO').AsInteger,
                        'S',
                        DSServicos.DataSet.FieldByName('ORCSERV_VRUNITA').AsFloat);

    DSServicos.DataSet.Next;

  end;

  // Atualizando tabela de preço com os valores das peças
  DSPecas.DataSet.First;
  while not(DSPecas.DataSet.EOF) do
  begin

    atualizaTabelaPreco(dsCadastro.DataSet.FieldByName('ORC_CLIENTE').AsInteger,
                        DSPecas.DataSet.FieldByName('ORCPECAS_CODPECA').AsInteger,
                        'P',
                        DSPecas.DataSet.FieldByName('ORCPECAS_VRUNITA').AsFloat);

    DSPecas.DataSet.Next;

  end;
  // Destruindo as variaveis que verificam duplicidade nos itens(Serviços e peças)
  lista_dos_itens_do_registro1.Free;
  lista_dos_itens_do_registro2.Free;

  // Atualizando informações do cliente
  updateCliente :=
    'UPDATE CLIENTE SET'#10+
    '  TIPO                = %s,'#10+
    '  EMAIL               = %s,'#10+
    '  CONTATO             = %s,'#10+
    '  ULTIMA_CONDPAGTO    = %s,'#10+
    '  ULTIMO_PRAZOENTREGA = %s,'#10+
    '  ULTIMO_VALIDADE     = %s'#10+
    'WHERE'#10+
    '  CODIGO = %s';

  if rbIndustria.Checked then
    tipo := 'I';
  if rbCondominio.Checked then
    tipo := 'C';
  if rbOutros.Checked then
    tipo := '';

  execDml(Format(updateCliente, [QuotedStr(tipo),
                                 QuotedStr(dsCadastro.DataSet.FieldByName('ORC_CLIEMAIL').AsString),
                                 QuotedStr(dsCadastro.DataSet.FieldByName('ORC_CONTATO').AsString),
                                 QuotedStr(dsCadastro.DataSet.FieldByName('ORC_CONDPAGTO').AsString),
                                 dsCadastro.DataSet.FieldByName('ORC_PRAZOENTREGA').AsString,
                                 dsCadastro.DataSet.FieldByName('ORC_VALIDADE').AsString,
                                 dsCadastro.DataSet.FieldByName('ORC_CLIENTE').AsString]));

end;

procedure TFCadastroOrcamento.atualizaTabelaPreco(Cliente,
  codServOuPeca: integer; tipo: String; preco: Real);
const
  ctDelete =
    'DELETE FROM TABELAPRECOS WHERE'#10+
    '  (TAB_CLIENTE   = %s) AND'#10+
    '  (TAB_TIPOPRECO = %s) AND'#10+
    '  (TAB_CODIGO    = %s)';

  ctInsert =
    'INSERT INTO TABELAPRECOS('#10+
    '  TAB_CLIENTE,'#10+
    '  TAB_TIPOPRECO,'#10+
    '  TAB_CODIGO,'#10+
    '  TAB_VALOR,'#10+
    '  TAB_DATAPRECO)'#10+
    'VALUES(%s, %s, %s, %s, current_timestamp)';

begin

  execDml(Format(ctDelete, [IntToStr(Cliente),
                            QuotedStr(tipo),
                            IntToStr(codServOuPeca)]));

  execDml(Format(ctInsert, [IntToStr(Cliente),
                            QuotedStr(tipo),
                            IntToStr(codServOuPeca),
                            StringReplace(FloatToStr(preco),',','.',[])]));

end;

procedure TFCadastroOrcamento.dsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  // Atualizando lista de serviços para evitar repetições
  lista_dos_itens_do_registro1 := Tstringlist.Create;
  lista_dos_itens_do_registro1.Clear;
  if DSServicos.DataSet.Active then
  begin

    DSServicos.DataSet.First;
    while not(DSServicos.DataSet.Eof)do
    begin

      lista_dos_itens_do_registro1.Add(DSServicos.DataSet.FieldByName('ORCSERV_CODSERVICO').AsString);

      DSServicos.DataSet.Next;

    end;

  end;

  // Atualizando lista de peças para evitar repetições
  lista_dos_itens_do_registro2 := Tstringlist.Create;
  lista_dos_itens_do_registro2.Clear;
  if DSPecas.DataSet.Active then
  begin

    DSPecas.DataSet.First;
    while not(DSPecas.DataSet.Eof)do
    begin

      lista_dos_itens_do_registro2.Add(DSPecas.DataSet.FieldByName('ORCPECAS_CODPECA').AsString);

      DSPecas.DataSet.Next;

    end;
  end;

  calculatotalpeca;

  //
  if dsCadastro.DataSet.State = dsBrowse then
  begin

    case dsCadastro.DataSet.FieldByName('ORC_INFOBOMBEIRO').AsInteger of
      0:begin
          RadioButton1.Checked := True;
          RadioButton2.Checked := False;
          RadioButton3.Checked := False;
        end;
      1:begin
          RadioButton1.Checked := False;
          RadioButton2.Checked := True;
          RadioButton3.Checked := False;
        end;
      2:begin
          RadioButton1.Checked := False;
          RadioButton2.Checked := False;
          RadioButton3.Checked := True;
        end;
    end;

  end;
    
end;

procedure TFCadastroOrcamento.btnImpRGSClick(Sender: TObject);
var
  cdsTemp : TClientDataSet;

begin
  cdsTemp := TClientDataSet.Create(Self);

  with cdsTemp.FieldDefs do
  begin
    Add('QUANT', ftInteger,    0);
    Add('TIPO', ftString,      1);
    Add('UNITARIO', ftFloat,   0);
    Add('TOTAL', ftFloat,      0);
    Add('DESCRICAO', ftString,60);
  end;
  cdsTemp.CreateDataSet;
  cdsTemp.Open;
  cdsTemp.IndexFieldNames := 'TIPO';

  TCurrencyField(cdsTemp.FieldByName('UNITARIO')).DisplayFormat := '#,##0.00';
  TCurrencyField(cdsTemp.FieldByName('TOTAL')).DisplayFormat    := '#,##0.00';

  DSServicos.DataSet.First;
  while not(DSServicos.DataSet.Eof) do
  begin

    cdsTemp.Insert;
    cdsTemp.FieldByName('QUANT').AsInteger    := DSServicos.DataSet.FieldByName('ORCSERV_QTD').AsInteger;
    cdsTemp.FieldByName('TIPO').AsString      := 'S';
    cdsTemp.FieldByName('DESCRICAO').AsString := DSServicos.DataSet.FieldByName('ORCSERV_DESCSERVICO').AsString;
    cdsTemp.FieldByName('UNITARIO').AsFloat   := DSServicos.DataSet.FieldByName('ORCSERV_VRUNITA').AsFloat;
    cdsTemp.FieldByName('TOTAL').AsFloat      := DSServicos.DataSet.FieldByName('ORCSERV_VRTOTAL').AsFloat;
    cdsTemp.Post;

    DSServicos.DataSet.Next;

  end;

  inherited;

  DSPecas.DataSet.First;
  while not(DSPecas.DataSet.Eof) do
  begin

    cdsTemp.Insert;
    cdsTemp.FieldByName('QUANT').AsInteger    := DSPecas.DataSet.FieldByName('ORCPECAS_QTD').AsInteger;
    cdsTemp.FieldByName('TIPO').AsString      := 'P';
    cdsTemp.FieldByName('DESCRICAO').AsString := DSPecas.DataSet.FieldByName('ORCPECAS_DESCPECA').AsString;
    cdsTemp.FieldByName('UNITARIO').AsFloat   := DSPecas.DataSet.FieldByName('ORCPECAS_VRUNITA').AsFloat;
    cdsTemp.FieldByName('TOTAL').AsFloat      := DSPecas.DataSet.FieldByName('ORCPECAS_VRTOTAL').AsFloat;
    cdsTemp.Post;

    DSPecas.DataSet.Next;

  end;

  Application.CreateForm(TFRelatorioOrcamento, FRelatorioOrcamento);
  FRelatorioOrcamento.dsRelatorio.DataSet := cdsTemp;

  with FRelatorioOrcamento do
  begin
    rlEmpresa.Caption     := DMPesquisa.cdsEmpresa.FieldByName('FANTASIA').AsString;
    rlEndereco.Caption    := DMPesquisa.cdsEmpresa.FieldByName('ENDERECO').AsString + ' - ' +
                             DMPesquisa.cdsEmpresa.FieldByName('BAIRRO').AsString   + ' - ' +
                             DMPesquisa.cdsEmpresa.FieldByName('CIDADE').AsString   + '-'   +
                             DMPesquisa.cdsEmpresa.FieldByName('UF').AsString;
    rlComplemento.Caption := 'Fone: ' + DMPesquisa.cdsEmpresa.FieldByName('FONE').AsString;
  end;
  FRelatorioOrcamento.RLReport1.Preview;
  FRelatorioOrcamento.Free;

  inherited;

end;

procedure TFCadastroOrcamento.DSPecasStateChange(Sender: TObject);
begin
  inherited;

  if dscadastro.DataSet.State in [dsInsert, dsEdit] then
  begin
    btnpecaNovo.Enabled     := not(DSPecas.DataSet.State in [dsInsert, dsEdit]);
    btnpecaAlterar.Enabled  := not(DSPecas.DataSet.State in [dsInsert, dsEdit]);
    btnpecaCancelar.Enabled := (DSPecas.DataSet.State in [dsInsert, dsEdit]);
    btnpecaExcluir.Enabled  := not(DSPecas.DataSet.State in [dsInsert, dsEdit]);
    btnpecaGravar.Enabled   := (DSPecas.DataSet.State in [dsInsert, dsEdit]);

    edpecasQTD.Enabled      := (DSPecas.DataSet.State in [dsInsert, dsEdit]);
    edpecasVrUnit.Enabled   := (DSPecas.DataSet.State in [dsInsert, dsEdit]);
    dblpecas.Enabled        := (DSPecas.DataSet.State in [dsInsert, dsEdit]);
  end else begin
    btnpecaNovo.Enabled     := False;
    btnpecaAlterar.Enabled  := False;
    btnpecaCancelar.Enabled := False;
    btnpecaExcluir.Enabled  := False;
    btnpecaGravar.Enabled   := False;

    edpecasQTD.Enabled      := False;
    edpecasVrUnit.Enabled   := False;
    dblpecas.Enabled        := False;
  end;

end;

procedure TFCadastroOrcamento.btnpecaNovoClick(Sender: TObject);
begin
  inherited;
  DSPecas.DataSet.Insert;
  edpecasQTD.SetFocus;
  DSPecas.DataSet.FieldByName('ORCPECAS_CODIGO').AsInteger  := Retorna_Codigo_Generetor('GEN_ORCPECAS');
  DSPecas.DataSet.FieldByName('ORC_CODIGO').AsInteger       := DsCadastro.DataSet.FieldByName('ORC_CODIGO').AsInteger;
end;

procedure TFCadastroOrcamento.btnpecaExcluirClick(Sender: TObject);
begin
  inherited;
  DSPecas.DataSet.Delete;
end;

procedure TFCadastroOrcamento.btnpecaGravarClick(Sender: TObject);
begin
  inherited;

  if dsPecas.DataSet.State = dsInsert then
  begin
    if lista_dos_itens_do_registro2.IndexOf(DSPecas.DataSet.FieldByName('ORCPECAS_CODPECA').AsString) <> -1 then
    begin

      ShowMessage('Peça já cadastrado!');
      DSPecas.DataSet.Cancel;
      Exit;

    end;
  end;

  if dblpecas.KeyValue = null then
  begin

    ShowMessage('A peça deve ser informada!');
    dblpecas.SetFocus;
    exit;

  end;

  if edpecasQTD.Value = 0 then
  begin

    ShowMessage('A quantidade deve ser informada!');
    edpecasQTD.SetFocus;
    exit;

  end;
  if edpecasVrUnit.Value = 0 then
  begin

    ShowMessage('O Valor unitário deve ser informado!');
    edpecasVrUnit.SetFocus;
    exit;

  end;

  DSPecas.DataSet.Post;
end;

procedure TFCadastroOrcamento.btnpecaAlterarClick(Sender: TObject);
begin
  inherited;
  DSPecas.DataSet.Edit;
end;

procedure TFCadastroOrcamento.btnpecaCancelarClick(Sender: TObject);
begin
  inherited;
  DSPecas.DataSet.Cancel;
end;

function TFCadastroOrcamento.calculatotalpeca:real;
var
  valor : real;
begin
  inherited;

  valor := 0;

  if dspecas.DataSet.State = dsbrowse then
  begin
     dspecas.DataSet.First;

     while not(dspecas.DataSet.Eof) do
     begin

       valor := valor + dspecas.DataSet.FieldByName('ORCPECAS_VRTOTAL').AsFloat;
       dspecas.DataSet.Next;

     end;
     label18.Caption := FormatFloat('"Total das Peças: "#,##0.00', valor);

     result := valor;

  end;
end;

procedure TFCadastroOrcamento.dsCadastroStateChange(Sender: TObject);
begin
  inherited;
  DSPecasStateChange(sender);
  DSServicosStateChange(sender);
end;

procedure TFCadastroOrcamento.CDSPecasAfterOpen(DataSet: TDataSet);
begin
  inherited;
  calculatotalpeca;
end;

procedure TFCadastroOrcamento.dsClienteDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  if dsCadastro.DataSet.State in[dsInsert, dsEdit] then
  begin

    rbOutros.Checked     := dsCliente.DataSet.FieldByName('TIPO').AsString = ' ';
    rbCondominio.Checked := dsCliente.DataSet.FieldByName('TIPO').AsString = 'C';
    rbIndustria.Checked  := dsCliente.DataSet.FieldByName('TIPO').AsString = 'I';

    dsCadastro.DataSet.FieldByName('ORC_CLIEMAIL').AsString  := dsCliente.DataSet.FieldByName('EMAIL').AsString;
    dsCadastro.DataSet.FieldByName('ORC_CONTATO').AsString   := dsCliente.DataSet.FieldByName('CONTATO').AsString;
    dsCadastro.DataSet.FieldByName('ORC_CONDPAGTO').AsString := dsCliente.DataSet.FieldByName('ULTIMA_CONDPAGTO').AsString;
    dsCadastro.DataSet.FieldByName('ORC_CONDPAGTO').AsString := dsCliente.DataSet.FieldByName('ULTIMO_PRAZOENTREGA').AsString;
    dsCadastro.DataSet.FieldByName('ORC_VALIDADE').AsString  := dsCliente.DataSet.FieldByName('ULTIMO_VALIDADE').AsString;

  end;

end;

procedure TFCadastroOrcamento.dblpecasExit(Sender: TObject);
var
  preco : Variant;

begin
  inherited;

  if (dsCadastro.DataSet.FieldByName('ORC_CLIENTE').AsString <> '') and
     (DSPecas.DataSet.FieldByName('ORCPECAS_CODPECA').AsString <> '') then
  begin

    preco := select_1(Format(ctPesquisaPreco,  [dsCadastro.DataSet.FieldByName('ORC_CLIENTE').AsString,
                                                DSPecas.DataSet.FieldByName('ORCPECAS_CODPECA').AsString,
                                                QuotedStr('P')]));
    if preco <> null then
      DSPecas.DataSet.FieldByName('ORCPECAS_VRUNITA').AsFloat := preco;

  end;

  if (DSPecas.DataSet.State in [dsInsert, dsEdit]) and
     (dblpecas.KeyValue <> null) then
    DSPecas.DataSet.FieldByName('ORCPECAS_DESCPECA').AsString := dblpecas.Text;

end;

procedure TFCadastroOrcamento.dblClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  //fun_dblookup(Key, Shift, TDBLookupComboBox(Sender));
  if key = vk_delete then
    TDBLookupComboBox(sender).KeyValue := null
  else if key = vk_f5 then
  begin
    if TDBLookupComboBox(sender).listSource.dataset.Active then begin
      TDBLookupComboBox(sender).listSource.dataset.close;
      TDBLookupComboBox(sender).listSource.dataset.Open;
    end else
      TDBLookupComboBox(sender).listSource.dataset.Open;

  end else if key = vk_f8 then
  begin
    TDBLookupComboBox(sender).ListSource.DataSet.close;
    TDBLookupComboBox(sender).ListSource.DataSet.Open;
    Application.CreateForm(TFpesquisaClientes, FpesquisaClientes);
    FpesquisaClientes.showModal;
    TDBLookupComboBox(sender).Field.AsVariant := FpesquisaClientes.QPesquisa.Fields[0].AsVariant;
    FpesquisaClientes.Free;
  end;
end;

procedure TFCadastroOrcamento.dblServicoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  fun_dblookup(Key, Shift, TDBLookupComboBox(Sender));

end;

procedure TFCadastroOrcamento.dblpecasKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  fun_dblookup(Key, Shift, TDBLookupComboBox(Sender));

end;

procedure TFCadastroOrcamento.btnservicoNovoClick(Sender: TObject);
begin
  inherited;
  DSServicos.DataSet.Insert;
  edServicoQTD.SetFocus;
end;

procedure TFCadastroOrcamento.btnservicoAlterarClick(Sender: TObject);
begin
  inherited;
  DSServicos.DataSet.Edit;
end;

procedure TFCadastroOrcamento.btnservicoGravarClick(Sender: TObject);
begin
  inherited;

  if DSServicos.DataSet.FieldByName('ORCSERV_QTD').AsInteger < 1 then
  begin

    ShowMessage('A quantidade deve ser maior que zero!');
    edServicoQTD.SetFocus;
    Exit;

  end;

  if dblServico.KeyValue = null then
  begin

    ShowMessage('O Serviço deve ser informado');
    dblServico.SetFocus;
    Exit;

  end;

  if DSServicos.DataSet.FieldByName('ORCSERV_VRUNITA').AsFloat = 0 then
  begin

    ShowMessage('O Valor deve ser informado!');
    edServicoVrUnit.SetFocus;
    Exit;

  end;


  if dsServicos.DataSet.State = dsInsert then
  begin
    if lista_dos_itens_do_registro1.IndexOf(dsServicos.DataSet.FieldByName('ORCSERV_CODSERVICO').AsString) <> -1 then
    begin

      ShowMessage('Serviço já cadastrado!');
      dsServicos.DataSet.Cancel;
      Exit;

    end;
  end;

  DSServicos.DataSet.FieldByName('ORCSERV_DESCSERVICO').AsString := dblServico.text;
  DSServicos.DataSet.FieldByName('ORCSERV_VRTOTAL').AsFloat      := DSServicos.DataSet.FieldByName('ORCSERV_VRUNITA').AsFloat *
                                                                    DSServicos.DataSet.FieldByName('ORCSERV_QTD').AsInteger;
  DSServicos.DataSet.Post;
end;

procedure TFCadastroOrcamento.btnservicoCancelarClick(Sender: TObject);
begin
  inherited;
  DSServicos.DataSet.Cancel;
end;

procedure TFCadastroOrcamento.btnservicoExcluirClick(Sender: TObject);
begin
  inherited;
  DSServicos.DataSet.Delete;
end;

procedure TFCadastroOrcamento.DSServicosStateChange(Sender: TObject);
begin
  inherited;
  if dscadastro.DataSet.State in [dsInsert, dsEdit] then
  begin
    btnservicoNovo.Enabled     := not(DSServicos.DataSet.State in [dsInsert, dsEdit]);
    btnservicoAlterar.Enabled  := not(DSServicos.DataSet.State in [dsInsert, dsEdit]);
    btnservicoCancelar.Enabled := (DSServicos.DataSet.State in [dsInsert, dsEdit]);
    btnservicoExcluir.Enabled  := not(DSServicos.DataSet.State in [dsInsert, dsEdit]);
    btnservicoGravar.Enabled   := (DSServicos.DataSet.State in [dsInsert, dsEdit]);

    edServicoQTD.Enabled      := (DSServicos.DataSet.State in [dsInsert, dsEdit]);
    edServicoVrUnit.Enabled   := (DSServicos.DataSet.State in [dsInsert, dsEdit]);
    dblServico.Enabled        := (DSServicos.DataSet.State in [dsInsert, dsEdit]);
  end else begin
    btnservicoNovo.Enabled     := False;
    btnservicoAlterar.Enabled  := False;
    btnservicoCancelar.Enabled := False;
    btnservicoExcluir.Enabled  := False;
    btnservicoGravar.Enabled   := False;

    edServicoQTD.Enabled       := False;
    dblServico.Enabled         := False;
    edServicoVrUnit.Enabled    := False;
  end;
end;

procedure TFCadastroOrcamento.dblServicoExit(Sender: TObject);
var
  preco : Variant;

begin
  inherited;

  if (dsCadastro.DataSet.FieldByName('ORC_CLIENTE').AsString <> '') and
     (DSServicos.DataSet.FieldByName('ORCSERV_CODSERVICO').AsString <> '') then
  begin

    preco := select_1(Format(ctPesquisaPreco,  [dsCadastro.DataSet.FieldByName('ORC_CLIENTE').AsString,
                                                DSServicos.DataSet.FieldByName('ORCSERV_CODSERVICO').AsString,
                                                QuotedStr('S')]));
    if preco <> null then
      DSServicos.DataSet.FieldByName('ORCSERV_VRUNITA').AsFloat := preco;

  end;

  if (DSServicos.DataSet.State in [dsInsert, dsEdit]) and
     (dblServico.KeyValue <> Null) then
    DSServicos.DataSet.FieldByName('ORCSERV_DESCSERVICO').AsString := dblServico.text;

end;

procedure TFCadastroOrcamento.FormCreate(Sender: TObject);
begin
  inherited;
  PageControl.ActivePageIndex := 0;
  QCadastro.Open;
end;

function TFCadastroOrcamento.calculatotalServ: real;
var
  valor : real;
begin
  inherited;

  valor := 0;

  if DSServicos.DataSet.State = dsbrowse then
  begin
     DSServicos.DataSet.First;

     while not(DSServicos.DataSet.Eof) do
     begin

       valor := valor + DSServicos.DataSet.FieldByName('ORCSERV_VRTOTAL').AsFloat;
       DSServicos.DataSet.Next;

     end;
     Label20.Caption := FormatFloat('"Total dos Servidores: "#,##0.00', valor);

     result := valor;

  end;
end;

procedure TFCadastroOrcamento.btnAlterarClick(Sender: TObject);
begin
  inherited;
  lista_dos_itens_do_registro1.Clear;
  lista_dos_itens_do_registro2.Clear;
  PageControl.ActivePageIndex := 1;
  dblCliente.SetFocus;

end;

end.
