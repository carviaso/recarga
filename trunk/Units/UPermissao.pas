unit UPermissao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPai, StdCtrls, CheckLst, DBCtrls, DB, Buttons, ExtCtrls,
  FMTBcd, SqlExpr, Grids, DBGrids, ComCtrls, IBCustomDataSet, IBQuery;

type
  TFPErmissao = class(TFPai)
    clbMenus: TCheckListBox;
    dsGrupo: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    dblGrupo: TDBLookupComboBox;
    Panel1: TPanel;
    btnGravar: TBitBtn;
    dsAcesso: TDataSource;
    BitBtn1: TBitBtn;
    cbMarcarTudo: TCheckBox;
    StatusBar1: TStatusBar;
    qaux: TIBQuery;
    procedure FormShow(Sender: TObject);
    procedure dsGrupoDataChange(Sender: TObject; Field: TField);
    procedure btnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbMarcarTudoClick(Sender: TObject);
    procedure clbMenusClick(Sender: TObject);
  private
    { Private declarations }
    procedure ListaMenu(codGrupo:integer);
    procedure deletaMenu(codGrupo:integer; menuNome:string);
    procedure inseriMenu(codGrupo:integer; menuNome:string);
    procedure checarMenu(codGrupo:integer);
    function  verificaMenu(codGrupo:integer; menuNome:string):boolean;

  public
    { Public declarations }
  end;

var
  FPErmissao: TFPErmissao;

implementation

uses UPrincipal, Menus, UdmGeral, UdmPesquisa, UFsuper;

{$R *.dfm}

procedure TFPErmissao.FormShow(Sender: TObject);
var
  MenuExterno, menuInterno : integer;
begin
  inherited;
end;

procedure TFPErmissao.ListaMenu(codGrupo: integer);
var
  MenuExterno, menuInterno : integer;
begin
  clbMenus.Items.Clear;
  for MenuExterno := 0 to FPrincipal.MainMenu.Items.Count -1 do
  begin
    if FPrincipal.MainMenu.Items[MenuExterno].Caption <> '-' then
      clbMenus.Items.Add(' ' + FPrincipal.MainMenu.Items[MenuExterno].Caption);
    for menuInterno := 0 to FPrincipal.MainMenu.Items[MenuExterno].Count -1 do
      if FPrincipal.MainMenu.Items[MenuExterno].Items[menuInterno].Caption <> '-' then
        clbMenus.Items.Add(' ' + FPrincipal.MainMenu.Items[MenuExterno].Items[menuInterno].Caption);
  end;
  checarMenu(codGrupo);
  StatusBar1.Panels[0].Text := inttoStr(clbMenus.Count) + ' Itens';
end;

procedure TFPErmissao.dsGrupoDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if dblGrupo.KeyValue <> null then
    ListaMenu(dblGrupo.KeyValue);
end;

procedure TFPErmissao.btnGravarClick(Sender: TObject);
var
  i : integer;
begin
  for i := 0 to clbMenus.Count -1 do
  begin
    if clbMenus.Checked[i] = true then
       inseriMenu(dblGrupo.KeyValue,clbMenus.Items.ValueFromIndex[i])
    else
       deletaMenu(dblGrupo.KeyValue,clbMenus.Items.ValueFromIndex[i])
  end;
  ListaMenu(dblGrupo.KeyValue);
  dsAcesso.DataSet.Refresh;
  inherited;
  StatusBar1.Panels[1].Text := 'Gravado com sucesso!';
  beep;
end;

procedure TFPErmissao.deletaMenu(codGrupo: integer; menuNome: string);
const
  ctDml = 'DELETE FROM ACESSO WHERE (COD_GRUPO = %s) AND (MENU_NOME = %s)';
begin
  try
    qaux.Close;
    qaux.SQl.Clear;
    qaux.SQL.Add(Format(ctDml,[IntToStr(codGrupo),QuotedStr(menuNome)]));
    qaux.ExecSQL;
  except
  end;
end;

procedure TFPErmissao.inseriMenu(codGrupo: integer; menuNome: string);
const
  ctDml = 'INSERT INTO ACESSO(COD_GRUPO,MENU_NOME) VALUES(%s,%s)';
begin
  try
    if verificaMenu(codGrupo,menuNome) then  // se encontrar o menu saia da procedure
      exit;

    qaux.Close;
    qaux.SQl.Clear;
    qaux.SQL.Add(Format(ctDml,[IntToStr(codGrupo),QuotedStr(menuNome)]));
    qaux.ExecSQL;
  except
  end;
end;

procedure TFPErmissao.FormCreate(Sender: TObject);
begin
  dsGrupo.DataSet.Open;
  dsGrupo.DataSet.Last;
  dsGrupo.DataSet.First;

  DMPesquisa.cdsAcesso.Open;
  inherited;

end;

procedure TFPErmissao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dsGrupo.DataSet.Close;
  DMPesquisa.cdsAcesso.Close;
  inherited;

end;
{
function TFPErmissao.procuraPermissao(codGrupo: integer;
  menuNome: string): boolean;
const
  ctDml = 'SELECT * FROM ACESSO WHERE (COD_GRUPO = %s) AND (MENU_NOME = %s)';
begin
  try
    qaux.Close;
    qaux.SQl.Clear;
    qaux.SQL.Add(Format(ctDml,[IntToStr(codGrupo),QuotedStr(menuNome)]));
    qaux.Open;
    Result := not(qaux.IsEmpty);
    qaux.Close;
  except
  end;
end;
}
procedure TFPErmissao.checarMenu(codGrupo: integer);
var
  i : integer;
begin
  for i := 0 to clbMenus.Count -1 do
    clbMenus.Checked[i] := procuraPermissao(codGrupo,trim(clbMenus.Items.ValueFromIndex[i]))

end;

procedure TFPErmissao.cbMarcarTudoClick(Sender: TObject);
var
  i : integer;
begin
  inherited;
  for i := 0 to clbMenus.Count -1 do
    clbMenus.Checked[i] := cbMarcarTudo.Checked;
end;

procedure TFPErmissao.clbMenusClick(Sender: TObject);
begin
  inherited;
  btnGravar.Enabled := true;
end;

function TFPErmissao.verificaMenu(codGrupo: integer;
  menuNome: string): boolean;
const
  ctVerificaMenu =
    'SELECT COUNT(*) FROM ACESSO WHERE COD_GRUPO = %s AND MENU_NOME = ''%s''';
begin
  qaux.Close;
  qaux.SQL.Clear;
  qaux.SQL.Add(Format(ctVerificaMenu,[IntToStr(codGrupo),menuNome]));
  qaux.Open;
  Result := qaux.Fields[0].AsInteger = 1;
end;

end.
