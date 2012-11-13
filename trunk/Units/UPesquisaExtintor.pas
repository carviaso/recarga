unit UPesquisaExtintor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPai, Grids, DBGrids, ExtCtrls, FMTBcd, DB, DBClient, Provider,
  SqlExpr, StdCtrls, Buttons, DBCtrls, IBCustomDataSet, IBQuery;

type
  TFPesquisaExtintor = class(TFPai)
    pnButoes: TPanel;
    Panel2: TPanel;
    pnPesquisa: TPanel;
    DBGrid1: TDBGrid;
    dsExtintor: TDataSource;
    dsFabricante: TDataSource;
    dsTipo: TDataSource;
    edCorigo: TEdit;
    Label3: TLabel;
    Label1: TLabel;
    dblFabricante: TDBLookupComboBox;
    Label2: TLabel;
    dblTipo: TDBLookupComboBox;
    btnPesquisar: TBitBtn;
    btnFschar: TBitBtn;
    BitBtn1: TBitBtn;
    sqlExtintor: TIBQuery;
    procedure btnPesquisarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dblTipoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure pesquisa(filtros : string);
  public
    { Public declarations }
  end;

var
  FPesquisaExtintor: TFPesquisaExtintor;
  codRgs : string = '';
implementation

uses UdmGeral, UdmPesquisa, UFsuper;

{$R *.dfm}

procedure TFPesquisaExtintor.pesquisa(filtros: string);
const
  ctPesquisa =
    'SELECT'#10+
    '  FABRICANTE.DESCRICAO AS FABRICANTE,'#10+
    '  TIPO.TIPO,'#10+
    '  TIPO.DESCRICAO AS DESCRICAO_TIPO,'#10+
    '  ESTINTOR.CODIGO,'#10+
    '  ESTINTOR.CAPACIDADE,'#10+
    '  ESTINTOR.ANO_FABRICACAO,'#10+
    '  ESTINTOR.ULTIMA_VISITA,'#10+
    '  ESTINTOR.NUMERO_SERIE,'#10+
    '  ESTINTOR.NIVEL_MANUTENCAO,'#10+
    '  ESTINTOR.PINTURA,'#10+
    '  ESTINTOR.SELO,'#10+
    '  ESTINTOR.BATELADA,'#10+
    '  ESTINTOR.OBS,'#10+
    '  ESTINTOR.FECHAMENTO,'#10+
    '  ESTINTOR.PESO_VAZIO,'#10+
    '  ESTINTOR.PESO_CHEIO,'#10+
    '  ESTINTOR.TARA,'#10+
    '  ESTINTOR.ET,'#10+
    '  ESTINTOR.EP'#10+
    'FROM'#10+
    '  ESTINTOR'#10+
    '  INNER JOIN FABRICANTE ON (ESTINTOR.FABRICANTE=FABRICANTE.CODIGO)'#10+
    '  INNER JOIN TIPO ON (ESTINTOR.TIPO=TIPO.CODIGO)'#10+
    'WHERE'#10+
    '  (ESTINTOR.CODIGO > 0) %s';
begin
  sqlExtintor.Close;
  sqlExtintor.SQL.Clear;
  sqlExtintor.SQL.Add(Format(ctPesquisa,[filtros]));
  sqlExtintor.Open;
end;

procedure TFPesquisaExtintor.btnPesquisarClick(Sender: TObject);
var
  filtro : string;
begin
  if edCorigo.Text <> '' then
    Filtro := Filtro + 'AND(ESTINTOR.CODIGO = '+ edCorigo.Text +')';

  if dblFabricante.KeyValue <> null then
    Filtro := Filtro + 'AND(ESTINTOR.FABRICANTE = '+ varToStr(dblFabricante.KeyValue) +')';

  if dblTipo.KeyValue <> null then
    Filtro := Filtro + 'AND(ESTINTOR.TIPO = '+ varToStr(dblTipo.KeyValue) +')';

  pesquisa(filtro);
  inherited;

end;

procedure TFPesquisaExtintor.BitBtn1Click(Sender: TObject);
Const
  ctInsert =
    'INSERT INTO'#10+
    ' RGS_EXTINTOR'#10+
    '    (RGS_EXTINTOR.CODIGO_EXTINTOR,'#10+
    '     RGS_EXTINTOR.CODIGO_RGS)'#10+
    'VALUES(%s,%s)';
begin
  inherited;
  if DBGrid1.SelectedRows.Count = 0 then
  begin
    alert('Não ha extintores selecionados!');
    exit;
  end;

  dsExtintor.DataSet.First;
  while not(dsExtintor.DataSet.eof) do
  begin
    if DBGrid1.SelectedRows.CurrentRowSelected then
      execDml(Format(ctInsert,[dsExtintor.DataSet.FieldByName('CODIGO').AsString,
                               codRgs]));
    dsExtintor.DataSet.Next;
  end;

  alert('Estintor(es) adicionado(s), lista atualizada!');
end;

procedure TFPesquisaExtintor.FormCreate(Sender: TObject);
begin
  dsFabricante.DataSet.Open;
  dsTipo.DataSet.Open;
  inherited;

end;

procedure TFPesquisaExtintor.dblTipoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_delete then
    TDBLookupComboBox(sender).KeyValue := null
  else if key = vk_f5 then
    TDBLookupComboBox(sender).listSource.dataset.Refresh;
end;

end.
