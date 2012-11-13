unit URelatorioCartaORcamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, URelatorio, StdCtrls, Grids, DBGrids, DB, IBCustomDataSet,
  IBQuery, ComCtrls, Buttons, ExtCtrls, DBClient, Provider, Menus;

type
  TFRelatorioCartaORcamento = class(TFRelatorio)
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    edCodigo: TEdit;
    edDescri: TEdit;
    Label4: TLabel;
    DBGrid2: TDBGrid;
    QCliente: TIBQuery;
    dspCliente: TDataSetProvider;
    cdsCliente: TClientDataSet;
    dsCliente: TDataSource;
    cdsClienteCODIGO: TIntegerField;
    cdsClienteRAZAO_SOCIAL: TStringField;
    dsAdcionados: TDataSource;
    PopupMenu1: TPopupMenu;
    AdicionarCliente1: TMenuItem;
    AdicionarTodos1: TMenuItem;
    PopupMenu2: TPopupMenu;
    DeletarCliente1: TMenuItem;
    DeletarTodos1: TMenuItem;
    QPesquisaCODIGO: TIntegerField;
    QPesquisaRAZAO_SOCIAL: TIBStringField;
    QPesquisaENDERECO: TIBStringField;
    QPesquisaBAIRRO: TIBStringField;
    QPesquisaCIDADE: TIBStringField;
    QPesquisaUF: TIBStringField;
    QPesquisaCEP: TIBStringField;
    QPesquisaCODIGO1: TIntegerField;
    QPesquisaULTIMA_VISITA: TIBStringField;
    QPesquisaNUMERO_SERIE: TIBStringField;
    QPesquisaNIVEL_MANUTENCAO: TIntegerField;
    QPesquisaTIPO_CAP: TIBStringField;
    QPesquisaDESCRICAO: TIBStringField;
    QPesquisaVR_TESTE: TFloatField;
    QPesquisaVR_RECARGA: TFloatField;
    QPesquisaTIPO_DESC: TIBStringField;
    procedure edCodigoChange(Sender: TObject);
    procedure edDescriChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure AdicionarTodos1Click(Sender: TObject);
    procedure DeletarCliente1Click(Sender: TObject);
    procedure DeletarTodos1Click(Sender: TObject);
    procedure dsClienteDataChange(Sender: TObject; Field: TField);
    procedure dsAdcionadosDataChange(Sender: TObject; Field: TField);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    procedure filtraCLiente(codigo, descri : String);
    
  public
    { Public declarations }
  end;

var
  FRelatorioCartaORcamento: TFRelatorioCartaORcamento;
  cdsTemp : TClientDataSet;

implementation

uses UdmGeral, URelatorioCartaORcamentoRel;

{$R *.dfm}

{ TFRelatorioCartaORcamento }

procedure TFRelatorioCartaORcamento.filtraCLiente(codigo, descri: String);
var
  Filtro : string;
begin

  if codigo <> '' then
    Filtro := ' AND(CODIGO = ' + QuotedStr(codigo) + ')';

  if descri <> '' then
    Filtro := Filtro + ' AND(RAZAO_SOCIAL LIKE ' + QuotedStr(descri+'%') + ')';

  cdsCliente.Filter := '';
  cdsCliente.Filtered := False;
  cdsCliente.Filter   := '(CODIGO IS NOT NULL) ' + Filtro;
  cdsCliente.Filtered := True;
  cdsCliente.Open;
  
end;

procedure TFRelatorioCartaORcamento.edCodigoChange(Sender: TObject);
begin
  inherited;
  filtraCLiente(edCodigo.Text, edDescri.Text);
end;

procedure TFRelatorioCartaORcamento.edDescriChange(Sender: TObject);
begin
  inherited;
  filtraCLiente(edCodigo.Text, edDescri.Text);
end;

procedure TFRelatorioCartaORcamento.FormCreate(Sender: TObject);
begin
  inherited;

  cdsTemp := TClientDataSet.Create(Self);

  with cdsTemp.FieldDefs do
  begin

    Add('CLI_CODIGO', ftInteger, 0);
    Add('CLI_DESCRI', ftString, 60);

  end;

  cdsTemp.CreateDataSet;

  cdsTemp.Open;
  dsAdcionados.DataSet := cdsTemp;

end;

procedure TFRelatorioCartaORcamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  cdsTemp.Free;
end;

procedure TFRelatorioCartaORcamento.DBGrid1DblClick(Sender: TObject);
begin
  inherited;

  if cdsTemp.Locate('CLI_CODIGO',cdsCliente.FieldByName('CODIGO').AsInteger,[]) then
  begin

    ShowMessage('Cliente já foi adicionado!');
    Exit;

  end;

  cdsTemp.Insert;
  cdsTemp.Fields[0].AsInteger := cdsCliente.FieldByName('CODIGO').AsInteger;
  cdsTemp.Fields[1].AsString  := cdsCliente.FieldByName('RAZAO_SOCIAL').AsString;
  cdsTemp.Post;

  DBGrid1.DataSource.DataSet.Next;
  DBGrid1.DataSource.DataSet.Prior;

end;

procedure TFRelatorioCartaORcamento.DBGrid2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;

  if cdsTemp.IsEmpty then
    Exit;

  if key = vk_delete then
  begin

    cdsTemp.Delete;
    DBGrid1.DataSource.DataSet.Locate('CODIGO', cdsTemp.Fields[0].AsInteger, []);

  end;

end;

procedure TFRelatorioCartaORcamento.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;

  if cdsTemp.Locate('CLI_CODIGO',cdsCliente.FieldByName('CODIGO').AsInteger,[]) then
    DBGrid1.Canvas.Brush.Color := clSkyBlue
  else
    DBGrid1.Canvas.Brush.Color := clWhite;

  DBGrid1.Canvas.Font.Color := clBlack;
  DBGrid1.DefaultDrawDataCell( Rect, Column.Field, State);

end;

procedure TFRelatorioCartaORcamento.AdicionarTodos1Click(Sender: TObject);
begin
  inherited;

  cdsCliente.First;
  While Not(cdsCliente.Eof) do
  begin

    if not(cdsTemp.Locate('CLI_CODIGO',cdsCliente.FieldByName('CODIGO').AsInteger,[])) then
    begin

      cdsTemp.Insert;
      cdsTemp.Fields[0].AsInteger := cdsCliente.FieldByName('CODIGO').AsInteger;
      cdsTemp.Fields[1].AsString  := cdsCliente.FieldByName('RAZAO_SOCIAL').AsString;
      cdsTemp.Post;

    end;

    cdsCliente.Next;

  end;

  DBGrid1.DataSource.DataSet.Next;
  DBGrid1.DataSource.DataSet.Prior;

end;

procedure TFRelatorioCartaORcamento.DeletarCliente1Click(Sender: TObject);
begin
  inherited;
  
  if cdsTemp.IsEmpty then
    Exit;

  cdsTemp.Delete;
  DBGrid1.DataSource.DataSet.Locate('CODIGO', cdsTemp.Fields[0].AsInteger, []);


end;

procedure TFRelatorioCartaORcamento.DeletarTodos1Click(Sender: TObject);
begin
  inherited;

  cdsTemp.First;
  while not(cdsTemp.Eof)do
  begin    

    cdsTemp.Delete;
    DBGrid1.DataSource.DataSet.Locate('CODIGO', cdsTemp.Fields[0].AsInteger, []);

  end;

end;

procedure TFRelatorioCartaORcamento.dsClienteDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  label1.Caption := 'Todos os Clientes ' + IntTOStr(cdsCliente.RecordCount);
end;

procedure TFRelatorioCartaORcamento.dsAdcionadosDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  label2.Caption := 'Clientes do Relatório ' + IntTOStr(cdsTemp.RecordCount);

end;

procedure TFRelatorioCartaORcamento.btnConsultarClick(Sender: TObject);
const
  ctPEsquisa =
    'SELECT'#10+
    '  CLIENTE.CODIGO,'#10+
    '  CLIENTE.RAZAO_SOCIAL,'#10+
    '  CLIENTE.ENDERECO,'#10+
    '  CLIENTE.BAIRRO,'#10+
    '  CLIENTE.CIDADE,'#10+
    '  CLIENTE.UF,'#10+
    '  CLIENTE.CEP,'#10+
    '  ESTINTOR.CODIGO AS CODIGO1,'#10+
    '  ESTINTOR.ULTIMA_VISITA,'#10+
    '  ESTINTOR.NUMERO_SERIE,'#10+
    '  ESTINTOR.NIVEL_MANUTENCAO,'#10+
    '  TIPO.TIPO ||''/'' || ESTINTOR.CAPACIDADE AS TIPO_CAP,'#10+
    '  TIPO.DESCRICAO,'#10+
    '  TIPOCAP_VALOR.VR_TESTE,'#10+
    '  TIPOCAP_VALOR.VR_RECARGA,'#10+
    '  TIPOCAP_VALOR.TIPO_DESC'#10+
    'FROM'#10+
    '  CLIENTE'#10+
    '  INNER JOIN ESTINTOR ON (CLIENTE.CODIGO = ESTINTOR.CLIENTE)'#10+
    '  INNER JOIN TIPOCAP_VALOR ON (ESTINTOR.TIPO = TIPOCAP_VALOR.TIPO)'#10+
    '                          AND (ESTINTOR.CAPACIDADE = TIPOCAP_VALOR.CAPACIDADE)'#10+
    '  INNER JOIN TIPO ON (ESTINTOR.TIPO = TIPO.CODIGO)'#10+
    '  INNER JOIN RGS_EXTINTOR ON (RGS_EXTINTOR.CODIGO_EXTINTOR = ESTINTOR.CODIGO)'#10+
    '  INNER JOIN RECARGA ON (RECARGA.CODIGO = RGS_EXTINTOR.CODIGO_RGS)'#10+
    'WHERE'#10+
    '  (RECARGA.PREV_SAIDA <= %s) AND(CLIENTE.CODIGO IN (%s))'#10+
    'ORDER BY'#10+
    '  CLIENTE.CODIGO';

var
  codigos : string;

begin

  if cdsTemp.IsEmpty then
  begin

    ShowMessage('Nenhum cliente foi selecionado!');
    Exit;

  end;

  cdsTemp.First;
  while not(cdsTemp.Eof)do
  begin

    codigos := codigos + cdsTemp.Fields[0].AsString + ',';

    cdsTemp.Next;
  end;

  QPesquisa.Close;
  QPesquisa.SQL.Clear;
  QPesquisa.SQL.Add(Format(ctPesquisa, [QuotedStr(FormatDateTime('mm/dd/yyyy', IncMonth(Now, -12))),
                                        copy(codigos, 1, length(codigos) - 1)]));
  QPesquisa.Open;

  QPesquisa.Last;
  QPesquisa.First;
  inherited;

end;

procedure TFRelatorioCartaORcamento.btnVisualizarClick(Sender: TObject);
begin
  inherited;

  Application.CreateForm(TFRelatorioCartaORcamentoRel, FRelatorioCartaORcamentoRel);
  FRelatorioCartaORcamentoRel.RLreport1.PReview;
  FRelatorioCartaORcamentoRel.Free;

end;

procedure TFRelatorioCartaORcamento.btnImprimirClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFRelatorioCartaORcamentoRel, FRelatorioCartaORcamentoRel);
  FRelatorioCartaORcamentoRel.RLreport1.Print;
  FRelatorioCartaORcamentoRel.Free;
end;

end.
