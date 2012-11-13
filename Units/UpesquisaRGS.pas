unit UpesquisaRGS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, Mask, ToolEdit, Grids, DBGrids, DB,
  IBCustomDataSet, IBQuery, DBClient, RXDBCtrl, ComCtrls, UPai, ExtCtrls,
  RLFilters, RLPDFFilter;

type
  TFpesquisaRGS = class(TFPai)
    dbgCadastro: TDBGrid;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    edPesquisaRgs: TEdit;
    edPesquisaEntradaIni: TDateEdit;
    edPesquisaEntradaFim: TDateEdit;
    edPesquisaPrevSaidaIni: TDateEdit;
    edPesquisaPrevSaidaFim: TDateEdit;
    dblPesquisaCliente: TDBLookupComboBox;
    QPesquisa: TIBQuery;
    dsPesquisa: TDataSource;
    dsCliente: TDataSource;
    qaux: TIBQuery;
    cdsRGS1: TClientDataSet;
    QExtintor: TIBQuery;
    dsExtintorRGS2: TDataSource;
    cdsPecas: TClientDataSet;
    QRGSPecas: TIBQuery;
    Label1: TLabel;
    edPesquisaSaidaIni: TDateEdit;
    Label2: TLabel;
    edPesquisaSaidaFim: TDateEdit;
    rgSituacao: TRadioGroup;
    Panel1: TPanel;
    btnPecas: TBitBtn;
    btnRGS: TBitBtn;
    btnPesquisa: TBitBtn;
    btnFechar: TBitBtn;
    btnRelatorio: TBitBtn;
    QRelatorio: TIBQuery;
    edCompetencia: TEdit;
    Label3: TLabel;
    QTipo: TIBQuery;
    lbNreg: TLabel;
    RLPDFFilter1: TRLPDFFilter;
    procedure btnPesquisaClick(Sender: TObject);
    procedure btnRGSClick(Sender: TObject);
    procedure montaRGS1;
    procedure montaPecas;
    procedure QPesquisaAfterOpen(DataSet: TDataSet);
    procedure dbgCadastroDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnPecasClick(Sender: TObject);
    procedure dblPesquisaClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnRelatorioClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dsPesquisaDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FpesquisaRGS: TFpesquisaRGS;
  i : integer;
const
  ctCliente = 'SELECT * FROM CLIENTE WHERE CODIGO = %s';

implementation

uses UdmGeral, UdmPesquisa, URGeralServico, UFsuper, URRGSPecas,
  UpesquisaClientes, URelListaRgs;

{$R *.dfm}

procedure TFpesquisaRGS.btnPesquisaClick(Sender: TObject);
const
  ctPesquisa =
    'SELECT'#10+
    '  RECARGA.CODIGO,'#10+
    '  RECARGA.COD_REPRESENTANTE,'#10+
    '  RECARGA.RGS,'#10+
    '  CAST(RECARGA.ENTRADA AS DATE) ENTRADA,'#10+
    '  CAST(RECARGA.PREV_SAIDA AS DATE)PREV_SAIDA,'#10+
    '  RECARGA.N_CAIXA,'#10+
    '  RECARGA.CLIENTE,'#10+
    '  CLIENTE.RAZAO_SOCIAL,'#10+
    '  CAST(RECARGA.SAIDA AS DATE)SAIDA,'#10+
    '  COUNT(ITENS_RECARGA.CODIGO) AS QTD'#10+
   'FROM'#10+
    ' RECARGA'#10+
    ' LEFT JOIN CLIENTE ON (RECARGA.CLIENTE=CLIENTE.CODIGO)'#10+
    ' LEFT JOIN ITENS_RECARGA ON (RECARGA.RGS = ITENS_RECARGA.RGS)'#10+
  //' LEFT JOIN ESTINTOR ON (RGS_EXTINTOR.CODIGO_EXTINTOR = ESTINTOR.CODIGO)'#10+
    '  %s'#10+
    'GROUP BY'#10+
    '  RECARGA.CODIGO,'#10+
    '  RECARGA.COD_REPRESENTANTE,'#10+
    '  RECARGA.RGS,'#10+
    '  RECARGA.ENTRADA,'#10+
    '  RECARGA.PREV_SAIDA,'#10+
    '  RECARGA.N_CAIXA,'#10+
    '  RECARGA.CLIENTE,'#10+
    '  CLIENTE.RAZAO_SOCIAL,'#10+
    '  RECARGA.SAIDA'#10+
    'ORDER BY'#10+
    '  RECARGA.RGS';

  ctPesquisaTipo =
    'SELECT'#10+
    '  TIPO.DESCRICAO AS TIPO,'#10+
    '  ESTINTOR.CAPACIDADE,'#10+
    '  COUNT(ESTINTOR.CODIGO) AS QUANTIDADE'#10+
    'FROM'#10+
    '  ITENS_RECARGA ESTINTOR'#10+
    '  INNER JOIN TIPO ON (ESTINTOR.TIPO = TIPO.CODIGO)'#10+
//  '  INNER JOIN RGS_EXTINTOR ON (ESTINTOR.CODIGO = RGS_EXTINTOR.CODIGO_EXTINTOR)'#10+
    '  INNER JOIN RECARGA ON (ESTINTOR.RGS = RECARGA.RGS)'#10+
    '  LEFT JOIN CLIENTE ON (RECARGA.CLIENTE=CLIENTE.CODIGO)'#10+
    '  %s'#10+
    'GROUP BY'#10+
    '  TIPO.DESCRICAO,'#10+
    '  ESTINTOR.CAPACIDADE'#10+
    'ORDER BY'#10+
    '  TIPO.DESCRICAO';

var
  filtro, op :String;
begin
  filtro := '';
  op     := '';

  if edCompetencia.Text <> '' then
  begin
    filtro := '(RECARGA.COMPETENCIA = '''+ edCompetencia.Text +''')';
    op := ' AND ';
  end;

  if edPesquisaRgs.Text <> '' then
  begin
    filtro := '(RECARGA.RGS LIKE ''%'+ edPesquisaRgs.Text +'%'')';
    op := ' AND ';
  end;

  if dblPesquisaCliente.KeyValue <> null then
  begin
    filtro := filtro + op + '(RECARGA.CLIENTE = ' + VarToStr(dblPesquisaCliente.KeyValue) + ')';
    op := ' AND ';
  end;

  if edPesquisaEntradaIni.Date <> 0 then
  begin
    filtro := filtro + op + '(RECARGA.ENTRADA >= ''' + FormatDateTime('mm/dd/yyyy 0:00:00',edPesquisaEntradaIni.Date) + ''')';
    op := ' AND ';
  end;

  if edPesquisaEntradaFim.Date <> 0 then
  begin
    filtro := filtro + op + '(RECARGA.ENTRADA <= ''' + FormatDateTime('mm/dd/yyyy 23:59:59',edPesquisaEntradaFim.Date) + ''')';
    op := ' AND ';
  end;

  if edPesquisaSaidaIni.Date <> 0 then
  begin
    filtro := filtro + op + '(RECARGA.SAIDA >= ''' + FormatDateTime('mm/dd/yyyy 0:00:00',edPesquisaSaidaIni.Date) + ''')';
    op := ' AND ';
  end;

  if edPesquisaSaidaFim.Date <> 0 then
  begin
    filtro := filtro + op + '(RECARGA.SAIDA <= ''' + FormatDateTime('mm/dd/yyyy 23:59:59',edPesquisaSaidaFim.Date) + ''')';
    op := ' AND ';
  end;

  case rgSituacao.ItemIndex of
    1:begin
        filtro := filtro + op + '(RECARGA.SITUACAO <> ''B'')';
        op := ' AND ';
      end;
    2:begin
        filtro := filtro + op + '(RECARGA.SITUACAO = ''B'')';
        op := ' AND ';
      end;
  end;

  if edPesquisaPrevSaidaIni.Date <> 0 then
  begin
    filtro := filtro + op + '(RECARGA.PREV_SAIDA >= ''' + FormatDateTime('mm/dd/yyyy 0:00:00',edPesquisaPrevSaidaIni.Date) + ''')';
    op := ' AND ';
  end;

  if edPesquisaPrevSaidaFim.Date <> 0 then
    filtro := filtro + op + '(RECARGA.PREV_SAIDA <= ''' + FormatDateTime('mm/dd/yyyy 23:59:59',edPesquisaPrevSaidaFim.Date) + ''')';

  if filtro <> '' then
    filtro := 'WHERE ' + filtro;

  try

    QPesquisa.Close;
    QPesquisa.sql.Clear;
    QPesquisa.sql.Add(Format(ctPesquisa,[filtro]));
    QPesquisa.Open;
    QPesquisa.Last;

    QRelatorio.Close;
    QRelatorio.sql.Clear;
    QRelatorio.sql.Add(Format(ctPesquisa,[filtro]));
    QRelatorio.Open;

    QTipo.Close;
    QTipo.sql.Clear;
    QTipo.sql.Add(Format(ctPesquisaTipo,[filtro]));
    QTipo.Open

  except
    btnPesquisa.Click;
  end;
  inherited;


end;

procedure TFpesquisaRGS.btnRGSClick(Sender: TObject);
var
  i : integer;
begin


  if dsExtintorRGS2.DataSet.IsEmpty then
  begin
    alert('Não ha extintores para esta RGS!');
    exit;
  end;

  montaRGS1;

  QExtintor.First;

  for i := 1 to 20 do
  begin

    cdsRGS1.Insert;
    cdsRGS1.FieldByName('CODIGO').AsVariant 		        := i;
    if not(QExtintor.Eof) then
    begin

      cdsRGS1.FieldByName('CAPACIDADE').AsVariant 	    := QExtintor.FieldByName('CAPACIDADE').AsVariant;
      cdsRGS1.FieldByName('COD_FABRICANTE').AsVariant 	:= QExtintor.FieldByName('COD_FABRICANTE').AsVariant;
      cdsRGS1.FieldByName('ANO_FABRICACAO').AsVariant 	:= QExtintor.FieldByName('ANO_FABRICACAO').AsVariant;
      cdsRGS1.FieldByName('ULTIMA_VISITA').AsVariant 	  := QExtintor.FieldByName('ULTIMA_VISITA').AsVariant;
      cdsRGS1.FieldByName('NUMERO_SERIE').AsVariant 	  := QExtintor.FieldByName('NUMERO_SERIE').AsVariant;
      cdsRGS1.FieldByName('NIVEL_MANUTENCAO').AsVariant := QExtintor.FieldByName('NIVEL_MANUTENCAO').AsVariant;
      cdsRGS1.FieldByName('PINTURA').AsVariant 		      := QExtintor.FieldByName('PINTURA').AsVariant;
      cdsRGS1.FieldByName('SELO').AsVariant 		        := QExtintor.FieldByName('SELO').AsVariant;
      cdsRGS1.FieldByName('BATELADA').AsVariant 		    := QExtintor.FieldByName('BATELADA').AsVariant;
      cdsRGS1.FieldByName('OBS').AsVariant 		          := QExtintor.FieldByName('OBS').AsVariant;
      cdsRGS1.FieldByName('FECHAMENTO').AsVariant 	    := QExtintor.FieldByName('FECHAMENTO').AsVariant;
      cdsRGS1.FieldByName('TIPO').AsVariant 		        := QExtintor.FieldByName('TIPO').AsVariant;
      cdsRGS1.FieldByName('CLIENTE').AsVariant 		      := QExtintor.FieldByName('CLIENTE').AsVariant;
      cdsRGS1.FieldByName('NUMERO_PROJETO').AsVariant 	:= QExtintor.FieldByName('NUMERO_PROJETO').AsVariant;
      cdsRGS1.FieldByName('NUMERO_LACRE').AsVariant 	  := QExtintor.FieldByName('NUMERO_LACRE').AsVariant;
      cdsRGS1.FieldByName('PRESSAO_TESTE').AsVariant 	  := QExtintor.FieldByName('PRESSAO_TESTE').AsVariant;
      cdsRGS1.FieldByName('PRESSAO_TRABALHO').AsVariant := QExtintor.FieldByName('PRESSAO_TRABALHO').AsVariant;
      cdsRGS1.FieldByName('MOTIVO').AsVariant 		      := QExtintor.FieldByName('MOTIVO').AsVariant;
      cdsRGS1.FieldByName('FABRICANTE').AsVariant 	    := QExtintor.FieldByName('FABRICANTE').AsVariant;
      cdsRGS1.FieldByName('TIPO_DESC').AsVariant 		    := QExtintor.FieldByName('TIPO').AsVariant;
      cdsRGS1.FieldByName('RS').AsVariant 		          := QExtintor.FieldByName('RS').AsVariant;

      if QExtintor.FieldByName('CO2').AsString = 'S' then
        cdsRGS1.FieldByName('NBR').AsVariant := QExtintor.FieldByName('NORMA_CO2').AsVariant
      else
        cdsRGS1.FieldByName('NBR').AsVariant := QExtintor.FieldByName('NBR').AsVariant;

      if QExtintor.FieldByName('ALTA_PRESSAO').AsInteger = 1 then
      begin
        cdsRGS1.FieldByName('PESO_VAZIO').AsVariant 	    := QExtintor.FieldByName('PESO_VAZIO').AsVariant;
        cdsRGS1.FieldByName('PESO_CHEIO').AsVariant 	    := QExtintor.FieldByName('PESO_CHEIO').AsVariant;
        cdsRGS1.FieldByName('TARA').AsVariant 		        := QExtintor.FieldByName('TARA').AsVariant;
        cdsRGS1.FieldByName('ET_DIV_EP').AsVariant 		    := (QExtintor.FieldByName('EP').AsVariant /
                                                              QExtintor.FieldByName('ET').AsVariant)*100;
        cdsRGS1.FieldByName('ET_SUB_EP').AsVariant 		    := QExtintor.FieldByName('ET').AsVariant -
                                                             QExtintor.FieldByName('EP').AsVariant;
        cdsRGS1.FieldByName('RS_PERDA').AsVariant 		    := QExtintor.FieldByName('RS_PERDA').AsVariant;
        cdsRGS1.FieldByName('RS_EP_ET').AsVariant 		    := QExtintor.FieldByName('RS_EP_ET').AsVariant;
        cdsRGS1.FieldByName('PESO_CHEIO_CO2').AsVariant 	:= QExtintor.FieldByName('PESO_CHEIO_CO2').AsVariant;
        cdsRGS1.FieldByName('PESO_VAZIO_CO2').AsVariant 	:= QExtintor.FieldByName('PESO_VAZIO_CO2').AsVariant;
        cdsRGS1.FieldByName('LITROS_CO2').AsVariant 		  := QExtintor.FieldByName('LITROS_CO2').AsVariant;
        cdsRGS1.FieldByName('EP').AsVariant 		          := QExtintor.FieldByName('EP').AsVariant;
        cdsRGS1.FieldByName('ET').AsVariant 		          := QExtintor.FieldByName('ET').AsVariant;

        if cdsRGS1.FieldByName('PESO_VAZIO').IsNull then
          cdsRGS1.FieldByName('PESO_VAZIO').AsVariant 	    := QExtintor.FieldByName('PESO_VAZIO_CO2').AsVariant;

        if cdsRGS1.FieldByName('PESO_CHEIO').IsNull then
          cdsRGS1.FieldByName('PESO_CHEIO').AsVariant 	    := QExtintor.FieldByName('PESO_CHEIO_CO2').AsVariant;
      end else
        cdsRGS1.FieldByName('ET').AsVariant 		          := 0;

    end;

    cdsRGS1.Post;

    QExtintor.Next;
  end;


  Application.CreateForm(TFRGeralServico, FRGeralServico);

  // Imprimo os dados da impresa
  FRGeralServico.dsExtintorRGS.dataSet := cdsRGS1;
  FRGeralServico.rlEmpresa.Caption     := DMPesquisa.cdsEmpresa.FieldByName('FANTASIA').AsString;
  FRGeralServico.rlRespTecnico.Caption := DMPesquisa.cdsEmpresa.FieldByName('RESP_TECNICO').AsString;
  FRGeralServico.rlRespControle.Caption:= DMPesquisa.cdsEmpresa.FieldByName('RESP_CONTROLE_QULIDADE').AsString;
  FRGeralServico.rlEndereco.Caption    := DMPesquisa.cdsEmpresa.FieldByName('ENDERECO').AsString + ' - ' +
                                          DMPesquisa.cdsEmpresa.FieldByName('BAIRRO').AsString   + ' - ' +
                                          DMPesquisa.cdsEmpresa.FieldByName('CIDADE').AsString   + '-'   +
                                          DMPesquisa.cdsEmpresa.FieldByName('UF').AsString;

  FRGeralServico.rlComplemento.Caption := 'Fone: ' + DMPesquisa.cdsEmpresa.FieldByName('FONE').AsString;

  qaux.Close;
  qaux.SQL.Clear;
  qaux.SQL.Add(Format(ctCliente,[QPesquisa.FIeldByName('CLIENTE').AsString]));
  qaux.Open;

  // Imprimo os dados do cliente
  FRGeralServico.rlCliente.Caption         := 'Cliente: '  + qaux.FieldByName('RAZAO_SOCIAL').AsString;
  FRGeralServico.rlEnderecoCliente.Caption := 'Endereço: ' + qaux.FieldByName('ENDERECO').AsString;
  FRGeralServico.rlCpfCnpjCliente.Caption  := 'CPF/CNPJ: ' + qaux.FieldByName('CNPJ').AsString;
  FRGeralServico.rlBairroCliente.Caption   := 'Bairro: '   + qaux.FieldByName('BAIRRO').AsString;
  FRGeralServico.rlCidadeCliente.Caption   := 'Cidade: '   + qaux.FieldByName('CIDADE').AsString;
  FRGeralServico.rlFoneCliente.Caption     := 'Telefone: ' + qaux.FieldByName('TELEFONE_1').AsString;

  FRGeralServico.rlRGS.Caption             := QPesquisa.FIeldByName('RGS').AsString;

  if QPesquisa.FieldByName('ENTRADA').AsDateTime <> 0 then
    FRGeralServico.rlDataEntrada.Caption := FormatDateTime('dd/mm/yyyy',QPesquisa.FieldByName('ENTRADA').AsDateTime);

  if QPesquisa.FieldByName('PREV_SAIDA').AsDateTime <> 0  then
    FRGeralServico.rlDataPrevSaida.Caption := FormatDateTime('dd/mm/yyyy',QPesquisa.FieldByName('PREV_SAIDA').AsDateTime);

  if QPesquisa.FieldByName('SAIDA').AsDateTime <> 0  then
    FRGeralServico.rlDataSaida.Caption  := FormatDateTime('dd/mm/yyyy',QPesquisa.FieldByName('SAIDA').AsDateTime);

  FRGeralServico.rlncaixa.Caption          := QPesquisa.FIeldByName('N_CAIXA').AsString;
  FRGeralServico.rlRepresentante.Caption   := 'REP: ' + QPesquisa.FIeldByName('COD_REPRESENTANTE').AsString;

  FRGeralServico.RLReport1.Preview;
  FRGeralServico.Free;
  DMPesquisa.cdsCliente.Filtered := False;
  inherited;

end;

procedure TFpesquisaRGS.montaRGS1;
begin

  if cdsRGS1.Active then
  begin
    cdsRGS1.Open;
    cdsRGS1.EmptyDataSet;
    cdsRGS1.Close;
  end;

  cdsRGS1.FieldDefs.Clear;

  with cdsRGS1.FieldDefs do
  begin
    Add('CODIGO'          ,ftInteger , 0);
    Add('CAPACIDADE'      ,ftInteger , 0);
    Add('COD_FABRICANTE'  ,ftInteger , 0);
    Add('ANO_FABRICACAO'  ,ftString  , 4);
    Add('ULTIMA_VISITA'   ,ftString  , 4);
    Add('NUMERO_SERIE'    ,ftString  ,10);
    Add('NIVEL_MANUTENCAO',ftInteger , 0);
    Add('PINTURA'         ,ftString  , 1);
    Add('SELO'            ,ftString  ,10);
    Add('BATELADA'        ,ftInteger , 0);
    Add('NBR'             ,ftInteger , 0);
    Add('OBS'             ,ftString  ,20);
    Add('FECHAMENTO'      ,ftString  ,10);
    Add('TIPO'            ,ftString  , 4);
    Add('PESO_VAZIO'      ,ftFloat   , 0);
    Add('PESO_CHEIO'      ,ftFloat   , 0);
    Add('PESO_VAZIO_CO2'  ,ftFloat   , 0);
    Add('PESO_CHEIO_CO2'  ,ftFloat   , 0);
    Add('TARA'            ,ftFloat   , 0);
    Add('ET'              ,ftFloat   , 0);
    Add('EP'              ,ftFloat   , 0);
    Add('CLIENTE'         ,ftString  ,20);
    Add('NUMERO_PROJETO'  ,ftString , 20);
    Add('NUMERO_LACRE'    ,ftInteger , 0);
    Add('PRESSAO_TESTE'   ,ftFloat   , 0);
    Add('PRESSAO_TRABALHO',ftFloat   , 0);
    Add('LITROS_CO2'      ,ftFloat   , 0);
    Add('MOTIVO'          ,ftString  ,20);
    Add('ET_DIV_EP'       ,ftFloat   , 0);
    Add('ET_SUB_EP'       ,ftFloat   , 0);
    Add('RS'              ,ftString  , 2);
    Add('RS_PERDA'        ,ftFloat   , 0);
    Add('RS_EP_ET'        ,ftFloat   , 0);
    Add('FABRICANTE'      ,ftString , 20);
    Add('TIPO_DESC'       ,ftString  , 3);
    Add('CB'              ,ftString  , 4);
    Add('AR'              ,ftString  , 4);
  end;

  cdsRGS1.CreateDataSet;
  cdsRGS1.IndexFieldNames := 'CODIGO';
  cdsRGS1.Open;

end;

procedure TFpesquisaRGS.QPesquisaAfterOpen(DataSet: TDataSet);
begin
  dsExtintorRGS2.DataSet.Open;
  QRGSPecas.Open;
end;

procedure TFpesquisaRGS.dbgCadastroDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if dbgCadastro.DataSource.DataSet.RecNo mod 2 = 0 then
    dbgCadastro.Canvas.Brush.Color := clMoneyGreen
  else
    dbgCadastro.Canvas.Brush.Color := clWhite;

  dbgCadastro.Canvas.Font.Color := clBlack;
  dbgCadastro.DefaultDrawDataCell( Rect, Column.Field, State);

end;

procedure TFpesquisaRGS.btnPecasClick(Sender: TObject);
var
  nserie : Integer;
  caracter : string;

begin

  if QRGSPecas.IsEmpty then
  begin
    alert('Não ha extintores para esta RGS!');
    exit;
  end;

  montaPecas;

  QRGSPecas.First;

  for i := 1 to 20 do
  begin

    cdsPecas.Insert;
    cdsPecas.FieldByName('SEQ').AsVariant := I;
    if not(QRGSPecas.Eof) then
    begin

      cdsPecas.FieldByName('CODIGO').AsVariant 		      := QRGSPecas.FieldByName('CODIGO').AsVariant;;
      nserie := QRGSPecas.FieldByName('CODIGO').AsInteger;
      cdsPecas.FieldByName('CAPACIDADE').AsVariant 	    := QRGSPecas.FieldByName('CAPACIDADE').AsVariant;
      cdsPecas.FieldByName('ANO_FABRICACAO').AsVariant 	:= QRGSPecas.FieldByName('ANO_FABRICACAO').AsVariant;
      cdsPecas.FieldByName('ULTIMA_VISITA').AsVariant 	:= QRGSPecas.FieldByName('ULTIMA_VISITA').AsVariant;
      cdsPecas.FieldByName('NUMERO_SERIE').AsVariant 	  := QRGSPecas.FieldByName('NUMERO_SERIE').AsVariant;
      cdsPecas.FieldByName('TIPO').AsVariant 		        := QRGSPecas.FieldByName('TIPO').AsVariant;
      cdsPecas.FieldByName('CLIENTE').AsVariant 		    := QRGSPecas.FieldByName('CLIENTE').AsVariant;
      cdsPecas.FieldByName('NUMERO_PROJETO').AsVariant 	:= QRGSPecas.FieldByName('NUMERO_PROJETO').AsVariant;
      cdsPecas.FieldByName('FABRICANTE').AsVariant 	    := QRGSPecas.FieldByName('FABRICANTE').AsVariant;
      cdsPecas.FieldByName('TIPO_DESC').AsVariant 		  := QRGSPecas.FieldByName('TIPO').AsVariant;

      if QExtintor.FieldByName('CO2').AsString = 'S' then
        cdsPecas.FieldByName('NBR').AsVariant := QExtintor.FieldByName('NORMA_CO2').AsVariant
      else
        cdsPecas.FieldByName('NBR').AsVariant := QRGSPecas.FieldByName('NBR').AsVariant;

      while (nserie = QRGSPecas.FieldByName('CODIGO').AsInteger) and not(QRGSPecas.Eof) do
      begin
        if cdsPecas.FieldByName('PECAS').AsString <> '' then
          caracter := ', '
        else
          caracter := '';

        cdsPecas.FieldByName('PECAS').AsString := cdsPecas.FieldByName('PECAS').AsString + caracter + QRGSPecas.FieldByName('PECA').AsString;
        QRGSPecas.Next;
      end;
      nserie := QRGSPecas.FieldByName('CODIGO').AsVariant;

    end;

    cdsPecas.Post;

    //QRGSPecas.Next;
  end;


  Application.CreateForm(TFRRGSPecas, FRRGSPecas);

  // Imprimo os dados da impresa
  FRRGSPecas.dsRelatorio.dataSet      := cdsPecas;
  FRRGSPecas.rlEmpresa.Caption        := DMPesquisa.cdsEmpresa.FieldByName('FANTASIA').AsString;
  FRRGSPecas.rlRespTecnico.Caption    := DMPesquisa.cdsEmpresa.FieldByName('RESP_TECNICO').AsString;
  FRRGSPecas.rlRespControle.Caption   := DMPesquisa.cdsEmpresa.FieldByName('RESP_CONTROLE_QULIDADE').AsString;
  FRRGSPecas.rlEndereco.Caption       := DMPesquisa.cdsEmpresa.FieldByName('ENDERECO').AsString + ' - ' +
                                         DMPesquisa.cdsEmpresa.FieldByName('BAIRRO').AsString   + ' - ' +
                                         DMPesquisa.cdsEmpresa.FieldByName('CIDADE').AsString   + '-'   +
                                         DMPesquisa.cdsEmpresa.FieldByName('UF').AsString;

  FRRGSPecas.rlComplemento.Caption := 'Fone: ' + DMPesquisa.cdsEmpresa.FieldByName('FONE').AsString;

  qaux.Close;
  qaux.SQL.Clear;
  qaux.SQL.Add(Format(ctCliente,[QPesquisa.FIeldByName('CLIENTE').AsString]));
  qaux.Open;

  // Imprimo os dados do cliente
  FRRGSPecas.rlCliente.Caption         := 'Cliente: '  + qaux.FieldByName('RAZAO_SOCIAL').AsString;
  FRRGSPecas.rlEnderecoCliente.Caption := 'Endereço: ' + qaux.FieldByName('ENDERECO').AsString;
  FRRGSPecas.rlCpfCnpjCliente.Caption  := 'CPF/CNPJ: ' + qaux.FieldByName('CNPJ').AsString;
  FRRGSPecas.rlBairroCliente.Caption   := 'Bairro: '   + qaux.FieldByName('BAIRRO').AsString;
  FRRGSPecas.rlCidadeCliente.Caption   := 'Cidade: '   + qaux.FieldByName('CIDADE').AsString;
  FRRGSPecas.rlFoneCliente.Caption     := 'Telefone: ' + qaux.FieldByName('TELEFONE_1').AsString;

  FRRGSPecas.rlRGS.Caption             := QPesquisa.FIeldByName('RGS').AsString;
  if QPesquisa.FieldByName('ENTRADA').AsDateTime <> 0 then
    FRRGSPecas.rlDataEntrada.Caption := FormatDateTime('dd/mm/yyyy',QPesquisa.FieldByName('ENTRADA').AsDateTime);

  if QPesquisa.FieldByName('PREV_SAIDA').AsDateTime <> 0  then
    FRRGSPecas.rlDataPrevSaida.Caption := FormatDateTime('dd/mm/yyyy',QPesquisa.FieldByName('PREV_SAIDA').AsDateTime);

  if QPesquisa.FieldByName('SAIDA').AsDateTime <> 0  then
    FRRGSPecas.rlDataSaida.Caption := FormatDateTime('dd/mm/yyyy',QPesquisa.FieldByName('SAIDA').AsDateTime);

  FRRGSPecas.rlncaixa.Caption          := QPesquisa.FIeldByName('N_CAIXA').AsString;
  FRRGSPecas.rlRepresentante.Caption   := 'REP: ' + QPesquisa.FIeldByName('COD_REPRESENTANTE').AsString;

  FRRGSPecas.RLReport1.Preview;
  FRRGSPecas.Free;
  DMPesquisa.cdsCliente.Filtered := False;
  inherited;


end;

procedure TFpesquisaRGS.montaPecas;
begin
  if cdsPecas.Active then
  begin
    cdsPecas.Open;
    cdsPecas.EmptyDataSet;
    cdsPecas.Close;
  end;

  cdsPecas.FieldDefs.Clear;

  with cdsPecas.FieldDefs do
  begin
    Add('SEQ'          ,ftInteger , 0);
    Add('CODIGO'          ,ftInteger , 0);
    Add('CAPACIDADE'      ,ftInteger , 0);
    Add('COD_FABRICANTE'  ,ftInteger , 0);
    Add('ANO_FABRICACAO'  ,ftString  , 4);
    Add('ULTIMA_VISITA'   ,ftString  , 4);
    Add('NUMERO_SERIE'    ,ftString  ,10);
    Add('NBR'             ,ftInteger , 0);
    Add('TIPO'            ,ftString  , 4);
    Add('CLIENTE'         ,ftString  ,20);
    Add('NUMERO_PROJETO'  ,ftString , 20);
    Add('FABRICANTE'      ,ftString , 20);
    Add('TIPO_DESC'       ,ftString  , 3);
    Add('PECAS'           ,ftString  , 100);
  end;

  cdsPecas.CreateDataSet;
  cdsPecas.IndexFieldNames := 'SEQ';
  cdsPecas.Open;

end;

procedure TFpesquisaRGS.dblPesquisaClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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
    TDBLookupComboBox(sender).KeyValue := FpesquisaClientes.QPesquisa.Fields[0].AsVariant;
    FpesquisaClientes.Free;
  end;

end;

procedure TFpesquisaRGS.btnRelatorioClick(Sender: TObject);
begin
  inherited;

  if QRelatorio.IsEmpty then
  begin

    ShowMessage('Não ha itens a serem listados!');
    exit;

  end;

  Application.CreateForm(TFRelListaRgs, FRelListaRgs);

  with FRelListaRgs do
  begin
    // Imprimo os dados da impresa
    rlEmpresa.Caption     := DMPesquisa.cdsEmpresa.FieldByName('FANTASIA').AsString;
    rlEndereco.Caption    := DMPesquisa.cdsEmpresa.FieldByName('ENDERECO').AsString + ' - ' +
                             DMPesquisa.cdsEmpresa.FieldByName('BAIRRO').AsString   + ' - ' +
                             DMPesquisa.cdsEmpresa.FieldByName('CIDADE').AsString   + '-'   +
                             DMPesquisa.cdsEmpresa.FieldByName('UF').AsString;
    rlComplemento.Caption := 'Fone: ' + DMPesquisa.cdsEmpresa.FieldByName('FONE').AsString;

    if (edPesquisaEntradaIni.Date <> 0) or (edPesquisaEntradaFim.Date <> 0) then
      RLDataEntrada.Caption := 'Data de Lançamento: ' + edPesquisaEntradaIni.Text + ' à ' + edPesquisaEntradaFim.Text
    else
      RLDataEntrada.Caption := '';

    RLReport1.Preview;
    FRelListaRgs.Free;
  end;

end;

procedure TFpesquisaRGS.FormShow(Sender: TObject);
begin
  inherited;
  edPesquisaRgs.SetFocus;
end;

procedure TFpesquisaRGS.dsPesquisaDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  lbNreg.Caption := 'Quantidade de RGS: ' + IntToStr(dsPesquisa.DataSet.RecordCount);

end;

end.
