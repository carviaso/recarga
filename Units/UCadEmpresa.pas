unit UCadEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadastro, IBTable, DB, IBCustomDataSet, IBQuery, StdCtrls,
  Mask, ToolEdit, Grids, DBGrids, ComCtrls, Buttons, ExtCtrls, DBCtrls;

type
  TFCadEmpresa = class(TFCadastro)
    Label3: TLabel;
    DBText1: TDBText;
    Label1: TLabel;
    edRazao: TDBEdit;
    Label2: TLabel;
    edFantazia: TDBEdit;
    Label9: TLabel;
    edCnpj: TDBEdit;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edCep: TDBEdit;
    DBComboBox1: TDBComboBox;
    edBairro: TDBEdit;
    edCidade: TDBEdit;
    edEndereco: TDBEdit;
    TabSheet1: TTabSheet;
    GroupBox3: TGroupBox;
    edRgs: TDBEdit;
    rbRazao: TRadioButton;
    rbCodigo: TRadioButton;
    rbCnpj: TRadioButton;
    Label10: TLabel;
    Label11: TLabel;
    edFone: TDBEdit;
    edFax: TDBEdit;
    GroupBox4: TGroupBox;
    DBEdit1: TDBEdit;
    GroupBox5: TGroupBox;
    edRespTecnico: TDBEdit;
    edRespControleQualidade: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    edRegCrea: TDBEdit;
    Label17: TLabel;
    GroupBox7: TGroupBox;
    edRelgNV: TDBEdit;
    cbAssinar: TDBCheckBox;
    edLocalAssinatura: TDBEdit;
    Label14: TLabel;
    TabSheet2: TTabSheet;
    Label15: TLabel;
    DBEdit3: TDBEdit;
    Label16: TLabel;
    DBEdit4: TDBEdit;
    Label18: TLabel;
    DBEdit5: TDBEdit;
    DBText2: TDBText;
    Label19: TLabel;
    SpeedButton1: TSpeedButton;
    OpenDialog1: TOpenDialog;
    cdsCadastroCODIGO: TIntegerField;
    cdsCadastroRAZAO_SOCIAL: TIBStringField;
    cdsCadastroFANTASIA: TIBStringField;
    cdsCadastroCNPJ: TIBStringField;
    cdsCadastroENDERECO: TIBStringField;
    cdsCadastroBAIRRO: TIBStringField;
    cdsCadastroUF: TIBStringField;
    cdsCadastroCEP: TIBStringField;
    cdsCadastroCIDADE: TIBStringField;
    cdsCadastroFONE: TIBStringField;
    cdsCadastroFAX: TIBStringField;
    cdsCadastroEMAIL: TIBStringField;
    cdsCadastroNRGS: TIBStringField;
    cdsCadastroSENHA_MASTER: TIBStringField;
    cdsCadastroRESP_TECNICO: TIBStringField;
    cdsCadastroRESP_CONTROLE_QULIDADE: TIBStringField;
    cdsCadastroREG_CREA: TIBStringField;
    cdsCadastroLOCAL_BACKUP: TIBStringField;
    cdsCadastroLOCAL_BANCO: TIBStringField;
    cdsCadastroSERVER_NAME: TIBStringField;
    cdsCadastroNRELATORIOGNV: TIntegerField;
    cdsCadastroASSINAR_DIGITALMENTE: TIBStringField;
    cdsCadastroLOCAL_ASINATURA: TIBStringField;
    cdsCadastroDATA_BACKUP: TDateTimeField;
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure edPesquisaButtonClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dsCadastroDataChange(Sender: TObject; Field: TField);
    procedure btnGravarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadEmpresa: TFCadEmpresa;

implementation

uses UdmGeral, UFsuper, UdmPesquisa;

{$R *.dfm}

procedure TFCadEmpresa.btnNovoClick(Sender: TObject);
const
  ctCodigo = 'SELECT MAX(CODIGO) FROM EMPRESA';
begin
  if InputBox('Desbloqueio','Senha','') <> 'Fsuper' then
  begin
    alert('Procure o fabricante do sistema'#10+
          'email:fabiolindemberg@gmail.com');

    exit;
  end;

  qaux.close;
  qaux.SQL.clear;
  qaux.SQL.Add(ctCodigo);
  qaux.Open;

  inherited;
  PageControl.ActivePageIndex := 1;
  edRazao.SetFocus;
  dsCadastro.DataSet.FieldByName('CODIGO').AsInteger := qaux.Fields[0].asInteger + 1;
  qaux.Close;
end;

procedure TFCadEmpresa.btnAlterarClick(Sender: TObject);
begin
  inherited;
  PageControl.ActivePageIndex := 1;
  edRazao.SetFocus;
end;

procedure TFCadEmpresa.edPesquisaButtonClick(Sender: TObject);
begin
  if rbRazao.Checked then
    cdsCadastro.Filter := 'RAZAO_SOCIAL LIKE ''' + edPesquisa.Text + '%'''
  else if rbCodigo.Checked then
    cdsCadastro.Filter := 'CODIGO = ' + edPesquisa.Text
  else if rbCnpj.Checked then
    cdsCadastro.Filter := 'CNPJ LIKE ''' + edPesquisa.Text + '%''';

  cdsCadastro.Filtered := true;
  inherited;

end;

procedure TFCadEmpresa.btnExcluirClick(Sender: TObject);
begin
  if InputBox('Desbloqueio','Senha','') <> 'Fsuper' then
  begin
    alert('Procure o fabricante do sistema'#10+
          'email:fabiolindemberg@gmail.com'#10+
          '      fabiolindemberg@hotmail.com');

    exit;
  end;
  inherited;

end;

procedure TFCadEmpresa.FormCreate(Sender: TObject);
begin
  inherited;
  {
  try
    execDml('ALTER TABLE EMPRESA ADD NRELATORIOGNV INTEGER NOT NULL');
  except
  end;
  }
end;

procedure TFCadEmpresa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DMPesquisa.cdsEmpresa.Close;
  DMPesquisa.cdsEmpresa.Open;

end;

procedure TFCadEmpresa.dsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  edLocalAssinatura.Enabled := cbAssinar.Field.AsString = 'S';
end;

procedure TFCadEmpresa.btnGravarClick(Sender: TObject);
begin
  if Trim( edRgs.text ) = '' then
  begin
    ShowMessage('Nº RGS deve ser informado!');
    PageControl.ActivePageIndex := 2;
    if edRgs.CanFocus then
      edRgs.SetFocus;
    exit;
  end;

  if edRelgNV.Field.IsNull then
    edRelgNV.Field.AsString := '0';

  if cbAssinar.Field.AsVariant = null then
    cbAssinar.Field.AsString := 'N';

  inherited;

end;

procedure TFCadEmpresa.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if OpenDialog1.Execute then
    DBEdit4.Field.AsString := OpenDialog1.FileName;
end;

end.
