unit UpesquisaRelGeraldeServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, ComCtrls, ExtCtrls, DB,
  IBCustomDataSet, IBQuery, Grids, DBGrids, UPai, RLFilters, RLPDFFilter;

type
  TFpesquisaRelGeraldeServico = class(TFPai)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    Label1: TLabel;
    dblCliente: TDBLookupComboBox;
    Label2: TLabel;
    edRGS: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Qpesquisa: TIBQuery;
    rbEtiqueta: TRadioButton;
    rbListagem: TRadioButton;
    dsCliente: TDataSource;
    DBGrid1: TDBGrid;
    dsPesquisa: TDataSource;
    edExtintor: TEdit;
    Label3: TLabel;
    edCodExtintor: TEdit;
    Label4: TLabel;
    QpesquisaDESCRICAO: TIBStringField;
    QpesquisaRAZAO_SOCIAL: TIBStringField;
    QpesquisaENTRADA: TDateTimeField;
    QpesquisaPREV_SAIDA: TDateTimeField;
    QpesquisaSAIDA: TDateTimeField;
    QpesquisaRGS: TIBStringField;
    QpesquisaCODIGO: TIntegerField;
    QpesquisaCAPACIDADE: TIntegerField;
    QpesquisaANO_FABRICACAO: TIBStringField;
    QpesquisaULTIMA_VISITA: TIBStringField;
    QpesquisaNUMERO_SERIE: TIBStringField;
    QpesquisaNIVEL_MANUTENCAO: TIntegerField;
    QpesquisaSELO: TIBStringField;
    QpesquisaTIPO: TIBStringField;
    QpesquisaNBR: TIntegerField;
    QpesquisaPESO_VAZIO: TFloatField;
    QpesquisaDATA_TESTE: TDateTimeField;
    QpesquisaPESO_CHEIO: TFloatField;
    QpesquisaTARA: TFloatField;
    QpesquisaOBS: TIBStringField;
    QpesquisaNUMERO_PROJETO: TIBStringField;
    QpesquisaNUMERO_LACRE: TIntegerField;
    rbEtiquetaResum: TRadioButton;
    RadioButton1: TRadioButton;
    RLPDFFilter1: TRLPDFFilter;
    rgExibeSelo: TRadioGroup;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure edClienteKeyPress(Sender: TObject; var Key: Char);
    procedure QpesquisaAfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure dblClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FpesquisaRelGeraldeServico: TFpesquisaRelGeraldeServico;

implementation

uses UdmGeral, UdmPesquisa,  URelatorioGeralServico,
  UFsuper, UpesquisaClientes, URelatorioEtiquetaResumida,
  URelatorioEtiqueta, URelatorioEtiquetaCBarras, URelatorioEtiquetaTermica;

{$R *.dfm}

procedure TFpesquisaRelGeraldeServico.BitBtn1Click(Sender: TObject);
const
  ctPesquisa =
    'SELECT'#10+
    '  FABRICANTE.DESCRICAO,'#10+
    '  CLIENTE.RAZAO_SOCIAL,'#10+
    '  RECARGA.ENTRADA,'#10+
    '  RECARGA.PREV_SAIDA,'#10+
    '  RECARGA.SAIDA,'#10+
    '  RECARGA.RGS,'#10+
    '  ESTINTOR.CODIGO,'#10+
    '  ESTINTOR.CAPACIDADE,'#10+
    '  ESTINTOR.ANO_FABRICACAO,'#10+
    '  ESTINTOR.ULTIMA_VISITA,'#10+
    '  ESTINTOR.NUMERO_SERIE,'#10+
    '  ESTINTOR.NIVEL_MANUTENCAO,'#10+
    '  ESTINTOR.SELO,'#10+
    '  TIPO.TIPO,'#10+
    '  TIPO.NBR,'#10+
    '  ESTINTOR.PESO_VAZIO,'#10+
    '  ESTINTOR.DATA_TESTE,'#10+
    '  ESTINTOR.PESO_CHEIO,'#10+
    '  ESTINTOR.TARA,'#10+
    '  ESTINTOR.OBS,'#10+
    '  ESTINTOR.NUMERO_PROJETO,'#10+
    '  ESTINTOR.NUMERO_LACRE'#10+
    'FROM'#10+
    '  ITENS_RECARGA ESTINTOR'#10+
//  '  INNER JOIN RGS_EXTINTOR ON (RGS_EXTINTOR.CODIGO_EXTINTOR=ESTINTOR.CODIGO)'#10+
    '  INNER JOIN RECARGA ON (ESTINTOR.RGS = RECARGA.RGS)'#10+
    '  INNER JOIN FABRICANTE ON (ESTINTOR.FABRICANTE=FABRICANTE.CODIGO)'#10+
    '  INNER JOIN CLIENTE ON (ESTINTOR.CLIENTE=CLIENTE.CODIGO)'#10+
    '  INNER JOIN TIPO ON (ESTINTOR.TIPO=TIPO.CODIGO)'#10+
    'WHERE'#10+
    '  (RECARGA.CLIENTE IS NOT NULL)%s'#10+
    'ORDER BY'#10+
    '  RECARGA.RGS,'#10+
    '  ESTINTOR.NUMERO_SERIE';
var
  filtro : string;
begin

  if (dblCliente.KeyValue = null) and
     (edRGS.Text = '') and
     (edCodExtintor.Text = '') then
  begin
    alert('Nenhum RGS ou cliente foi informado!');
    exit;
  end;

  filtro := '';
  if dblCliente.KeyValue <> null then
    filtro := 'AND(RECARGA.CLIENTE = ' + VarToStr(dblCliente.KeyValue) + ')';

  if edExtintor.Text <> '' then
    filtro := filtro + 'AND(ESTINTOR.NUMERO_SERIE = ''' + edExtintor.Text + ''')';

  if edCodExtintor.Text <> '' then
    filtro := filtro + 'AND(ESTINTOR.CODIGO = ' + edCodExtintor.Text + ')';

  if edRGS.Text <> '' then
    filtro := filtro + 'AND(RECARGA.RGS LIKE ''%' + edRGS.Text + '%'')';


  Qpesquisa.Close;
  Qpesquisa.SQl.Clear;
  Qpesquisa.SQL.Add(Format(ctPesquisa,[filtro]));
  Qpesquisa.Open;

end;

procedure TFpesquisaRelGeraldeServico.BitBtn2Click(Sender: TObject);
begin
  if rbEtiqueta.Checked then
  begin
    Application.CreateForm(TFRelatorioEtiqueta, FRelatorioEtiqueta);
    with FRelatorioEtiqueta do
    begin
      FRelatorioEtiqueta.rlEmpresa.Caption     := DMPesquisa.cdsEmpresa.FieldByName('FANTASIA').AsString;
      FRelatorioEtiqueta.rlEndereco.Caption    := DMPesquisa.cdsEmpresa.FieldByName('ENDERECO').AsString + ' - ' +
                                                  DMPesquisa.cdsEmpresa.FieldByName('BAIRRO').AsString   + ' - ' +
                                                  DMPesquisa.cdsEmpresa.FieldByName('CIDADE').AsString   + '-'   +
                                                  DMPesquisa.cdsEmpresa.FieldByName('UF').AsString;

      FRelatorioEtiqueta.rlComplemento.Caption := 'Fone: ' + DMPesquisa.cdsEmpresa.FieldByName('FONE').AsString;
      QuickRep1.Preview;
    end;
    FRelatorioEtiqueta.Free;
  end else if rbListagem.Checked then
  begin
    Application.CreateForm(TFRelatorioGeralServico, FRelatorioGeralServico);
    with FRelatorioGeralServico do
    begin
      FRelatorioGeralServico.rlEmpresa.Caption     := DMPesquisa.cdsEmpresa.FieldByName('FANTASIA').AsString;
      FRelatorioGeralServico.rlEndereco.Caption    := DMPesquisa.cdsEmpresa.FieldByName('ENDERECO').AsString + ' - ' +
                                                      DMPesquisa.cdsEmpresa.FieldByName('BAIRRO').AsString   + ' - ' +
                                                      DMPesquisa.cdsEmpresa.FieldByName('CIDADE').AsString   + '-'   +
                                                      DMPesquisa.cdsEmpresa.FieldByName('UF').AsString;

      FRelatorioGeralServico.rlComplemento.Caption := 'Fone: ' + DMPesquisa.cdsEmpresa.FieldByName('FONE').AsString;
      //QuickRep1.Preview;
      RLReport1.Preview;
    end;
    FRelatorioGeralServico.Free;
  end else if rbEtiquetaResum.Checked then
  begin
    {
    Application.CreateForm(TFRelatorioEtiquetaResumida, FRelatorioEtiquetaResumida);
    FRelatorioEtiquetaResumida.QuickRep1.Preview;
    FRelatorioEtiquetaResumida.Free;
    }
    Application.CreateForm(TFRelatorioEtiquetaTermica, FRelatorioEtiquetaTermica);
    FRelatorioEtiquetaTermica.QuickRep1.Preview;
    FRelatorioEtiquetaTermica.Free;

  end else if RadioButton1.Checked then begin
    Application.CreateForm(TFRelatorioEtiquetaCBarras, FRelatorioEtiquetaCBarras);
    FRelatorioEtiquetaCBarras.RLReport1.preview;
    FRelatorioEtiquetaCBarras.Free;
  end;

end;

procedure TFpesquisaRelGeraldeServico.edClienteKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(key in['0'..'9',#8])then
    key := #0;
end;

procedure TFpesquisaRelGeraldeServico.QpesquisaAfterOpen(
  DataSet: TDataSet);
begin
  Qpesquisa.Last;
  Qpesquisa.First;
  StatusBar1.Panels[0].Text := IntToStr(Qpesquisa.RecordCount);

end;

procedure TFpesquisaRelGeraldeServico.FormCreate(Sender: TObject);
begin
  dsCliente.DataSet.Close;
  dsCliente.DataSet.Open;


  inherited;

end;

procedure TFpesquisaRelGeraldeServico.dblClienteKeyDown(Sender: TObject;
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
    if TDBLookupComboBox(sender).KeyValue = null then
      showMessage('Não ha extintores cadastrados para esse cliente!');
    FpesquisaClientes.Free;
  end;

end;

end.
