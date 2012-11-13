unit ULogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPai, StdCtrls, Buttons, ComCtrls, ExtCtrls;

type
  TFLogin = class(TFPai)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    StatusBar1: TStatusBar;
    Label2: TLabel;
    Label3: TLabel;
    edNome: TEdit;
    edSenha: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure edNomeEnter(Sender: TObject);
    procedure edNomeExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure JvXPButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLogin: TFLogin;

implementation

uses UdmPesquisa, UFsuper, DB;

{$R *.dfm}

procedure TFLogin.edNomeEnter(Sender: TObject);
begin
  inherited;
  TEdit(sender).Color := clYellow;
  if TEdit(sender).Name = 'edSenha' then
    BitBtn1.Default := True;
end;

procedure TFLogin.edNomeExit(Sender: TObject);
begin
  inherited;
  TEdit(sender).Color := clWindow;
  if TEdit(sender).Name = 'edSenha' then
    BitBtn1.Default := False;
end;

procedure TFLogin.FormCreate(Sender: TObject);
begin
  inherited;
  StatusBar1.Panels[0].Text := bancodedados;

end;

procedure TFLogin.JvXPButton1Click(Sender: TObject);
begin
  inherited;
  Application.Terminate;

end;

procedure TFLogin.BitBtn1Click(Sender: TObject);
begin
  inherited;
  DMPesquisa.cdsUsuario.Open;
  if DMPesquisa.cdsUsuario.Locate('NOME;SENHA',VarArrayOf([ednome.text,edSenha.Text]),[]) then
  begin
    CodUsuario := DMPesquisa.cdsUsuario.FieldByName('CODIGO').asInteger;
    codGrupo   := DMPesquisa.cdsUsuario.FieldByName('COD_GRUPO').asInteger;
    nomeUsuario:= DMPesquisa.cdsUsuario.FieldByName('NOME').AsString;
    usu_Master := DMPesquisa.cdsUsuario.FieldByName('USUARIO_MASTER').asInteger;

    close;
  end else begin
    CodUsuario := 0;
    StatusBar1.Panels[0].Text := 'Usuário Inválido!';
    beep;
  end;
  inherited;
  DMPesquisa.cdsUsuario.cLOSE;
end;

procedure TFLogin.BitBtn2Click(Sender: TObject);
begin
  inherited;
  Application.Terminate;

end;

procedure TFLogin.FormShow(Sender: TObject);
begin
  inherited;
  if DebugHook = 1 then
  begin

    edNome.Text := 'SUPORTE';
    edSenha.Text := '448188';
    BitBtn1Click(Sender);

  end;

end;

end.
