unit UCadastroCilindro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadastro, DBCtrls, StdCtrls, IBTable, DB, IBCustomDataSet,
  IBQuery, Mask, ToolEdit, Grids, DBGrids, ComCtrls, Buttons, ExtCtrls,
  RLReport, RLFilters, RLPDFFilter, jpeg, CurrEdit, RXDBCtrl, RLXLSFilter, Math;

type
  TFCadastroCilindro = class(TFCadastro)
    Label4: TLabel;
    Label5: TLabel;
    edVeiculo: TDBEdit;
    edPlaca: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    edNCilindro: TDBEdit;
    edFabricante: TDBEdit;
    edNorma: TDBEdit;
    edCapacidade: TDBEdit;
    edTipoGas: TDBEdit;
    dblFabricante: TDBLookupComboBox;
    GroupBox2: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label15: TLabel;
    Label16: TLabel;
    edSelo: TDBEdit;
    Label17: TLabel;
    Label18: TLabel;
    edNC: TDBEdit;
    GroupBox3: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    edPressao: TDBEdit;
    edET: TDBEdit;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    Bevel9: TBevel;
    Label21: TLabel;
    edEP: TDBEdit;
    Label22: TLabel;
    edETEP: TDBEdit;
    Label23: TLabel;
    edEE: TDBEdit;
    Label24: TLabel;
    Label25: TLabel;
    dsFabricante: TDataSource;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLMemo1: TRLMemo;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    RLLabel1: TRLLabel;
    RLDraw5: TRLDraw;
    rlProprietario: TRLLabel;
    lbFonePropri: TRLLabel;
    lbCpfCnpj: TRLLabel;
    RLLabel5: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel7: TRLLabel;
    RLDraw6: TRLDraw;
    RLDraw7: TRLDraw;
    RLDraw8: TRLDraw;
    RLDraw9: TRLDraw;
    RLDraw10: TRLDraw;
    RLDraw12: TRLDraw;
    RLDraw14: TRLDraw;
    RLDraw11: TRLDraw;
    RLDraw15: TRLDraw;
    RLDraw16: TRLDraw;
    RLDraw17: TRLDraw;
    RLDraw18: TRLDraw;
    RLDraw19: TRLDraw;
    RLDraw20: TRLDraw;
    RLDraw21: TRLDraw;
    RLDraw13: TRLDraw;
    RLDraw22: TRLDraw;
    RLDraw23: TRLDraw;
    RLDraw24: TRLDraw;
    RLDraw25: TRLDraw;
    RLDraw26: TRLDraw;
    RLDraw27: TRLDraw;
    RLDraw28: TRLDraw;
    RLDraw29: TRLDraw;
    RLDraw30: TRLDraw;
    RLDraw31: TRLDraw;
    RLLabel8: TRLLabel;
    RLDraw32: TRLDraw;
    RLDraw33: TRLDraw;
    RLDraw34: TRLDraw;
    RLDraw35: TRLDraw;
    RLDraw36: TRLDraw;
    RLDraw37: TRLDraw;
    RLDraw38: TRLDraw;
    RLDraw39: TRLDraw;
    RLDraw40: TRLDraw;
    RLDraw41: TRLDraw;
    RLDraw42: TRLDraw;
    RLDraw43: TRLDraw;
    RLDraw44: TRLDraw;
    RLDraw45: TRLDraw;
    RLDraw46: TRLDraw;
    RLDraw47: TRLDraw;
    RLDraw48: TRLDraw;
    mmTexto2: TRLMemo;
    RLMemo3: TRLMemo;
    RLDraw49: TRLDraw;
    RLDraw50: TRLDraw;
    RLDraw51: TRLDraw;
    RLDraw52: TRLDraw;
    RLDraw53: TRLDraw;
    RLDraw54: TRLDraw;
    RLDraw55: TRLDraw;
    RLDraw56: TRLDraw;
    RLLabel9: TRLLabel;
    RLMemo4: TRLMemo;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel31: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBText24: TRLDBText;
    rlSelo2: TRLDBText;
    rlEmpresa: TRLLabel;
    rlEndereco: TRLLabel;
    rlComplemento: TRLLabel;
    btnImprimir: TBitBtn;
    Label26: TLabel;
    edPesNCilindro: TEdit;
    edPesSelo: TEdit;
    Label27: TLabel;
    Label28: TLabel;
    BitBtn1: TBitBtn;
    RLPDFFilter1: TRLPDFFilter;
    RLDBText26: TRLDBText;
    RLDBText27: TRLDBText;
    RLLabel41: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel43: TRLLabel;
    RLLabel44: TRLLabel;
    RLLabel45: TRLLabel;
    rlRespTecnico: TRLLabel;
    rlCrea: TRLLabel;
    rlTexto1: TRLLabel;
    pnImpressao: TPanel;
    reObservacao2: TRichEdit;
    edObservacao1: TEdit;
    BitBtn2: TBitBtn;
    btnOk: TBitBtn;
    rliLimiteRosca: TRLImage;
    rliRosca: TRLImage;
    rliCorrosao: TRLImage;
    rlCorrosao: TRLLabel;
    cbLimeteRosca: TCheckBox;
    cbCorrosao: TCheckBox;
    cbRosca: TCheckBox;
    cbxRosca: TDBComboBox;
    cbxInterna: TDBComboBox;
    cbxMotivoReprovacao: TDBComboBox;
    cbxResultado: TDBComboBox;
    edTara: TRxDBCalcEdit;
    rbProprietario: TRadioButton;
    RadioButton2: TRadioButton;
    dsTipoRelCilindro: TDataSource;
    Label29: TLabel;
    Label30: TLabel;
    edPesoVazio: TRxDBCalcEdit;
    RLXLSFilter1: TRLXLSFilter;
    RLDBText29: TRLDBText;
    RLLabel2: TRLLabel;
    RLLabel4: TRLLabel;
    Label33: TLabel;
    edNRelatorio: TDBEdit;
    Label34: TLabel;
    edData: TDBDateEdit;
    RLDraw57: TRLDraw;
    edPerda: TDBEdit;
    dblCliente: TDBLookupComboBox;
    dsCliente: TDataSource;
    Label2: TLabel;
    RLDraw58: TRLDraw;
    lbRazao: TRLLabel;
    lbCnpj: TRLLabel;
    lbFone: TRLLabel;
    Label1: TLabel;
    dblTipoRelCilindro: TDBLookupComboBox;
    RLLabel50: TRLLabel;
    RLDraw59: TRLDraw;
    lbEndereco: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel46: TRLLabel;
    cdsCadastroCODIGO_CILINDRO: TIntegerField;
    cdsCadastroNUMERO_CILINDRO: TIBStringField;
    cdsCadastroPROPRIETARIO: TIBStringField;
    cdsCadastroVEICULO: TIBStringField;
    cdsCadastroNORMA: TIBStringField;
    cdsCadastroCAPACIDADE: TFloatField;
    cdsCadastroTARA: TFloatField;
    cdsCadastroFABRICANTE: TIntegerField;
    cdsCadastroTIPO_GAS: TIBStringField;
    cdsCadastroMASSA: TFloatField;
    cdsCadastroPERDA: TFloatField;
    cdsCadastroPRESSAO: TFloatField;
    cdsCadastroET: TFloatField;
    cdsCadastroEP: TFloatField;
    cdsCadastroET_EP: TFloatField;
    cdsCadastroEE: TFloatField;
    cdsCadastroMOTIVO_REPROVACAO: TIBStringField;
    cdsCadastroOBS: TIBStringField;
    cdsCadastroFONE: TIBStringField;
    cdsCadastroCPF_CNPJ: TIBStringField;
    cdsCadastroPLACA: TIBStringField;
    cdsCadastroPESO_VAZIO: TFloatField;
    cdsCadastroSELO: TIBStringField;
    cdsCadastroNC: TIntegerField;
    cdsCadastroRESULTADO: TIBStringField;
    cdsCadastroDATA: TDateTimeField;
    cdsCadastroNUMERO_RELATORIO: TIBStringField;
    cdsCadastroINTERNA: TIBStringField;
    cdsCadastroROSCA: TIBStringField;
    cdsCadastroDATA_FABRICACAO: TIBStringField;
    cdsCadastroENDERECO: TIBStringField;
    cdsCadastroCOD_TIPO_REL_CILINDRO: TIntegerField;
    cdsCadastroCLIENTE: TIntegerField;
    rliSelo: TRLImage;
    Label3: TLabel;
    edPesquisaNRelatorio: TEdit;
    dblPesquisaCliente: TDBLookupComboBox;
    RLImage1: TRLImage;
    RLLabel47: TRLLabel;
    procedure edFoneKeyPress(Sender: TObject; var Key: Char);
    procedure cdsCadastroBeforePost(DataSet: TDataSet);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure edFabricanteExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RLDBText22BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure btnOkClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rliLimiteRoscaBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure rliCorrosaoBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure rlCorrosaoBeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure rliRoscaBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rlSelo2BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure btnGravarClick(Sender: TObject);
    procedure dblTipoRelCilindroExit(Sender: TObject);
    procedure dblTipoRelCilindroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxRoscaExit(Sender: TObject);
    procedure cbxInternaExit(Sender: TObject);
    procedure cbxMotivoReprovacaoKeyPress(Sender: TObject; var Key: Char);
    procedure cbxMotivoReprovacaoExit(Sender: TObject);
    procedure RLDBText11BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLDBText26BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure edDataExit(Sender: TObject);
    procedure RLDBText14BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLLabel3BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure dblClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rliSeloBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure dblPesquisaClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RLImage1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    function percaMassa(massa, tara : real):Boolean;
  public
    { Public declarations }
  end;

var
  FCadastroCilindro: TFCadastroCilindro;

implementation

uses UdmGeral, UdmPesquisa, UFsuper, UpesquisaClientes;

{$R *.dfm}

procedure TFCadastroCilindro.edFoneKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;

  if not(key in['0'..'9',#8]) then
    key := #0;

end;

procedure TFCadastroCilindro.cdsCadastroBeforePost(DataSet: TDataSet);
begin

  inherited;

  if DataSet.State = dsinsert then
  begin
    DataSet.FieldByName('CODIGO_CILINDRO').AsInteger := pegaGenerator('CILINDRO_CODIGO_CILINDRO_GEN');
    DataSet.FieldByName('TIPO_GAS').AsString         := 'GNV';
  end;

  DataSet.FieldByName('PROPRIETARIO').AsString     := dblCliente.text;

end;

procedure TFCadastroCilindro.btnNovoClick(Sender: TObject);
begin

  inherited;

  edData.SetFocus;
  edNorma.Field.AsString       := 'ISO4705';
  edPressao.Field.AsString     := '300';
  cdsCadastro.FieldByName('DATA').AsDateTime := Now;
  edNRelatorio.Field.AsString := DMPesquisa.cdsEmpresa.FieldByName('NRELATORIOGNV').AsString + '/' +
                                 FormatDateTime('yyyy', Now);
end;

procedure TFCadastroCilindro.btnAlterarClick(Sender: TObject);
begin
  inherited;
  edData.SetFocus;

end;

procedure TFCadastroCilindro.edFabricanteExit(Sender: TObject);
begin
  inherited;

  if Length(trim(TDBEdit(sender).Field.AsString)) = 2 then
  begin

    if copy(trim(TDBEdit(sender).Field.AsString),1,1) = '0' then
      TDBEdit(sender).Field.AsString := '20' + trim(TDBEdit(sender).Field.AsString)
    else if (copy(trim(TDBEdit(sender).Field.AsString),1,1) = '6') or
            (copy(trim(TDBEdit(sender).Field.AsString),1,1) = '7') or
            (copy(trim(TDBEdit(sender).Field.AsString),1,1) = '8') or
            (copy(trim(TDBEdit(sender).Field.AsString),1,1) = '9') then
      TDBEdit(sender).Field.AsString := '19' + trim(TDBEdit(sender).Field.AsString)
    else
      TDBEdit(sender).Field.AsString := '20' + trim(TDBEdit(sender).Field.AsString);

  end;

end;

procedure TFCadastroCilindro.BitBtn1Click(Sender: TObject);
var
  Filtro : string;

begin

  if dblPesquisaCliente.KeyValue <> null then
    Filtro := '(PROPRIETARIO = ''' + dblPesquisaCliente.Text + ''')';

  if edPesNCilindro.Text <> '' then
    Filtro := '(NUMERO_CILINDRO = '+ edPesNCilindro.Text +')';

  if edPesquisaNRelatorio.Text <> '' then
    Filtro := '(NUMERO_RELATORIO = '''+ edPesquisaNRelatorio.Text +''')';

  if edPesSelo.Text <> '' then
    Filtro := '(SELO = '+ edPesSelo.Text +')';

  cdsCadastro.Filtered := False;
  cdsCadastro.Filter   := Filtro;
  cdsCadastro.Filtered := True;
  
  inherited;

end;

procedure TFCadastroCilindro.RLDBText22BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
  inherited;

  if Text = 'C' then
    Text := 'APROVADO'
  else
    Text := 'REPROVADO';

end;

procedure TFCadastroCilindro.btnOkClick(Sender: TObject);
begin
  inherited;

  // Imprimo os dados da impresa
  cdsCadastro.Filtered := True;

  cdsCadastro.Filter   := 'CODIGO_CILINDRO = ' + cdsCadastroCODIGO_CILINDRO.AsString;

  rlEmpresa.Caption     := DMPesquisa.cdsEmpresa.FieldByName('FANTASIA').AsString;
  rlEndereco.Caption    := DMPesquisa.cdsEmpresa.FieldByName('ENDERECO').AsString + ' - ' +
                           DMPesquisa.cdsEmpresa.FieldByName('BAIRRO').AsString   + ' - ' +
                           DMPesquisa.cdsEmpresa.FieldByName('CIDADE').AsString   + '-'   +
                           DMPesquisa.cdsEmpresa.FieldByName('UF').AsString;
  rlComplemento.Caption := 'Fone: ' + DMPesquisa.cdsEmpresa.FieldByName('FONE').AsString;
  rlRespTecnico.Caption := DMPesquisa.cdsEmpresa.FieldByName('RESP_TECNICO').AsString;
  rlcrea.Caption        := DMPesquisa.cdsEmpresa.FieldByName('REG_CREA').AsString;

  if rbProprietario.Checked then
  begin

    rlProprietario.Caption := 'Proprietário: ' + dsCliente.DataSet.FieldByName('RAZAO_SOCIAL').AsString;
    lbCpfCnpj.Caption      := 'CPF/CNPJ: ' + dsCliente.DataSet.FieldByName('CPF_CNPJ').AsString;
    lbFonePropri.Caption   := 'Fone: ' + dsCliente.DataSet.FieldByName('FONE').AsString;

    lbRazao.Caption    := 'Razão Social: _________________________________________________________';
    lbCnpj.Caption     := 'CNPJ: _____________________';
    lbEndereco.Caption := 'Endereço: ____________________________________________________________________________________________________________';
    lbFone.Caption     := 'Fone: _____________';

  end else begin

    lbRazao.Caption    := 'Razão Social: ' + dsCliente.DataSet.FieldByName('RAZAO_SOCIAL').AsString;
    lbCnpj.Caption     := 'CPF/CNPJ: ' + dsCliente.DataSet.FieldByName('CPF_CNPJ').AsString;
    lbEndereco.Caption := 'Endereço: ' + dsCliente.DataSet.FieldByName('ENDERECO').AsString;
    lbFone.Caption     := 'Fone: ' + dsCliente.DataSet.FieldByName('FONE').AsString;

    rlProprietario.Caption := 'Proprietário: ______________________________________________________';
    lbCpfCnpj.Caption      := 'CPF: ___________________';
    lbFonePropri.Caption   := 'Fone: ___________________';

  end;

  rlTexto1.Caption := edObservacao1.Text;

  mmTexto2.Lines := reObservacao2.Lines;

  RlReport1.Preview;

  cdsCadastro.Filtered := False;
  cdsCadastro.Filter   := '';

  pnImpressao.Visible := false;
end;

procedure TFCadastroCilindro.BitBtn2Click(Sender: TObject);
begin
  inherited;
  pnImpressao.Visible := false;
  cdsCadastro.Cancel;

end;

procedure TFCadastroCilindro.btnImprimirClick(Sender: TObject);
begin
  inherited;
  pnImpressao.Left := 8;
  pnImpressao.Top  := 8;
  PageControl.ActivePageIndex := 1;
  pnImpressao.Visible := True;

  if dblTipoRelCilindro.KeyValue <> null then
    dblTipoRelCilindroExit(sender);
end;

procedure TFCadastroCilindro.FormCreate(Sender: TObject);
begin
  inherited;
  DMPesquisa.cdsEmpresa.Close;
  DMPesquisa.cdsEmpresa.Open;
end;

procedure TFCadastroCilindro.rliLimiteRoscaBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
  PrintIt := cbLimeteRosca.Checked;
end;

procedure TFCadastroCilindro.rliCorrosaoBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
  PrintIt := cbCorrosao.Checked;
end;

procedure TFCadastroCilindro.rlCorrosaoBeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
  inherited;
  PrintIt := cbCorrosao.Checked;

end;

procedure TFCadastroCilindro.rliRoscaBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
  PrintIt := cbRosca.Checked;

end;

procedure TFCadastroCilindro.rlSelo2BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
  inherited;
  PrintIt := dsCadastro.DataSet.FieldByName('RESULTADO').AsString = 'C';
end;

function TFCadastroCilindro.percaMassa(massa, tara: real):Boolean;
var
  valor : real;
begin

  valor := (1 - (massa/tara))* 100;

  EdPerda.Field.AsFloat := Valor;

  edETEP.Field.AsFloat  := SimpleRoundTo((edEP.Field.AsFloat / edET.Field.AsFloat)*100);
  edEE.Field.AsFloat    := SimpleRoundTo(edET.Field.AsFloat - edEP.Field.AsFloat);

  result := valor <= 5;

  if cbxMotivoReprovacao.Text <> '' then
    Result := False;

end;

procedure TFCadastroCilindro.btnGravarClick(Sender: TObject);
begin

  if edVeiculo.Text = '' then
    edVeiculo.Text := ' ';

  if dblCliente.KeyValue = null then
  begin

    Showmessage('O proprietário / oficina deve ser informado!');
    dblCliente.SetFocus;
    Exit;

  end;


  if edNCilindro.Text = '' then
  begin

    ShowMessage('O número do cilindro deve ser informado!');
    edNCilindro.SetFocus;
    Exit;

  end;

  if edCapacidade.text = '' then
  begin

    ShowMessage('A capacidade deve ser informada');
    edCapacidade.SetFocus;
    Exit;

  end;

  if edTAra.Text = '' then
  begin

    ShowMessage('A tara deve ser informada!');
    edTara.SetFocus;
    Exit;

  end;

  if dblFabricante.KeyValue = null then
  begin

    ShowMessage('O fabricante deve ser informado!');
    dblFabricante.SetFocus;
    Exit;

  end;

  if edPressao.Text = '' then
  begin

    ShowMessage('A pressão deve ser informada!');
    edPressao.SetFocus;
    Exit;

  end;

  if dblTipoRelCilindro.KeyValue = null then
  begin
  
    showMessage('O Modelo deve ser informado!');
    dblTipoRelCilindro.SetFocus;
    Exit;

  end;

  // Testes
  if (edPesoVazio.Field.AsString <> '') and
     (edTara.Field.AsString <> '')and
     (edPesoVazio.Field.AsString <> '') and
     (edET.Field.AsString <> '') and
     (edEP.Field.AsString <> '')then
  begin

    if not(percaMassa(edPesoVazio.Value, edTara.Value)) then
    begin
      cbxMotivoReprovacao.ItemIndex := 2;
      dsCadastro.DataSet.FieldByName('RESULTADO').AsString := 'NC';
    end else
      dsCadastro.DataSet.FieldByName('RESULTADO').AsString := 'C';

  end;

  inherited;

  execDml('UPDATE EMPRESA SET NRELATORIOGNV = 1 + NRELATORIOGNV');
  DMPesquisa.cdsEmpresa.Close;
  DMPesquisa.cdsEmpresa.Open;
end;

procedure TFCadastroCilindro.dblTipoRelCilindroExit(Sender: TObject);
var
  data : string;
begin
  inherited;

  cbLimeteRosca.Checked := dsTipoRelCilindro.DataSet.FieldByName('LIMITE_ROSCA').AsString = 'S';
  cbCorrosao.Checked    := dsTipoRelCilindro.DataSet.FieldByName('CORROSAO').AsString = 'S';
  cbRosca.Checked       := dsTipoRelCilindro.DataSet.FieldByName('ROSCA').AsString = 'S';

  edObservacao1.Text    := dsTipoRelCilindro.DataSet.FieldByName('OBS1').AsString;

  if trim(dsTipoRelCilindro.DataSet.FieldByName('REPROVADO').AsString) = 'C' then
  begin
    data := FormatDateTime('mmmm "de" yyyy', incMonth(cdsCadastroDATA.AsDateTime, 60));
    reObservacao2.Text    := Format(dsTipoRelCilindro.DataSet.FieldByName('OBS2').AsString, [data]);
  end else
    reObservacao2.Text    := dsTipoRelCilindro.DataSet.FieldByName('OBS2').AsString;


  if cdsCadastro.State in[dsInsert, dsEdit] then
  begin
    cdsCadastroRESULTADO.AsString := dsTipoRelCilindro.DataSet.FieldByName('REPROVADO').AsString;
    cdsCadastroMOTIVO_REPROVACAO.AsString := dsTipoRelCilindro.DataSet.FieldByName('MOTIVO_REPROVACAO').AsString;
  end;

end;

procedure TFCadastroCilindro.dblTipoRelCilindroKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = vk_delete then
    TDBLookupComboBox(sender).KeyValue := null
  else if key = vk_f5 then
  begin
    TDBLookupComboBox(sender).ListSource.DataSet.Close;
    TDBLookupComboBox(sender).ListSource.DataSet.Open;
  end;
end;

procedure TFCadastroCilindro.cbxRoscaExit(Sender: TObject);
begin
  inherited;

  if cbxRosca.Field.AsString = '' then
    cbxRosca.Field.AsString := 'C';

end;

procedure TFCadastroCilindro.cbxInternaExit(Sender: TObject);
begin
  inherited;
  if cbxInterna.Field.AsString = '' then
    cbxInterna.Field.AsString := 'C';
end;

procedure TFCadastroCilindro.cbxMotivoReprovacaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  Key := #0;
end;

procedure TFCadastroCilindro.cbxMotivoReprovacaoExit(Sender: TObject);
begin
  inherited;
  if cbxMotivoReprovacao.Text <> '' then
    cbxResultado.Field.AsString := 'NC';
end;

procedure TFCadastroCilindro.RLDBText11BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
  inherited;
  Text := dblFabricante.Text;
end;

procedure TFCadastroCilindro.RLDBText26BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
  inherited;
  Text := 'Data: ' + FormatDateTime('dd/mm/yyyy',RLDBText26.Field.AsDateTime);
end;

procedure TFCadastroCilindro.edDataExit(Sender: TObject);
begin
  inherited;
  if edData.Field.AsDateTime = 0 then
    edData.Field.AsDateTime := now;

end;

procedure TFCadastroCilindro.RLDBText14BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
  inherited;
  Text := FormatFloat('0.00#####',RLDBText14.Field.AsFloat);
end;

procedure TFCadastroCilindro.RLLabel3BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
  inherited;
  Text := dsCadastro.DataSet.FieldByName('ROSCA').AsString;
end;

procedure TFCadastroCilindro.dblClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_delete then
    TDBLookupComboBox(sender).KeyValue := null
  else if key = vk_f5 then
  begin
    if TDBLookupComboBox(sender).listSource.dataset.Active then begin
      TDBLookupComboBox(sender).ListSource.DataSet.close;
      TDBLookupComboBox(sender).ListSource.DataSet.Open;
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
  inherited;


end;

procedure TFCadastroCilindro.rliSeloBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
  PrintIt := dsCadastro.DataSet.FieldByName('RESULTADO').AsString = 'C';

end;

procedure TFCadastroCilindro.dblPesquisaClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_delete then
    TDBLookupComboBox(sender).KeyValue := null
  else if key = vk_f5 then
  begin
    if TDBLookupComboBox(sender).listSource.dataset.Active then begin
      TDBLookupComboBox(sender).ListSource.DataSet.close;
      TDBLookupComboBox(sender).ListSource.DataSet.Open;
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
  inherited;

end;

procedure TFCadastroCilindro.RLImage1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;

  PrintIt := DMPesquisa.cdsEmpresa.FieldByName('ASSINAR_DIGITALMENTE').AsString = 'S';
  if PrintIt then
    RLImage1.Picture.LoadFromFile(DMPesquisa.cdsEmpresa.FieldByName('LOCAL_ASINATURA').AsString);


end;

end.
