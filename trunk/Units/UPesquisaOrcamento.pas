unit UPesquisaOrcamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPai, DB, IBCustomDataSet, IBQuery, StdCtrls, Buttons, DBCtrls,
  Mask, ToolEdit, Grids, DBGrids, ExtCtrls;

type
  TFPesquisaOrcamento = class(TFPai)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    edNOrcamento: TEdit;
    GroupBox1: TGroupBox;
    edData1: TDateEdit;
    edData2: TDateEdit;
    Label2: TLabel;
    dsCliente: TDataSource;
    Label14: TLabel;
    dblPesquisaCliente: TDBLookupComboBox;
    Panel2: TPanel;
    btnRelatorio: TBitBtn;
    QPesquisa: TIBQuery;
    QPesquisaORC_CODIGO: TIntegerField;
    QPesquisaORC_DATA: TDateTimeField;
    QPesquisaORC_VALOR: TFloatField;
    QPesquisaORC_CLIENTEDESC: TIBStringField;
    dsPesquisa: TDataSource;
    BitBtn2: TBitBtn;
    btnPesquisa: TBitBtn;
    BitBtn1: TBitBtn;
    procedure dblPesquisaClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnPesquisaClick(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dsPesquisaDataChange(Sender: TObject; Field: TField);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPesquisaOrcamento: TFPesquisaOrcamento;
  novo : Boolean = False;

implementation

uses UdmPesquisa, UFsuper, UdmGeral, UcadOrcamento, UpesquisaClientes;

{$R *.dfm}

procedure TFPesquisaOrcamento.dblPesquisaClienteKeyDown(Sender: TObject; var Key: Word;
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
    TDBLookupComboBox(sender).KeyValue := FpesquisaClientes.QPesquisa.Fields[0].AsVariant;
    FpesquisaClientes.Free;
  end;

end;

procedure TFPesquisaOrcamento.btnPesquisaClick(Sender: TObject);
const
  ctPesquisa =
    'SELECT'#10+
    '  ORCAMENTO.ORC_CODIGO,'#10+
    '  ORCAMENTO.ORC_DATA,'#10+
    '  ORCAMENTO.ORC_CLIENTEDESC,'#10+
    '  ORCAMENTO.ORC_VALOR'#10+
    'FROM'#10+
    '  ORCAMENTO'#10+
    'WHERE'#10+
    '  (ORCAMENTO.ORC_CODIGO IS NOT NULL)%s';

var
  Filtro : String;

begin

  if (edNOrcamento.Text = '') and
     ((edData1.Date = 0) or (edData2.Date = 0)) and
     (dblPesquisaCliente.KeyValue = null) then
  begin

    ShowMessage('Ao menos uma condição para pesquisa deve ser informada!');
    edNOrcamento.SetFocus;
    Exit;

  end;

  Filtro := '';
  if  edNOrcamento.Text <> '' then
    Filtro := Filtro + ' AND(ORCAMENTO.ORC_CODIGO = '+edNOrcamento.Text+')';

  if (edData1.Date <> 0) and (edData2.Date <> 0) then
    Filtro := Filtro + ' AND(ORCAMENTO.ORC_DATA BETWEEN '+ QuotedStr(FormatDateTime('mm/dd/yyyy 00:00:00', edData1.Date))+' AND '
                                                         + QuotedStr(FormatDateTime('mm/dd/yyyy 23:59:59', edData2.Date))+')';

  if dblPesquisaCliente.KeyValue <> null then
    Filtro := Filtro + ' AND(ORCAMENTO.ORC_CLIENTE = '+VarToStr(dblPesquisaCliente.KeyValue)+')';


  QPesquisa.Close;
  QPesquisa.SQL.Clear;
  QPesquisa.SQL.Add(Format(ctPesquisa, [Filtro]));
  QPesquisa.Open;
  
  inherited;

end;

procedure TFPesquisaOrcamento.btnRelatorioClick(Sender: TObject);
begin
  inherited;

  if QPesquisa.IsEmpty then
    Exit;

  Application.CreateForm(TFCadOrcamento, FCadOrcamento);
  with FCadOrcamento.QCadastro do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM ORCAMENTO WHERE ORC_CODIGO = ' + QPesquisa.Fields[0].AsString);
    Open;
  end;
  FCadOrcamento.ShowModal;
  FCadOrcamento.Free

end;

procedure TFPesquisaOrcamento.BitBtn2Click(Sender: TObject);
begin
  novo := True;
  inherited;

  Application.CreateForm(TFCadOrcamento, FCadOrcamento);
  with FCadOrcamento do
  begin
    dsCadastro.DataSet.Insert;
    dsCadastro.DataSet.FieldByName('ORC_CODIGO').AsInteger       := Retorna_Codigo_Generetor('GEN_ORCAMENTO');
    dsCadastro.DataSet.FieldByName('ORC_PRAZOENTREGA').AsInteger := 0;
    dsCadastro.DataSet.FieldByName('ORC_VALIDADE').AsInteger     := 0;
    dsCadastro.DataSet.FieldByName('ORC_DATA').AsDateTime        := Now;
    lista_dos_itens_do_registro1.Clear;
    lista_dos_itens_do_registro2.Clear;
    cdsServicos.EmptyDataSet;
    cdsPecas.EmptyDataSet;
    novo := False;
  end;
  FCadOrcamento.ShowModal;
  FCadOrcamento.Free;
  novo := False;

end;

procedure TFPesquisaOrcamento.FormCreate(Sender: TObject);
const
  ctPesquisa =
    'SELECT FIRST 10'#10+
    '  ORCAMENTO.ORC_CODIGO,'#10+
    '  ORCAMENTO.ORC_DATA,'#10+
    '  ORCAMENTO.ORC_CLIENTEDESC,'#10+
    '  ORCAMENTO.ORC_VALOR'#10+
    'FROM'#10+
    '  ORCAMENTO'#10+
    'ORDER BY'#10+
    '  ORCAMENTO.ORC_DATA DESC';
begin
  inherited;
  QPesquisa.Close;
  QPesquisa.SQL.Clear;
  QPesquisa.SQL.Add(ctPesquisa);
  QPesquisa.Open;
end;

procedure TFPesquisaOrcamento.dsPesquisaDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  btnRelatorio.Enabled := dsPesquisa.DataSet.RecordCount > 0;
end;

procedure TFPesquisaOrcamento.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  if btnRelatorio.Enabled then
    btnRelatorio.Click;
    
end;

end.
