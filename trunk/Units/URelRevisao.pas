unit URelRevisao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, URelatorio, Mask, ToolEdit, StdCtrls, DBCtrls, DB,
  IBCustomDataSet, IBQuery, ComCtrls, Buttons, ExtCtrls, RLFilters,
  RLPDFFilter;

type
  TFRelRevisao = class(TFRelatorio)
    Label8: TLabel;
    Label14: TLabel;
    edPesquisaCodigo: TEdit;
    dblPesquisaCliente: TDBLookupComboBox;
    Label9: TLabel;
    edPesquisaRevisor: TEdit;
    dsCliente: TDataSource;
    GroupBox1: TGroupBox;
    edPesquisaData: TDateEdit;
    DateEdit1: TDateEdit;
    Label2: TLabel;
    qaux: TIBQuery;
    RLPDFFilter1: TRLPDFFilter;
    rgdtExibicao: TRadioGroup;
    procedure btnConsultarClick(Sender: TObject);
    procedure dblPesquisaClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnVisualizarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    function pega_situacao(rev_codigo, ext_codigo : integer):string;
  end;

var
  FRelRevisao: TFRelRevisao;

implementation

uses UdmPesquisa, UdmGeral, UpesquisaClientes, UrelatorioRevisao;

{$R *.dfm}

procedure TFRelRevisao.btnConsultarClick(Sender: TObject);
const
  ctPesquisa =
    'SELECT'#10+
    '  REVISAO.REV_CODIGO,'#10+
    '  REVISAO.REV_REVISOR,'#10+
    '  REVISAO.REV_DATA,'#10+
    '  FABRICANTE.DESCRICAO,'#10+
    '  (CAST(CLIENTE.CODIGO AS VARCHAR(10)) || '' - '' ||CLIENTE.RAZAO_SOCIAL) AS RAZAO_SOCIAL,'#10+
    '  ITENS_REVISAO.LOCAL_EXTINTOR,'#10+
    '  ITENS_REVISAO.EXT_CODIGO,'#10+
    '  ITENS_REVISAO.CARREGADO,'#10+
    '  ITENS_REVISAO.ORDEM,'#10+
    '  ESTINTOR.ULTIMA_VISITA,'#10+
    '  ESTINTOR.CODIGO,'#10+
    '  ESTINTOR.NUMERO_SERIE,'#10+
    '  ESTINTOR.PESO_VAZIO,'#10+
    '  ESTINTOR.PESO_CHEIO,'#10+
    '  TIPO.TIPO,'#10+
    '  ESTINTOR.CAPACIDADE'#10+
    'FROM'#10+
    '  REVISAO'#10+
    '  INNER JOIN CLIENTE ON (REVISAO.CLI_CODIGO = CLIENTE.CODIGO)'#10+
    '  INNER JOIN ITENS_REVISAO ON (ITENS_REVISAO.REV_CODIGO = REVISAO.REV_CODIGO)'#10+
    '  INNER JOIN ESTINTOR ON (ITENS_REVISAO.EXT_CODIGO = ESTINTOR.CODIGO)'#10+
    '  INNER JOIN TIPO ON (TIPO.CODIGO = ESTINTOR.TIPO)'#10+
    '  INNER JOIN FABRICANTE ON (FABRICANTE.CODIGO = ESTINTOR.FABRICANTE)'#10+
    'WHERE'#10+
    '  (REVISAO.REV_CODIGO IS NOT NULL)%s'#10+
    'ORDER BY'#10+
    '  ITENS_REVISAO.ORDEM';

var
  Filtro : String;

begin



  Filtro := '';

  if dblPesquisaCliente.KeyValue <> null then
    Filtro := Filtro + ' AND(REVISAO.CLI_CODIGO = ' + VarToStr(dblPesquisaCliente.KeyValue) + ')'
  else begin

    showMessage('O Cliente precisa ser informado!');
    dblPesquisaCliente.SetFocus;
    exit;

  end;

  if edPesquisaCodigo.Text <> '' then
    Filtro := Filtro + ' AND(REVISAO.REV_CODIGO = ' + edPesquisaCodigo.Text + ')';

  if edPesquisaRevisor.Text <> '' then
    Filtro := Filtro + ' AND(REVISAO.REV_REVISOR LIKE '+ QuotedStr('%'+ edPesquisaRevisor.Text +'%') +')';

  if edPesquisaData.Date <> 0 then
    Filtro := Filtro + ' AND(REVISAO.REV_DATA = '+ QuotedStr(FormatDateTime('mm/dd/yyyy', edPesquisaData.Date)) +')';

  qPesquisa.Close;
  qPesquisa.SQL.Clear;
  qPesquisa.SQL.Add(Format(ctPesquisa, [Filtro]));
  qPesquisa.Open;

  inherited;

end;

function TFRelRevisao.pega_situacao(rev_codigo,
  ext_codigo: integer): string;
const
  ctSelectSituacao =
    'SELECT'#10+
    '  SIT_DESCRICAO'#10+
    'FROM'#10+
    '  SITUACAO_EXTINTOR'#10+
    '  INNER JOIN SITUACAO ON (SITUACAO.SIT_CODIGO = SITUACAO_EXTINTOR.SIT_CODIGO)'#10+
    'WHERE'#10+
    '  (EXT_CODIGO = %s) AND'#10+
    '  (REV_CODIGO = %s)';

var
  texto : string;
begin

  texto := '';

  qaux.Close;
  qaux.SQL.Clear;
  qaux.SQL.Add(Format(ctSelectSituacao,[IntToStr(ext_codigo),
                                        IntToStr(rev_codigo)]));
  qaux.Open;

  while not(qaux.Eof) do
  begin

    texto := texto + qaux.FieldByName('SIT_DESCRICAO').AsString + ',';
    qaux.Next;

  end;

  result := copy(texto, 1, length(texto) - 1);


end;

procedure TFRelRevisao.dblPesquisaClienteKeyDown(Sender: TObject;
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

procedure TFRelRevisao.btnVisualizarClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFUrelatorioRevisao, FUrelatorioRevisao);
  FUrelatorioRevisao.rlEmpresa.Caption        := DMPesquisa.cdsEmpresa.FieldByName('FANTASIA').AsString;
  FUrelatorioRevisao.rlComplemento.Caption    := 'Fone: ' + DMPesquisa.cdsEmpresa.FieldByName('FONE').AsString;
  FUrelatorioRevisao.rlEndereco.Caption       := DMPesquisa.cdsEmpresa.FieldByName('ENDERECO').AsString + ' - ' +
                                                 DMPesquisa.cdsEmpresa.FieldByName('BAIRRO').AsString   + ' - ' +
                                                 DMPesquisa.cdsEmpresa.FieldByName('CIDADE').AsString   + '-'   +
                                                 DMPesquisa.cdsEmpresa.FieldByName('UF').AsString;

  relatorio(FUrelatorioRevisao.RLReport1, 0);
  FUrelatorioRevisao.Free;
end;

procedure TFRelRevisao.btnImprimirClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFUrelatorioRevisao, FUrelatorioRevisao);
  relatorio(FUrelatorioRevisao.RLReport1, 1);
  FUrelatorioRevisao.Free;
end;

end.
