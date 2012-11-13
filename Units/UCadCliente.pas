unit UCadCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr, StdCtrls,
  Mask, ToolEdit, Grids, DBGrids, ComCtrls, Buttons, ExtCtrls, DBCtrls,
  IBTable, IBCustomDataSet, IBQuery;

type
  TFCadCliente = class(TFCadastro)
    Label1: TLabel;
    edRazao: TDBEdit;
    Label2: TLabel;
    edFantasia: TDBEdit;
    Label3: TLabel;
    DBText1: TDBText;
    Label9: TLabel;
    edCnpj: TDBEdit;
    Label10: TLabel;
    edInsc: TDBEdit;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    edCep: TDBEdit;
    Label5: TLabel;
    edUF: TDBComboBox;
    Label6: TLabel;
    edBairro: TDBEdit;
    Label7: TLabel;
    edCidade: TDBEdit;
    Label8: TLabel;
    edEndereco: TDBEdit;
    rbRazao: TRadioButton;
    rbCodigo: TRadioButton;
    rbCnpj: TRadioButton;
    cbClienteGNV: TDBCheckBox;
    Label19: TLabel;
    edFone: TDBEdit;
    Label21: TLabel;
    edFax: TDBEdit;
    edContato: TDBEdit;
    Label16: TLabel;
    Label18: TLabel;
    edEmail: TDBEdit;
    cdsCadastroCODIGO: TIntegerField;
    cdsCadastroRAZAO_SOCIAL: TIBStringField;
    cdsCadastroENDERECO: TIBStringField;
    cdsCadastroBAIRRO: TIBStringField;
    cdsCadastroCIDADE: TIBStringField;
    cdsCadastroUF: TIBStringField;
    cdsCadastroCEP: TIBStringField;
    cdsCadastroTELEFONE: TIBStringField;
    cdsCadastroTLX: TIBStringField;
    cdsCadastroCNPJ: TIBStringField;
    cdsCadastroINSC_ESTADUAL: TIBStringField;
    cdsCadastroINSC_SUB: TIBStringField;
    cdsCadastroDIRETOR: TIBStringField;
    cdsCadastroSTATUS: TIBStringField;
    cdsCadastroDATA: TDateTimeField;
    cdsCadastroTABELA: TIBStringField;
    cdsCadastroVENDEDOR: TIntegerField;
    cdsCadastroUDATA: TDateTimeField;
    cdsCadastroUNF: TIBStringField;
    cdsCadastroUVALOR: TFloatField;
    cdsCadastroTIPO: TIBStringField;
    cdsCadastroTRASPORTADORA: TIntegerField;
    cdsCadastroFRETE: TFloatField;
    cdsCadastroVALOR: TFloatField;
    cdsCadastroPESO: TFloatField;
    cdsCadastroOBSERVACAO: TIBStringField;
    cdsCadastroENTREGA: TIBStringField;
    cdsCadastroEND_COBRANCA: TIBStringField;
    cdsCadastroCIDADE_COBRACA: TIBStringField;
    cdsCadastroUF_COBRANCA: TIBStringField;
    cdsCadastroCEP_COBRANCA: TIBStringField;
    cdsCadastroCOMICAO: TFloatField;
    cdsCadastroCREDITO: TFloatField;
    cdsCadastroTELEFONE_1: TIBStringField;
    cdsCadastroTELEFONE_2: TIBStringField;
    cdsCadastroCONTATO: TIBStringField;
    cdsCadastroEMAIL: TIBStringField;
    cdsCadastroFANTAZIA: TIBStringField;
    cdsCadastroEXIBIR_EM_GNV: TIBStringField;
    cdsCadastroULTIMA_CONDPAGTO: TIBStringField;
    cdsCadastroULTIMO_PRAZOENTREGA: TIntegerField;
    cdsCadastroULTIMO_VALIDADE: TIntegerField;
    cdsCadastroCLI_AREA: TFloatField;
    cdsCadastroREPRESENTATE: TIBStringField;
    cdsCadastroREP_TELEFONE: TIBStringField;
    procedure btnNovoClick(Sender: TObject);
    procedure edCepKeyPress(Sender: TObject; var Key: Char);
    procedure btnAlterarClick(Sender: TObject);
    procedure edPesquisaButtonClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edRazaoExit(Sender: TObject);
    procedure cdsCadastroAfterOpen(DataSet: TDataSet);
    procedure edCnpjKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadCliente: TFCadCliente;

const
  CNPJ ='99.999.999/9999-99;0;_';
  inscEstadual ='99.9.999.9999999-9;0;_';
  CEP = '99999-999;0';

implementation

uses UdmGeral, UFsuper, UdmPesquisa;

{$R *.dfm}

procedure TFCadCliente.btnNovoClick(Sender: TObject);
const
  ctCodigo = 'SELECT MAX(CODIGO) FROM CLIENTE';
begin

  qaux.close;
  qaux.SQL.clear;
  qaux.SQL.Add(ctCodigo);
  qaux.Open;

  inherited;
  edRazao.SetFocus;
  dsCadastro.DataSet.FieldByName('CODIGO').AsInteger       := qaux.Fields[0].asInteger + 1;
  dsCadastro.DataSet.FieldByName('EXIBIR_EM_GNV').AsString := 'N';
  qaux.Close;
end;

procedure TFCadCliente.edCepKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not(key in['0'..'9',#8])then
    key := #0;
end;

procedure TFCadCliente.btnAlterarClick(Sender: TObject);
begin
  inherited;
  edRazao.SetFocus;
end;

procedure TFCadCliente.edPesquisaButtonClick(Sender: TObject);
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

procedure TFCadCliente.btnGravarClick(Sender: TObject);
begin

  if edRazao.Text = '' then
  begin

    alert('A razão social deve ser informada');
    edRazao.SetFocus;
    exit;

  end;

  if trim(edCnpj.Text) = '' then
  begin

    alert('O CNPJ deve ser informado!');
    edCnpj.SetFocus;
    Exit;

  end;

  inherited;

end;

procedure TFCadCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DMPesquisa.cdsCliente.Close;
  DMPesquisa.cdsCliente.Open;
  DMPesquisa.QClienteGNV.Close;
  DMPesquisa.QClienteGNV.Open;
  DMPesquisa.QClientesComExtintor.Close;
  DMPesquisa.QClientesComExtintor.Open;


end;

procedure TFCadCliente.edRazaoExit(Sender: TObject);
begin
  inherited;

  if (dsCadastro.DataSet.State in [dsInsert, dsEdit])and
     (edFantasia.Field.AsString = '') then
    edFantasia.Field.AsString := edRazao.Text;

end;

procedure TFCadCliente.cdsCadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;

  //TCurrencyField(dsCadastro.DataSet.FieldByName('CNPJ')).EditMask := CNPJ;
  //TCurrencyField(dsCadastro.DataSet.FieldByName('CEP')).EditMask  := CEP;
  //TCurrencyField(dsCadastro.DataSet.FieldByName('CNPJ')).EditMask := CNPJ;

end;

procedure TFCadCliente.edCnpjKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not( key in['0'..'9',#8] )then
    key := #0;
end;

end.
