unit UCadAtestado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, UCadastro, Buttons, DBCtrls, AcquireImage, StdCtrls,
  IBTable, DB, IBCustomDataSet, IBQuery, Mask, ToolEdit, Grids, DBGrids,
  ComCtrls, ExtCtrls, CurrEdit, RXDBCtrl;

type
  TFCadAtestado = class(TFCadastro)
    ednProtocolo: TDBEdit;
    Label1: TLabel;
    aiScanearImagem: TAcquireImage;
    Panel1: TPanel;
    dsCliente: TDataSource;
    Panel2: TPanel;
    DBIMemorial1: TDBImage;
    Panel3: TPanel;
    DBIMemorial2: TDBImage;
    spbScanAtestado: TSpeedButton;
    spbScanMemorial1: TSpeedButton;
    spbScanMemorial2: TSpeedButton;
    DBIAtestado: TDBImage;
    dblCliente: TDBLookupComboBox;
    spbImprimeAtestado: TSpeedButton;
    spbImprimeMemorial1: TSpeedButton;
    spbImprimeMemorial2: TSpeedButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edPesquisaValidade: TEdit;
    dblPesquisaCliente: TDBLookupComboBox;
    Label14: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edPesquisaNProtocolo: TEdit;
    btnPesquisa: TBitBtn;
    dsPesquisa: TDataSource;
    btnRelatorio: TBitBtn;
    qauxN_PROTOCOLO: TIBStringField;
    qauxCLI_CODIGO: TIntegerField;
    qauxATESTADO: TBlobField;
    qauxMEMORIAL_1: TBlobField;
    qauxMEMORIAL_2: TBlobField;
    qauxDATA_REGISTRO: TDateTimeField;
    qauxVALIDADE: TIBStringField;
    qauxAREA_CONSTRUIDA: TFloatField;
    qauxCLIENTE: TIBStringField;
    spbScanmemorial3: TSpeedButton;
    spbImprimeMemorial3: TSpeedButton;
    spbScanTaxa: TSpeedButton;
    spbImprimeTaxa: TSpeedButton;
    Label7: TLabel;
    ednCertificado: TDBEdit;
    Label8: TLabel;
    DBText1: TDBText;
    Panel4: TPanel;
    DBiMemorial3: TDBImage;
    Panel5: TPanel;
    DBiTaxa: TDBImage;
    Label9: TLabel;
    edPesquisaCodigo: TEdit;
    qauxATESTADO_CODIGO: TIntegerField;
    qauxN_CERTIFICADO: TIBStringField;
    qauxMEMORIAL_3: TBlobField;
    qauxTAXA: TBlobField;
    RxDBCalcEdit1: TRxDBCalcEdit;
    DBEdit1: TDBEdit;
    procedure dblClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dsCadastroStateChange(Sender: TObject);
    procedure spbImprimeAtestadoClick(Sender: TObject);
    procedure DBIAtestadoKeyPress(Sender: TObject; var Key: Char);
    procedure DBIMemorial1KeyPress(Sender: TObject; var Key: Char);
    procedure DBIMemorial2KeyPress(Sender: TObject; var Key: Char);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure cdsCadastroBeforePost(DataSet: TDataSet);
    procedure btnPesquisaClick(Sender: TObject);
    procedure dbgCadastroDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
    procedure spbScanAtestadoClick(Sender: TObject);
    procedure DBIAtestadoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure spbScanMemorial1Click(Sender: TObject);
    procedure spbScanMemorial2Click(Sender: TObject);
    procedure spbScanmemorial3Click(Sender: TObject);
    procedure spbScanTaxaClick(Sender: TObject);
    procedure spbImprimeMemorial1Click(Sender: TObject);
    procedure spbImprimeMemorial2Click(Sender: TObject);
    procedure spbImprimeMemorial3Click(Sender: TObject);
    procedure spbImprimeTaxaClick(Sender: TObject);
    procedure dblPesquisaClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure Scan(dbImage : TDbImage);
    procedure Print(dbImage : TDbImage);
  public
    { Public declarations }
  end;

var
  FCadAtestado: TFCadAtestado;

implementation

uses UdmGeral, UdmPesquisa, UpesquisaClientes, UImprimeImagem,
  URelatorioAtestado, UFsuper;

{$R *.dfm}

procedure TFCadAtestado.dblClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
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

procedure TFCadAtestado.dsCadastroStateChange(Sender: TObject);
begin
  inherited;
  spbScanMemorial1.Enabled := dsCadastro.DataSet.State in [dsEdit, dsInsert];
  spbScanMemorial2.Enabled := dsCadastro.DataSet.State in [dsEdit, dsInsert];
  spbScanMemorial3.Enabled := dsCadastro.DataSet.State in [dsEdit, dsInsert];
  spbScanAtestado.Enabled  := dsCadastro.DataSet.State in [dsEdit, dsInsert];
  spbScanTaxa.Enabled      := dsCadastro.DataSet.State in [dsEdit, dsInsert];

  spbImprimeAtestado.Enabled   := not(dsCadastro.DataSet.State in [dsEdit, dsInsert]);
  spbImprimeMemorial1.Enabled  := not(dsCadastro.DataSet.State in [dsEdit, dsInsert]);
  spbImprimeMemorial2.Enabled  := not(dsCadastro.DataSet.State in [dsEdit, dsInsert]);
  spbImprimeMemorial3.Enabled  := not(dsCadastro.DataSet.State in [dsEdit, dsInsert]);
  spbImprimetaxa.Enabled       := not(dsCadastro.DataSet.State in [dsEdit, dsInsert]);
end;

procedure TFCadAtestado.spbImprimeAtestadoClick(Sender: TObject);
begin
  inherited;
  Print(DBIAtestado);
end;

procedure TFCadAtestado.DBIAtestadoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key in [#83, #115] then
    spbScanAtestado.Click;
end;

procedure TFCadAtestado.DBIMemorial1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key in [#83, #115] then
    spbScanMemorial1.Click;
end;

procedure TFCadAtestado.DBIMemorial2KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key in [#83, #115] then
    spbScanMemorial2.Click;

end;

procedure TFCadAtestado.btnNovoClick(Sender: TObject);
begin
  inherited;
  ednProtocolo.setfocus;
end;

procedure TFCadAtestado.btnAlterarClick(Sender: TObject);
begin
  inherited;
  ednProtocolo.setfocus;

end;

procedure TFCadAtestado.cdsCadastroBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ATESTADO_CODIGO').AsInteger := pegaGenerator('ATESTADO_CODIGO_GEN');
  DataSet.FieldByName('CLIENTE').AsString          := dblCliente.Text;
  DataSet.FieldByName('DATA_REGISTRO').AsDateTime  := now;
end;

procedure TFCadAtestado.btnPesquisaClick(Sender: TObject);
const
  ctPesquisa = 'SELECT * FROM ATESTADO_CLIENTE WHERE (N_PROTOCOLO IS NOT NULL) %s';

var
  Filtro : string;
begin

  if edPesquisaValidade.Text <> '' then
    Filtro := Filtro + 'AND(VALIDADE = ''' + edPesquisaValidade.Text + ''')';

  if edPesquisaNProtocolo.Text <> '' then
    Filtro := Filtro + 'AND(N_PROTOCOLO = ''' + edPesquisaNProtocolo.Text + ''')';

  if edPesquisaCodigo.Text <> '' then
    Filtro := Filtro + 'AND(ATESTADO_CODIGO = ''' + edPesquisaCodigo.Text + ''')';

  if dblPesquisaCliente.KeyValue <> null then
    Filtro := Filtro + 'AND(CLI_CODIGO = ' + VarToStr(dblPesquisaCliente.KeyValue) + ')';

  qaux.Close;
  qaux.SQL.Clear;
  qaux.SQL.Add(Format(ctPesquisa, [Filtro]));
  qaux.Open;

  inherited;

end;

procedure TFCadAtestado.dbgCadastroDblClick(Sender: TObject);
begin
  if cdsCadastro.Locate('N_PROTOCOLO', qaux.FieldByName('N_PROTOCOLO').AsString, []) then
    inherited
  else
    ShowMessage('Registro não encontrado!');

end;

procedure TFCadAtestado.FormCreate(Sender: TObject);
begin
  inherited;
  dsPesquisa.DataSet.Open;
end;

procedure TFCadAtestado.btnRelatorioClick(Sender: TObject);
begin
  Application.CreateForm(TFRelatorioAtestado, FRelatorioAtestado);
  with FRelatorioAtestado do
  begin
    // Imprimo os dados da impresa
    rlEmpresa.Caption     := DMPesquisa.cdsEmpresa.FieldByName('FANTASIA').AsString;
    rlEndereco.Caption    := DMPesquisa.cdsEmpresa.FieldByName('ENDERECO').AsString + ' - ' +
                             DMPesquisa.cdsEmpresa.FieldByName('BAIRRO').AsString   + ' - ' +
                             DMPesquisa.cdsEmpresa.FieldByName('CIDADE').AsString   + '-'   +
                             DMPesquisa.cdsEmpresa.FieldByName('UF').AsString;
    rlComplemento.Caption := 'Fone: ' + DMPesquisa.cdsEmpresa.FieldByName('FONE').AsString;

    if (edPesquisaValidade.Text <> '') then
      rlCompetencia.Caption := 'Validade: ' + edPesquisaValidade.Text
    else
      rlCompetencia.Caption := '';

    RLReport1.Preview;
    FRelatorioAtestado.Free;
  end;

end;

procedure TFCadAtestado.spbScanAtestadoClick(Sender: TObject);
begin
  Scan(DBIAtestado);
end;

procedure TFCadAtestado.DBIAtestadoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_delete then
    TDBImage(sender).Field.AsVariant := Null;
end;

procedure TFCadAtestado.Scan(dbImage: TDbImage);
var
  Jpg                    : TJpegImage;
  Flag                   : Boolean;
  S                      : string;

begin
  try

    Flag := False;
    with aiScanearImagem do
    begin
      if LoadTWainModule then
      begin
        try
          OpenSourceManager;
          S := GetSource(false);
          SelectSource(S);
          OpenSource;
          AcquireJpg(Jpg, 50);
          Flag := True;
        finally
          CloseTWainSession;
          UnloadTWainModule;
        end;
      end
      else
        MessageDlg('Erro ao carregar a biblioteca TWAIN_32.DLL', mtError, [mbOk], 0);
    end;

    dbImage.Picture.Bitmap.Assign(Jpg);

  except
    ShowMessage('Verifique o scanner e tente novamente!');
  end;

end;

procedure TFCadAtestado.spbScanMemorial1Click(Sender: TObject);
begin
  inherited;
  Scan(DBIMemorial1);
end;

procedure TFCadAtestado.spbScanMemorial2Click(Sender: TObject);
begin
  inherited;
  Scan(DBIMemorial2);
end;

procedure TFCadAtestado.spbScanmemorial3Click(Sender: TObject);
begin
  inherited;
  Scan(DBiMemorial3);
end;

procedure TFCadAtestado.spbScanTaxaClick(Sender: TObject);
begin
  inherited;
  Scan(DBiTaxa);
end;

procedure TFCadAtestado.Print(dbImage: TDbImage);
begin
  Application.CreateForm(TFImprimeImagem, FImprimeImagem);
  FImprimeImagem.RLImage1.Picture := dbImage.Picture;
  FImprimeImagem.Rlreport1.Preview;
  FImprimeImagem.Free;
end;

procedure TFCadAtestado.spbImprimeMemorial1Click(Sender: TObject);
begin
  inherited;
  Print(DBIMemorial1);
end;

procedure TFCadAtestado.spbImprimeMemorial2Click(Sender: TObject);
begin
  inherited;
  Print(DBIMemorial2);
end;

procedure TFCadAtestado.spbImprimeMemorial3Click(Sender: TObject);
begin
  inherited;
  Print(DBiMemorial3);
end;

procedure TFCadAtestado.spbImprimeTaxaClick(Sender: TObject);
begin
  inherited;
  Print(DBiTaxa);
end;

procedure TFCadAtestado.dblPesquisaClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
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
    TDBLookupComboBox(sender).KeyValue := FpesquisaClientes.QPesquisa.Fields[0].AsVariant;
    FpesquisaClientes.Free;
  end;

end;

end.
