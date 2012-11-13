unit UCadSituacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadastro, IBTable, DB, IBCustomDataSet, IBQuery, StdCtrls,
  Mask, ToolEdit, Grids, DBGrids, ComCtrls, Buttons, ExtCtrls, DBCtrls;

type
  TFCadSituacao = class(TFCadastro)
    cdsCadastroSIT_DESCRICAO: TIBStringField;
    cdsCadastroSIT_CODIGO: TIntegerField;
    Label1: TLabel;
    edDescricao: TDBEdit;
    Label2: TLabel;
    DBText1: TDBText;
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadSituacao: TFCadSituacao;

implementation

uses UdmGeral, UdmPesquisa;

{$R *.dfm}

procedure TFCadSituacao.btnNovoClick(Sender: TObject);
const
  ctCodigo = 'SELECT MAX(SIT_CODIGO) FROM SITUACAO';
begin
  qaux.close;
  qaux.SQL.clear;
  qaux.SQL.Add(ctCodigo);
  qaux.Open;

  inherited;
  edDescricao.SetFocus;
  dsCadastro.DataSet.FieldByName('SIT_CODIGO').AsInteger := qaux.Fields[0].asInteger + 1;
  qaux.Close;
end;

procedure TFCadSituacao.btnAlterarClick(Sender: TObject);
begin
  inherited;
  edDescricao.SetFocus;

end;

procedure TFCadSituacao.btnGravarClick(Sender: TObject);
begin
  inherited;

  if edDescricao.Field.AsString = '' then
  begin
    Showmessage('A descrição deve ser informada!');
    edDescricao.SetFocus;
    Exit;
  end;

end;

end.
