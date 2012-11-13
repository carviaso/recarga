unit UCadExtintorChamada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, Buttons, IBCustomDataSet, IBQuery,
  ComCtrls, Grids, DBGrids, ExtCtrls;

type
  TFUCadExtintorChamada = class(TForm)
    dsCliente: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    dblCliente: TDBLookupComboBox;
    edCodExtintor: TEdit;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    StatusBar1: TStatusBar;
    QPesquisa: TIBQuery;
    Panel2: TPanel;
    btnRelatorio: TBitBtn;
    BitBtn2: TBitBtn;
    btnPesquisa: TBitBtn;
    BitBtn3: TBitBtn;
    dsPesquisa: TDataSource;
    qaux: TIBQuery;
    procedure dblClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnPesquisaClick(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUCadExtintorChamada: TFUCadExtintorChamada;

implementation

uses UdmPesquisa, UFsuper, UCadExtintor, UpesquisaClientes, UdmGeral;

{$R *.dfm}




procedure TFUCadExtintorChamada.dblClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_f8 then
  begin
    TDBLookupComboBox(sender).ListSource.DataSet.close;
    TDBLookupComboBox(sender).ListSource.DataSet.Open;
    Application.CreateForm(TFpesquisaClientes, FpesquisaClientes);
    FpesquisaClientes.showModal;
    TDBLookupComboBox(sender).KeyValue := FpesquisaClientes.QPesquisa.Fields[0].AsVariant;
    FpesquisaClientes.Free;
  end;

  fun_dblookup(Key, Shift, Tdblookupcombobox(Sender));

end;

procedure TFUCadExtintorChamada.btnPesquisaClick(Sender: TObject);
const
  ctPesquisa =
    'SELECT * FROM ESTINTOR WHERE %s';

var
  Filtro : String;

begin


  if (dblCliente.KeyValue = null) and (edCodExtintor.Text = '') then
  begin

    ShowMessage('Informa o cliente ou o código do extintor!');
    dblCliente.SetFocus;
    Exit;

  end;

  if edCodExtintor.Text <> '' then
    Filtro := '(CODIGO = '+edCodExtintor.Text+')'
  else
    Filtro := '(CLIENTE = '+VartoStr(dblCliente.KeyValue)+')';

  QPesquisa.Close;
  QPesquisa.SQL.Clear;
  QPesquisa.SQL.Add(Format(ctPesquisa, [Filtro]));
  QPesquisa.Open;

  if dblCliente.KeyValue = null then
    dblCliente.KeyValue := QPesquisa.FieldByName('CLIENTE').AsString;

end;

procedure TFUCadExtintorChamada.btnRelatorioClick(Sender: TObject);
begin
  if dblCliente.KeyValue = null then
  begin

    ShowMessage('O Cliente deve ser informado!');
    Exit;

  end;

  if dsPesquisa.DataSet.IsEmpty then
  begin
    ShowMessage('Não há extintores a serem selecionados!');
    Exit;
  end;

  Application.CreateForm(TFCadExtintor, FCadExtintor);
  FCadExtintor.conecta(VarToStr(dblCliente.KeyValue));
  if (QPesquisa.RecordCount > 0) and (edCodExtintor.Text <> '') then
    FCadExtintor.QCadastro.Locate('CODIGO', edCodExtintor.Text, [])
  else
    FCadExtintor.QCadastro.Locate('CODIGO', dsPesquisa.DataSet.FieldByName('CODIGO').AsString, []);

  FCadExtintor.ShowModal;
  FCadExtintor.Free;


end;

procedure TFUCadExtintorChamada.BitBtn2Click(Sender: TObject);
const
  ctCodigo = 'SELECT MAX(CODIGO) FROM ESTINTOR';

begin

  qaux.close;
  qaux.SQL.clear;
  qaux.SQL.Add(ctCodigo);
  qaux.Open;

  if dblCliente.KeyValue = null then
  begin

    ShowMessage('O Cliente deve ser informado!');
    Exit;

  end;

  Application.CreateForm(TFCadExtintor, FCadExtintor);
  FCadExtintor.conecta(VarToStr(dblCliente.KeyValue));
  FCadExtintor.QCadastro.Insert;
  FCadExtintor.dsCadastro.DataSet.FieldByName('CODIGO' ).AsInteger := qaux.Fields[0].asInteger + 1;
  FCadExtintor.dsCadastro.DataSet.FieldByName('CLIENTE').AsInteger := dblCliente.KeyValue;
  FCadExtintor.ShowModal;
  FCadExtintor.Free;

end;

end.
