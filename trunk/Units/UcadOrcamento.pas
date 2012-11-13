unit UcadOrcamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadGeral, ToolEdit, RXDBCtrl, CurrEdit, StdCtrls, Mask,
  DBCtrls, DB, IBCustomDataSet, IBUpdateSQL, IBQuery, Buttons, ExtCtrls,
  Grids, DBGrids, IBTable, DBClient, RLFilters, RLPDFFilter;

type
  TFCadOrcamento = class(TFCadGeral)
    gbCliente: TGroupBox;
    DBText2: TDBText;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    dblCliente: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    rbIndustria: TRadioButton;
    rbCondominio: TRadioButton;
    rbOutros: TRadioButton;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    DBText1: TDBText;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label19: TLabel;
    RxDBCalcEdit1: TRxDBCalcEdit;
    RxDBCalcEdit2: TRxDBCalcEdit;
    DBEdit3: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    GroupBox3: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    RxDBCalcEdit3: TRxDBCalcEdit;
    RxDBCalcEdit4: TRxDBCalcEdit;
    RxDBCalcEdit5: TRxDBCalcEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    dsCliente: TDataSource;
    dsPecas: TDataSource;
    dsPesquisaPecas: TDataSource;
    cdsPecas: TClientDataSet;
    btnImpRGS: TBitBtn;
    GroupBox1: TGroupBox;
    DBMemo1: TDBMemo;
    RLPDFFilter1: TRLPDFFilter;
    Label25: TLabel;
    btnAprovado: TBitBtn;
    Label27: TLabel;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    Label28: TLabel;
    DBEdit6: TDBEdit;
    gbServicos: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label20: TLabel;
    Label24: TLabel;
    DBGrid1: TDBGrid;
    btnservicoNovo: TBitBtn;
    btnservicoExcluir: TBitBtn;
    btnservicoGravar: TBitBtn;
    dblServico: TDBLookupComboBox;
    edServicoQTD: TRxDBCalcEdit;
    edServicoVrUnit: TRxDBCalcEdit;
    btnservicoAlterar: TBitBtn;
    btnservicoCancelar: TBitBtn;
    Edit1: TEdit;
    dsServico: TDataSource;
    dsPesquisaServico: TDataSource;
    cdsServicos: TClientDataSet;
    QItens: TIBQuery;
    tbTemp: TIBTable;
    gbPecas: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label18: TLabel;
    Label26: TLabel;
    DBGrid2: TDBGrid;
    dblpecas: TDBLookupComboBox;
    edpecasQTD: TRxDBCalcEdit;
    edpecasVrUnit: TRxDBCalcEdit;
    btnpecaNovo: TBitBtn;
    btnpecaExcluir: TBitBtn;
    btnpecaGravar: TBitBtn;
    btnpecaAlterar: TBitBtn;
    btnpecaCancelar: TBitBtn;
    Edit2: TEdit;
    DBCheckBox1: TDBCheckBox;
    DBEdit7: TDBEdit;
    procedure dsClienteDataChange(Sender: TObject; Field: TField);
    procedure dsCadastroDataChange(Sender: TObject; Field: TField);
    procedure btnservicoGravarClick(Sender: TObject);
    procedure btnservicoNovoClick(Sender: TObject);
    procedure btnservicoAlterarClick(Sender: TObject);
    procedure btnservicoCancelarClick(Sender: TObject);
    procedure btnservicoExcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dsServicoStateChange(Sender: TObject);
    procedure dsCadastroStateChange(Sender: TObject);
    procedure dblServicoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dblServicoExit(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnpecaNovoClick(Sender: TObject);
    procedure btnpecaAlterarClick(Sender: TObject);
    procedure btnpecaGravarClick(Sender: TObject);
    procedure btnpecaCancelarClick(Sender: TObject);
    procedure btnpecaExcluirClick(Sender: TObject);
    procedure dsPecasStateChange(Sender: TObject);
    procedure dblpecasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dblpecasExit(Sender: TObject);
    procedure edServicoVrUnitExit(Sender: TObject);
    procedure edpecasVrUnitExit(Sender: TObject);
    procedure btnImpRGSClick(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure dblClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2Exit(Sender: TObject);
    procedure btnAprovadoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure DBMemo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCancelarClick(Sender: TObject);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure dsPecasDataChange(Sender: TObject; Field: TField);
    procedure dsServicoDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    procedure atualizaTabelaPreco(Cliente, codServOuPeca : integer; tipo: String; preco : Real);
    function calculatotalpeca:real;
    function calculatotalServ:real;
    function carregaServicos:Real;
    function carregaPecas:Real;
  public
    { Public declarations }
  end;

var
  FCadOrcamento: TFCadOrcamento;
  lista_dos_itens_do_registro1 : TStrings;
  lista_dos_itens_do_registro2 : TStrings;
  pronto : Boolean = True;

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

uses UdmPesquisa, UdmGeral, UFsuper, URelatorioOrcamento,
  UpesquisaClientes, UCadProduto, UPesquisaOrcamento;

{$R *.dfm}

procedure TFCadOrcamento.dsClienteDataChange(Sender: TObject; Field: TField);
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
    dsCadastro.DataSet.FieldByName('ORC_PRAZOENTREGA').AsString := dsCliente.DataSet.FieldByName('ULTIMO_PRAZOENTREGA').AsString;
    dsCadastro.DataSet.FieldByName('ORC_VALIDADE').AsString  := dsCliente.DataSet.FieldByName('ULTIMO_VALIDADE').AsString;
    dsCadastro.DataSet.FieldByName('ORC_REPRESENTATE').AsString  := dsCliente.DataSet.FieldByName('REPRESENTATE').AsString;
    dsCadastro.DataSet.FieldByName('ORC_REP_TELEFONE').AsString  := dsCliente.DataSet.FieldByName('REP_TELEFONE').AsString;

  end;

end;

procedure TFCadOrcamento.dsCadastroDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  // Atualizando lista de serviços para evitar repetições
  lista_dos_itens_do_registro1 := Tstringlist.Create;
  lista_dos_itens_do_registro1.Clear;
  if DSServico.DataSet.Active then
  begin

    DSServico.DataSet.First;
    while not(DSServico.DataSet.Eof)do
    begin

      lista_dos_itens_do_registro1.Add(DSServico.DataSet.FieldByName('ORCSERV_CODSERVICO').AsString);

      DSServico.DataSet.Next;

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

  if (pronto) and (dsCadastro.DataSet.State = dsBrowse) then
  begin
    carregaPecas;
    carregaServicos;
  end;

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

  btnAprovado.Enabled := (dsCadastro.DataSet.FieldByName('ORC_SITUACAO').AsString <> 'S') and
                         (dsCadastro.DataSet.State = dsBrowse);

end;

procedure TFCadOrcamento.btnservicoGravarClick(Sender: TObject);
begin
  inherited;
  if DSServico.DataSet.FieldByName('ORCSERV_QTD').AsInteger < 1 then
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

  if DSServico.DataSet.FieldByName('ORCSERV_VRUNITA').AsFloat = 0 then
  begin

    ShowMessage('O Valor deve ser informado!');
    edServicoVrUnit.SetFocus;
    Exit;

  end;


  if dsServico.DataSet.State = dsInsert then
  begin
    if lista_dos_itens_do_registro1.IndexOf(dsServico.DataSet.FieldByName('ORCSERV_CODSERVICO').AsString) <> -1 then
    begin

      ShowMessage('Serviço já cadastrado!');
      dsServico.DataSet.Cancel;
      Exit;

    end;
  end;

  if dsServico.DataSet.State = dsInsert then
    DSServico.DataSet.FieldByName('ORDEM').AsInteger            := DSServico.DataSet.RecordCount + 1
  else if dsServico.DataSet.State = dsEdit then
    DSServico.DataSet.FieldByName('ORDEM').AsInteger            := DSServico.DataSet.RecNo;

  DSServico.DataSet.FieldByName('ORCSERV_CODIGO').AsInteger     := Retorna_Codigo_Generetor('GEN_ORCSERVICOS');
  DSServico.DataSet.FieldByName('ORC_CODIGO').AsInteger         := DsCadastro.DataSet.FieldByName('ORC_CODIGO').AsInteger;
  DSServico.DataSet.FieldByName('ORCSERVICOS_PRODREF').AsString := dsPesquisaServico.DataSet.FieldByName('PROD_REF').AsString;
  DSServico.DataSet.FieldByName('ORCSERV_DESCSERVICO').AsString := dblServico.text;
  DSServico.DataSet.FieldByName('ORCSERV_VRTOTAL').AsFloat      := DSServico.DataSet.FieldByName('ORCSERV_VRUNITA').AsFloat *
  DSServico.DataSet.FieldByName('ORCSERV_QTD').AsInteger;


  dsServico.DataSet.Post;
  btnservicoNovo.SetFocus;

end;

procedure TFCadOrcamento.btnservicoNovoClick(Sender: TObject);
begin
  inherited;
  dsServico.DataSet.Insert;
  edServicoQTD.Field.AsInteger := 1;
  edServicoQTD.SetFocus;

end;

procedure TFCadOrcamento.btnservicoAlterarClick(Sender: TObject);
begin
  inherited;
  dsServico.DataSet.Edit;
  
end;

procedure TFCadOrcamento.btnservicoCancelarClick(Sender: TObject);
begin
  inherited;
  dsServico.DataSet.Cancel;
end;

procedure TFCadOrcamento.btnservicoExcluirClick(Sender: TObject);
begin
  inherited;
  dsServico.DataSet.Delete;
  
end;

procedure TFCadOrcamento.FormCreate(Sender: TObject);
var
 i : integer;
begin
  inherited;

  if cdsServicos.Active then // se estiver ativo...
  begin
    cdsServicos.EmptyDataSet;
    cdsServicos.Close;
  end;

  cdsServicos.FieldDefs.Clear;
  with cdsServicos.FieldDefs do
  begin
    Add('ORCSERV_CODIGO'      , ftInteger, 0);
    Add('ORC_CODIGO'          , ftInteger, 0);
    Add('ORDEM'               , ftInteger, 0);
    Add('ORCSERV_CODSERVICO'  , ftInteger, 0);
    Add('ORCSERV_QTD'         , ftFloat  , 0);
    Add('ORCSERV_VRUNITA'     , ftFloat  , 0);
    Add('ORCSERV_VRTOTAL'     , ftFloat  , 0);
    Add('ORCSERV_DESCSERVICO' , ftString ,60);
    Add('ORCSERVICOS_PRODREF' , ftString ,10);
    Add('ORCSERV_FRETE'       , ftString , 3);
  end; // fim do with.
  cdsServicos.CreateDataSet;

  cdsServicos.IndexFieldNames := 'ORCSERV_CODIGO';

  for i := 0 to (cdsServicos.Fieldcount - 1) do
  begin

    if cdsServicos.Fields[i].DataType = ftFloat then
      TCurrencyField(cdsServicos.Fields[i]).DisplayFormat := '#,##0.00'
    else if cdsServicos.Fields[i].DataType = ftDateTime then
      TCurrencyField(cdsServicos.Fields[i]).DisplayFormat := 'dd/mm/yyyy'

  end;

  cdsServicos.Open;


  //dsServico.DataSet.Open;

  if cdsPecas.Active then // se estiver ativo...
  begin
    cdsPecas.EmptyDataSet;
    cdsPecas.Close;
  end;

  cdsPecas.FieldDefs.Clear;
  with cdsPecas.FieldDefs do
  begin
    Add('ORCPECAS_CODIGO'   , ftInteger, 0);
    Add('ORDEM'             , ftInteger, 0);
    Add('ORC_CODIGO'        , ftInteger, 0);
    Add('ORCPECAS_CODPECA'  , ftInteger, 0);
    Add('ORCPECAS_QTD'      , ftFloat  , 0);
    Add('ORCPECAS_VRUNITA'  , ftFloat  , 0);
    Add('ORCPECAS_VRTOTAL'  , ftFloat  , 0);
    Add('ORCPECAS_DESCPECA' , ftString ,60);
    Add('ORCPECAS_PRODREF'  , ftString ,10);
    Add('ORCPECAS_FRETE'    , ftString , 3);
  end; // fim do with.
  cdsPecas.CreateDataSet;

  cdsPecas.IndexFieldNames := 'ORCPECAS_CODIGO';

  for i := 0 to (cdsPecas.Fieldcount - 1) do
  begin

    if cdsPecas.Fields[i].DataType = ftFloat then
      TCurrencyField(cdsPecas.Fields[i]).DisplayFormat := '#,##0.00'
    else if cdsPecas.Fields[i].DataType = ftDateTime then
      TCurrencyField(cdsPecas.Fields[i]).DisplayFormat := 'dd/mm/yyyy'

  end;

  cdsPecas.Open;
  
  if not(UPesquisaOrcamento.novo) then
  begin
    carregaPecas;
    carregaServicos;
  end;

end;

procedure TFCadOrcamento.dsServicoStateChange(Sender: TObject);
begin
  inherited;
  if dscadastro.DataSet.State in [dsInsert, dsEdit] then
  begin
    btnservicoNovo.Enabled     := not(DSServico.DataSet.State in [dsInsert, dsEdit]);
    btnservicoAlterar.Enabled  := not(DSServico.DataSet.State in [dsInsert, dsEdit]);
    btnservicoCancelar.Enabled := (DSServico.DataSet.State in [dsInsert, dsEdit]);
    btnservicoExcluir.Enabled  := not(DSServico.DataSet.State in [dsInsert, dsEdit]);
    btnservicoGravar.Enabled   := (DSServico.DataSet.State in [dsInsert, dsEdit]);

    edServicoQTD.Enabled      := (DSServico.DataSet.State in [dsInsert, dsEdit]);
    edServicoVrUnit.Enabled   := (DSServico.DataSet.State in [dsInsert, dsEdit]);
    dblServico.Enabled        := (DSServico.DataSet.State in [dsInsert, dsEdit]);
    Edit1.Enabled             := (DSServico.DataSet.State in [dsInsert, dsEdit]);
  end else begin
    btnservicoNovo.Enabled     := False;
    btnservicoAlterar.Enabled  := False;
    btnservicoCancelar.Enabled := False;
    btnservicoExcluir.Enabled  := False;
    btnservicoGravar.Enabled   := False;

    edServicoQTD.Enabled       := False;
    dblServico.Enabled         := False;
    edServicoVrUnit.Enabled    := False;
    Edit1.Enabled              := False;
  end;

end;

procedure TFCadOrcamento.dsCadastroStateChange(Sender: TObject);
begin
  inherited;
  DSServicoStateChange(sender);
  dsPecasStateChange(Sender);

end;

procedure TFCadOrcamento.dblServicoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  fun_dblookup(Key, Shift, TDBLookupComboBox(Sender));

  if key = vk_f10 then
  begin
    Application.CreateForm(TFCadProduto, FCadProduto);
    FCadProduto.ShowModal;
    FCadProduto.Free;
    fun_dblookup(vk_f5, Shift, TDBLookupComboBox(Sender));

  end;

end;

procedure TFCadOrcamento.dblServicoExit(Sender: TObject);
var
  preco : Variant;
begin
  inherited;
  if (dsCadastro.DataSet.FieldByName('ORC_CLIENTE').AsString <> '') and
     (DSServico.DataSet.FieldByName('ORCSERV_CODSERVICO').AsString <> '') then
  begin

    preco := select_1(Format(ctPesquisaPreco,  [dsCadastro.DataSet.FieldByName('ORC_CLIENTE').AsString,
                                                DSServico.DataSet.FieldByName('ORCSERV_CODSERVICO').AsString,
                                                QuotedStr('S')]));
    if preco <> null then
      DSServico.DataSet.FieldByName('ORCSERV_VRUNITA').AsFloat := preco;

  end;

  if (DSServico.DataSet.State in [dsInsert, dsEdit]) and
     (dblServico.KeyValue <> Null) then
  begin
    DSServico.DataSet.FieldByName('ORCSERV_DESCSERVICO').AsString := dblServico.text;
    Edit1.Text := dblServico.ListSource.DataSet.FieldByName('PROD_REF').AsString;
  end;

end;

procedure TFCadOrcamento.btnGravarClick(Sender: TObject);
var
  updateCliente, tipo : string;
  i : integer;
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

  Pronto := False;
  inherited;
  // Salvando os Pecas
  tbTemp.Close;
  tbTemp.TableName := 'ORCPECAS';
  tbTemp.Open;
  tbTemp.Filtered := True;
  tbTemp.Filter   := '(ORC_CODIGO = '+ dsCadastro.DataSet.FieldByName('ORC_CODIGO').AsString +')';

  while not(tbTemp.Eof) do
    tbTemp.Delete;

  cdsPecas.First;
  While not(cdsPecas.Eof)do
  begin
    tbTemp.Insert;
    for i := 0 to cdsPecas.Fields.Count -1 do
      tbTemp.FieldByName(cdsPecas.Fields[i].FieldName).AsVariant := cdsPecas.FieldByName(cdsPecas.Fields[i].FieldName).AsVariant;
    tbTemp.Post;
    cdsPecas.Next;
  end;

  //Salvando Servicos
  tbTemp.Close;
  tbTemp.TableName := 'ORCSERVICOS';
  tbTemp.Open;
  tbTemp.Filtered := True;
  tbTemp.Filter   := '(ORC_CODIGO = '+ dsCadastro.DataSet.FieldByName('ORC_CODIGO').AsString +')';

  while not(tbTemp.Eof) do
    tbTemp.Delete;

  cdsServicos.First;
  While not(cdsServicos.Eof)do
  begin
    tbTemp.Insert;
    for i := 0 to cdsServicos.Fields.Count -1 do
      tbTemp.FieldByName(cdsServicos.Fields[i].FieldName).AsVariant := cdsServicos.FieldByName(cdsServicos.Fields[i].FieldName).AsVariant;
    tbTemp.Post;
    cdsServicos.Next;
  end;

  tbtemp.Transaction.CommitRetaining;
  Pronto := True;
  // Atualizando tabela de preço com os valores dos serviços
  DSServico.DataSet.First;
  while not(DSServico.DataSet.EOF) do
  begin

    atualizaTabelaPreco(dsCadastro.DataSet.FieldByName('ORC_CLIENTE').AsInteger,
                        DSServico.DataSet.FieldByName('ORCSERV_CODSERVICO').AsInteger,
                        'S',
                        DSServico.DataSet.FieldByName('ORCSERV_VRUNITA').AsFloat);

    DSServico.DataSet.Next;

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
    '  REPRESENTATE        = %s,'#10+
    '  REP_TELEFONE        = %s,'#10+
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
                                 QuotedStr(dsCadastro.DataSet.FieldByName('ORC_REPRESENTATE').AsString),
                                 QuotedStr(dsCadastro.DataSet.FieldByName('ORC_REP_TELEFONE').AsString),
                                 dsCadastro.DataSet.FieldByName('ORC_VALIDADE').AsString,
                                 dsCadastro.DataSet.FieldByName('ORC_CLIENTE').AsString]));

  dblCliente.ListSource.DataSet.Close;
  dblCliente.ListSource.DataSet.Open;

end;

procedure TFCadOrcamento.btnNovoClick(Sender: TObject);
begin
  inherited;
  dsCadastro.DataSet.FieldByName('ORC_CODIGO').AsInteger       := Retorna_Codigo_Generetor('GEN_ORCAMENTO');
  dsCadastro.DataSet.FieldByName('ORC_PRAZOENTREGA').AsInteger := 0;
  dsCadastro.DataSet.FieldByName('ORC_VALIDADE').AsInteger     := 0;
  dsCadastro.DataSet.FieldByName('ORC_DATA').AsDateTime        := Now;
  dsCadastro.DataSet.FieldByName('ORC_SITUACAO').AsString      := 'N';
  dsCadastro.DataSet.FieldByName('ORC_EXIBEOBS').AsString      := 'S';
  lista_dos_itens_do_registro1.Clear;
  lista_dos_itens_do_registro2.Clear;
  cdsServicos.EmptyDataSet;
  cdsPecas.EmptyDataSet;
  dblCliente.SetFocus;

end;

procedure TFCadOrcamento.atualizaTabelaPreco(Cliente, codServOuPeca: integer;
  tipo: String; preco: Real);
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

function TFCadOrcamento.calculatotalpeca: real;
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

function TFCadOrcamento.calculatotalServ: real;
var
  valor : real;
begin
  inherited;

  valor := 0;

  if DSServico.DataSet.State = dsbrowse then
  begin
     DSServico.DataSet.First;

     while not(DSServico.DataSet.Eof) do
     begin

       valor := valor + DSServico.DataSet.FieldByName('ORCSERV_VRTOTAL').AsFloat;
       DSServico.DataSet.Next;

     end;
     Label20.Caption := FormatFloat('"Total dos Serviços: "#,##0.00', valor);

     result := valor;

  end;
end;

function TFCadOrcamento.carregaPecas: Real;
const
  ctPesquisaPecas =
    'SELECT'#10+
    '  *'#10+
    'FROM'#10+
    '  ORCPECAS'#10+
    'WHERE'#10+
    '  ORC_CODIGO = %s';

var
  i : integer;
  valor : Real;

begin

  if not(cdsPecas.Active) then
    exit;

  if dsCadastro.DataSet.FieldByName('ORC_CODIGO').AsString = '' then
    exit;

  valor := 0;

  QItens.Close;
  QItens.SQL.Clear;
  QItens.SQL.Add(Format(ctPesquisaPecas, [dsCadastro.DataSet.FieldByName('ORC_CODIGO').AsString]));
  QItens.Open;

  cdsPecas.EmptyDataSet;

  While not(QItens.Eof)do
  begin
    cdsPecas.Insert;
    For i := 0 to QItens.Fields.Count -1 do
      cdsPecas.FieldByName(QItens.Fields[i].FieldName).AsVariant :=
      QItens.FieldByName(QItens.Fields[i].FieldName).AsVariant;
    cdsPecas.Post;

    valor := valor + cdsPecas.FieldByName('ORCPECAS_VRTOTAL').AsFloat;

    QItens.Next;
  end;
  Result := valor;
end;

function TFCadOrcamento.carregaServicos: Real;
const
  ctPesquisaPecas =
    'SELECT'#10+
    '  *'#10+
    'FROM'#10+
    '  ORCSERVICOS'#10+
    'WHERE'#10+
    '  ORC_CODIGO = %s';

var
  i : integer;
  valor : Real;

begin

  if not(cdsServicos.Active) then
    exit;

  if dsCadastro.DataSet.FieldByName('ORC_CODIGO').AsString = '' then
    exit;
    
  valor := 0;

  QItens.Close;
  QItens.SQL.Clear;
  QItens.SQL.Add(Format(ctPesquisaPecas, [dsCadastro.DataSet.FieldByName('ORC_CODIGO').AsString]));
  QItens.Open;

  cdsServicos.EmptyDataSet;

  While not(QItens.Eof)do
  begin

    cdsServicos.Insert;
    For i := 0 to QItens.Fields.Count -1 do
      cdsServicos.FieldByName(QItens.Fields[i].FieldName).AsVariant := QItens.FieldByName(QItens.Fields[i].FieldName).AsVariant;
    cdsServicos.Post;

    valor := valor + cdsServicos.FieldByName('ORCSERV_VRTOTAL').AsFloat;
    QItens.Next;

  end;

  Result := valor;
end;

procedure TFCadOrcamento.btnpecaNovoClick(Sender: TObject);
begin
  inherited;
  dsPecas.DataSet.Insert;
  edpecasQTD.Field.AsInteger := 1;
  edpecasQTD.SetFocus;
end;

procedure TFCadOrcamento.btnpecaAlterarClick(Sender: TObject);
begin
  inherited;
  dsPecas.DataSet.Edit;
  edpecasQTD.SetFocus;
end;

procedure TFCadOrcamento.btnpecaGravarClick(Sender: TObject);
begin
  inherited;
  if edpecasQTD.Value < 1 then
  begin

    ShowMessage('A quantidade deve ser informada!');
    edServicoQTD.SetFocus;
    Exit;

  end;

  if dblpecas.KeyValue = Null then
  begin

    ShowMessage('O serviço deve ser informado!');
    dblpecas.SetFocus;
    Exit;

  end;

  if edpecasQTD.Value <= 0 then
  begin

    ShowMessage('O valor unitário deve ser informado!');
    edServicoVrUnit.SetFocus;
    exit;

  end;

  DSPecas.DataSet.FieldByName('ORCPECAS_CODIGO').AsInteger  := Retorna_Codigo_Generetor('GEN_ORCPECAS');
  DSPecas.DataSet.FieldByName('ORC_CODIGO').AsInteger       := DsCadastro.DataSet.FieldByName('ORC_CODIGO').AsInteger;
  if DSPecas.DataSet.State = dsInsert then
    DSPecas.DataSet.FieldByName('ORDEM').AsInteger            := DSPecas.DataSet.RecordCount + 1;
  DSPecas.DataSet.FieldByName('ORCPECAS_DESCPECA').AsString := dblPecas.text;
  DSPecas.DataSet.FieldByName('ORCPECAS_PRODREF').AsString  := dsPesquisaPecas.DataSet.FieldByName('PROD_REF').AsString;
  DSPecas.DataSet.FieldByName('ORCPECAS_VRTOTAL').AsFloat   := DSPecas.DataSet.FieldByName('ORCPECAS_VRUNITA').AsFloat *
  DSPecas.DataSet.FieldByName('ORCPECAS_QTD').AsInteger;
  dsPecas.DataSet.Post;
  btnpecaNovo.SetFocus;
end;

procedure TFCadOrcamento.btnpecaCancelarClick(Sender: TObject);
begin
  inherited;
  dsPecas.DataSet.Cancel;
end;

procedure TFCadOrcamento.btnpecaExcluirClick(Sender: TObject);
begin
  inherited;
  dsPecas.DataSet.Delete;
end;

procedure TFCadOrcamento.dsPecasStateChange(Sender: TObject);
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
    Edit2.Enabled           := (DSPecas.DataSet.State in [dsInsert, dsEdit]);

  end else begin
    btnpecaNovo.Enabled     := False;
    btnpecaAlterar.Enabled  := False;
    btnpecaCancelar.Enabled := False;
    btnpecaExcluir.Enabled  := False;
    btnpecaGravar.Enabled   := False;

    edpecasQTD.Enabled      := False;
    edpecasVrUnit.Enabled   := False;
    dblpecas.Enabled        := False;
    Edit2.Enabled           := False;
  end;


end;

procedure TFCadOrcamento.dblpecasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  fun_dblookup(Key, Shift, TDBLookupComboBox(Sender));
  if key = vk_f10 then
  begin
    Application.CreateForm(TFCadProduto, FCadProduto);
    FCadProduto.ShowModal;
    FCadProduto.Free;
    fun_dblookup(vk_f5, Shift, TDBLookupComboBox(Sender));

  end;

end;

procedure TFCadOrcamento.dblpecasExit(Sender: TObject);
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
  begin
    DSPecas.DataSet.FieldByName('ORCPECAS_DESCPECA').AsString := dblpecas.Text;
    Edit2.Text := dblpecas.ListSource.DataSet.FieldByName('PROD_REF').AsString;
  end;


  if DSPecas.DataSet.State in [dsEdit, dsInsert] then
  begin

    DSPecas.DataSet.FieldByName('ORCPECAS_VRTOTAL').AsFloat := DSPecas.DataSet.FieldByName('ORCPECAS_VRUNITA').AsFloat *
    DSPecas.DataSet.FieldByName('ORCPECAS_QTD').AsInteger;

  end;

end;

procedure TFCadOrcamento.edServicoVrUnitExit(Sender: TObject);
begin
  inherited;
  if dsServico.DataSet.State in [dsEdit, dsInsert] then
  begin

    DSServico.DataSet.FieldByName('ORCSERV_VRTOTAL').AsFloat      := DSServico.DataSet.FieldByName('ORCSERV_VRUNITA').AsFloat *
    DSServico.DataSet.FieldByName('ORCSERV_QTD').AsInteger;

    btnservicoGravar.SetFocus;
  end;


end;

procedure TFCadOrcamento.edpecasVrUnitExit(Sender: TObject);
begin
  inherited;

  if dsPecas.DataSet.State in [dsEdit, dsInsert] then
  begin

    DSPecas.DataSet.FieldByName('ORCPECAS_VRTOTAL').AsFloat := DSPecas.DataSet.FieldByName('ORCPECAS_VRUNITA').AsFloat *
    DSPecas.DataSet.FieldByName('ORCPECAS_QTD').AsInteger;
    btnpecaGravar.SetFocus;

  end;

end;

procedure TFCadOrcamento.btnImpRGSClick(Sender: TObject);
var
  cdsTemp : TClientDataSet;

begin
  cdsTemp := TClientDataSet.Create(Self);

  with cdsTemp.FieldDefs do
  begin
    Add('ORDEM', ftInteger,    0);
    Add('QUANT', ftInteger,    0);
    Add('TIPO', ftString,      1);
    Add('REF', ftString,      10);
    Add('FRETE', ftString,     3);
    Add('UNITARIO', ftFloat,   0);
    Add('TOTAL', ftFloat,      0);
    Add('DESCRICAO', ftString,60);
  end;

  cdsTemp.CreateDataSet;
  cdsTemp.Open;
  cdsTemp.IndexFieldNames := 'TIPO;ORDEM';

  TCurrencyField(cdsTemp.FieldByName('UNITARIO')).DisplayFormat := '#,##0.00';
  TCurrencyField(cdsTemp.FieldByName('TOTAL')).DisplayFormat    := '#,##0.00';

  DSServico.DataSet.First;
  while not(DSServico.DataSet.Eof) do
  begin

    cdsTemp.Insert;
    cdsTemp.FieldByName('QUANT').AsInteger    := DSServico.DataSet.FieldByName('ORCSERV_QTD').AsInteger;
    cdsTemp.FieldByName('ORDEM').AsInteger    := DSServico.DataSet.FieldByName('ORDEM').AsInteger;
    cdsTemp.FieldByName('FRETE').AsString     := DSServico.DataSet.FieldByName('ORCSERV_FRETE').AsString;
    cdsTemp.FieldByName('REF').AsString       := DSServico.DataSet.FieldByName('ORCSERVICOS_PRODREF').AsString;
    cdsTemp.FieldByName('TIPO').AsString      := '1';
    cdsTemp.FieldByName('DESCRICAO').AsString := DSServico.DataSet.FieldByName('ORCSERV_DESCSERVICO').AsString;
    cdsTemp.FieldByName('UNITARIO').AsFloat   := DSServico.DataSet.FieldByName('ORCSERV_VRUNITA').AsFloat;
    cdsTemp.FieldByName('TOTAL').AsFloat      := DSServico.DataSet.FieldByName('ORCSERV_VRTOTAL').AsFloat;
    cdsTemp.Post;

    DSServico.DataSet.Next;

  end;

  inherited;

  DSPecas.DataSet.First;
  while not(DSPecas.DataSet.Eof) do
  begin

    cdsTemp.Insert;
    cdsTemp.FieldByName('ORDEM').AsInteger    := DSPecas.DataSet.FieldByName('ORDEM').AsInteger;
    cdsTemp.FieldByName('QUANT').AsInteger    := DSPecas.DataSet.FieldByName('ORCPECAS_QTD').AsInteger;
    cdsTemp.FieldByName('FRETE').AsString     := DSPecas.DataSet.FieldByName('ORCPECAS_FRETE').AsString;
    cdsTemp.FieldByName('REF').AsString       := DSPecas.DataSet.FieldByName('ORCPECAS_PRODREF').AsString;
    cdsTemp.FieldByName('TIPO').AsString      := '2';
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
                             DMPesquisa.cdsEmpresa.FieldByName('UF').AsString       + ' - ' +
                             'Fone: ' + DMPesquisa.cdsEmpresa.FieldByName('FONE').AsString;
    //rlSite.Caption := 'www.prevencao-pe.com.br';
  end;
  FRelatorioOrcamento.RLReport1.Preview;
  FRelatorioOrcamento.Free;
  inherited;

end;

procedure TFCadOrcamento.Edit1Exit(Sender: TObject);
begin
  inherited;
  if dsPesquisaServico.DataSet.Locate('PROD_REF', Edit1.Text, []) then
  begin
    dblServico.KeyValue := dsPesquisaServico.DataSet.FieldByName('PROD_CODIGO').AsVariant;
    edServicoVrUnit.SetFocus;
  end;

end;

procedure TFCadOrcamento.dblClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_delete then
    TDBLookupComboBox(sender).KeyValue := null
  else if key = vk_f5 then
  begin
    if TDBLookupComboBox(sender).listSource.dataset.Active then begin
      TDBLookupComboBox(sender).listSource.dataset.close;
      TDBLookupComboBox(sender).listSource.dataset.open;
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

procedure TFCadOrcamento.Edit2Exit(Sender: TObject);
begin
  inherited;
  if dsPesquisaPecas.DataSet.Locate('PROD_REF', Edit2.Text, []) then
  begin
    dblpecas.KeyValue := dsPesquisaPecas.DataSet.FieldByName('PROD_CODIGO').AsVariant;
    edpecasVrUnit.SetFocus;
  end;
end;

procedure TFCadOrcamento.btnAprovadoClick(Sender: TObject);
begin
  inherited;
  dsCadastro.DataSet.Edit;
  dsCadastro.DataSet.FieldByName('ORC_SITUACAO').AsString      := 'S';
  dsCadastro.DataSet.Post;
  QCadastro.Transaction.CommitRetaining;

end;

procedure TFCadOrcamento.btnAlterarClick(Sender: TObject);
begin

  if dsCadastro.DataSet.FieldByName('ORC_SITUACAO').AsString = 'S' then
  begin

    ShowMessage('Orçamento aprovado, edição não permitida');
    Exit;

  end;

  inherited;

end;

procedure TFCadOrcamento.btnExcluirClick(Sender: TObject);
begin
  if dsCadastro.DataSet.FieldByName('ORC_SITUACAO').AsString = 'S' then
  begin

    ShowMessage('Orçamento aprovado, edição não permitida');
    Exit;

  end;
  inherited;

end;

procedure TFCadOrcamento.DBMemo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_return then
    DBMemo1.Lines.Add('');

end;

procedure TFCadOrcamento.btnCancelarClick(Sender: TObject);
begin
  novo := True;
  inherited;
  novo := False;

end;

procedure TFCadOrcamento.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  //inherited;

end;

procedure TFCadOrcamento.dsPecasDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if dsPecas.DataSet.State = dsBrowse then
    Edit2.Text := dblpecas.ListSource.DataSet.FieldByName('PROD_REF').AsString;
end;

procedure TFCadOrcamento.dsServicoDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if dsServico.DataSet.State = dsBrowse then
    Edit1.Text := dblServico.ListSource.DataSet.FieldByName('PROD_REF').AsString;

end;

end.
