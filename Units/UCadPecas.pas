unit UCadPecas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadastro, IBTable, DB, IBCustomDataSet, IBQuery, StdCtrls,
  Mask, ToolEdit, Grids, DBGrids, ComCtrls, Buttons, ExtCtrls, DBCtrls;

type
  TFCadPecas = class(TFCadastro)
    Label3: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    edDescricao: TDBEdit;
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadPecas: TFCadPecas;

implementation

uses UCadRgs, UFsuper, UdmGeral;

{$R *.dfm}

procedure TFCadPecas.btnNovoClick(Sender: TObject);
const
  ctCodigo = 'SELECT MAX(CODIGO_PECAS) FROM PECAS';
begin
  qaux.close;
  qaux.SQL.clear;
  qaux.SQL.Add(ctCodigo);
  qaux.Open;

  inherited;
  edDescricao.SetFocus;
  dsCadastro.DataSet.FieldByName('CODIGO_PECAS').AsInteger := qaux.Fields[0].asInteger + 1;
  qaux.Close;
end;

procedure TFCadPecas.btnAlterarClick(Sender: TObject);
begin
  inherited;
  edDescricao.SetFocus;

end;

end.
