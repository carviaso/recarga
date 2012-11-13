unit URelatorioOrcamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLRichText, RLReport, DB, jpeg;

type
  TFRelatorioOrcamento = class(TForm)
    RLReport1: TRLReport;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLMemo1: TRLMemo;
    RLGroup1: TRLGroup;
    RLBand1: TRLBand;
    RLBand3: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLBand4: TRLBand;
    RLDBResult1: TRLDBResult;
    dsRelatorio: TDataSource;
    RLBand6: TRLBand;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLMemo2: TRLMemo;
    RLLabel17: TRLLabel;
    RLBand5: TRLBand;
    RLLabel6: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLDBText10: TRLDBText;
    RLLabel5: TRLLabel;
    RLLabel18: TRLLabel;
    RLImage1: TRLImage;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLLabel19: TRLLabel;
    RLMemo3: TRLMemo;
    RLMemo4: TRLMemo;
    RLDBMemo1: TRLDBMemo;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLDBText16: TRLDBText;
    rlEmpresa: TRLLabel;
    RLBand7: TRLBand;
    rlEndereco: TRLLabel;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLLabel14: TRLLabel;
    RLDBText19: TRLDBText;
    RLLabel15: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel12: TRLLabel;
    procedure RLLabel2BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLLabel17BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLDBText10BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLDBResult2BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLLabel7BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLLabel8BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLLabel9BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLDBText1BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLDBText11BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLDBText15BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLDBText14BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLLabel23BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLDBText7BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLLabel22BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLDBText3BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLLabel20BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLMemo3BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLMemo4BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelatorioOrcamento: TFRelatorioOrcamento;
  desc_dos_totais : string;
  Total : Real;
  cont  : integer;

implementation

uses UcadOrcamento;

{$R *.dfm}

procedure TFRelatorioOrcamento.RLLabel2BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin

  if dsRelatorio.DataSet.FieldByName('TIPO').AsString = '1' then
  begin
    Text := 'DESCRIÇÃO DOS SERVIÇOS';
    desc_dos_totais := 'TOTAL SERVIÇOS';
  end else begin
    Text := 'DESCRIÇÃO DAS PECAS';
    desc_dos_totais := 'TOTAL PEÇAS';
  end;
end;

procedure TFRelatorioOrcamento.RLLabel17BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
  Text := FormatDateTime('"Recife, "dd" de "mmmm" de "yyyy', now);
end;

procedure TFRelatorioOrcamento.RLDBText10BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin

  Text := desc_dos_totais;


end;

procedure TFRelatorioOrcamento.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  Total := Total + dsRelatorio.DataSet.FieldByName('TOTAL').AsFloat;
end;

procedure TFRelatorioOrcamento.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  Total := 0;
  cont  := 0;
end;

procedure TFRelatorioOrcamento.RLDBResult2BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
  Text := FormatFloat('#,##0.00', Total);
end;

procedure TFRelatorioOrcamento.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inc(cont);
end;

procedure TFRelatorioOrcamento.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := cont > 1;

end;

procedure TFRelatorioOrcamento.RLLabel7BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
  if FCadOrcamento.dsCadastro.DataSet.FieldByName('ORC_INFOBOMBEIRO').AsInteger = 1 then
    Text := 'Atestado de Regularidade Junto ao Corpo de Bombeiros - Área: ' +
            FormatFloat('0"m²"', FCadOrcamento.dsCadastro.DataSet.FieldByName('ORC_AREA').AsFloat) + ' ' +
            FormatFloat('"R$ " #,##0.00', FCadOrcamento.dsCadastro.DataSet.FieldByName('ORC_VRTAXA').AsFloat +
                                          FCadOrcamento.dsCadastro.DataSet.FieldByName('ORC_VRDESPACHO').AsFloat)

  else if FCadOrcamento.dsCadastro.DataSet.FieldByName('ORC_INFOBOMBEIRO').AsInteger = 2 then
    Text := 'Atestado de Regularidade Junto ao Corpo de Bombeiros - Área: ' +
            FormatFloat('0"m²"', FCadOrcamento.dsCadastro.DataSet.FieldByName('ORC_AREA').AsFloat);

  PrintIt := FCadOrcamento.dsCadastro.DataSet.FieldByName('ORC_INFOBOMBEIRO').AsInteger <> 0;


end;

procedure TFRelatorioOrcamento.RLLabel8BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
  PrintIt := FCadOrcamento.dsCadastro.DataSet.FieldByName('ORC_INFOBOMBEIRO').AsInteger = 2;
  Text    := FormatFloat('"TAXA: R$ " #,##0.00', FCadOrcamento.dsCadastro.DataSet.FieldByName('ORC_VRTAXA').AsFloat);
end;

procedure TFRelatorioOrcamento.RLLabel9BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
  PrintIt := FCadOrcamento.dsCadastro.DataSet.FieldByName('ORC_INFOBOMBEIRO').AsInteger = 2;
  Text    := FormatFloat('"DESPACHO: R$ " #,##0.00', FCadOrcamento.dsCadastro.DataSet.FieldByName('ORC_VRDESPACHO').AsFloat);
end;

procedure TFRelatorioOrcamento.RLDBText1BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin  {
  Text := 'ORÇAMENTO: ' +
          FormatFloat('000000',RLDBText1.Field.AsInteger) +
          FormatDateTime('"/"yyyy', FCadOrcamento.dsCadastro.DataSet.FieldByName('ORC_DATA').AsDateTime) }

end;

procedure TFRelatorioOrcamento.RLDBText11BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
  Text := 'End: ' + FCadOrcamento.dsCliente.DataSet.FieldByName('ENDERECO').AsString + ', ' +
          FCadOrcamento.dsCliente.DataSet.FieldByName('BAIRRO').AsString + ', ' +
          FCadOrcamento.dsCliente.DataSet.FieldByName('CIDADE').AsString;
end;

procedure TFRelatorioOrcamento.RLDBText15BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
  Text := 'Validade da Proposta: ' + FCadOrcamento.dsCadastro.DataSet.FieldByName('ORC_VALIDADE').AsString + ' Dias';

end;

procedure TFRelatorioOrcamento.RLDBText14BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
  Text := 'Prazo de Entrega: ' + FCadOrcamento.dsCadastro.DataSet.FieldByName('ORC_PRAZOENTREGA').AsString + ' Dias';

end;

procedure TFRelatorioOrcamento.RLLabel23BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
  Text := 'Frete: ' + FCadOrcamento.dsCadastro.DataSet.FieldByName('ORC_FRETE').AsString
end;

procedure TFRelatorioOrcamento.RLDBText7BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
  if RLDBText7.DataSource.DataSet.FieldByName('FRETE').AsString <> '' then
    Text := Text + '(' + RLDBText7.DataSource.DataSet.FieldByName('FRETE').AsString + ')';
end;

procedure TFRelatorioOrcamento.RLLabel22BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
  Text := 'Impostos: ' + FCadOrcamento.dsCadastro.DataSet.FieldByName('ORC_IMPOSTO').AsString

end;

procedure TFRelatorioOrcamento.RLDBText3BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
  if RLDBText3.Field.AsString = '' then
    Text := FCadOrcamento.DBEdit1.Text;
end;

procedure TFRelatorioOrcamento.RLLabel20BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
  PrintIt := RLDBMemo1.Field.AsString <> '';
end;

procedure TFRelatorioOrcamento.RLMemo3BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
  PrintIt := FCadOrcamento.DBCheckBox1.Checked
end;

procedure TFRelatorioOrcamento.RLMemo4BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
  PrintIt := FCadOrcamento.DBCheckBox1.Checked

end;

end.
