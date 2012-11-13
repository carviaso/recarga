unit UPai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGrids;

type
  TFPai = class(TForm)
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPai: TFPai;

implementation

uses UFsuper;

{$R *.dfm}

procedure TFPai.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
  if not (ActiveControl is TDBGrid) then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end else if (ActiveControl is TDBGrid) then
    with TDBGrid(ActiveControl) do
  if selectedindex < (fieldcount -1) then
    selectedindex := selectedindex +1
  else
    selectedindex := 0;
end;

procedure TFPai.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_escape then
    self.Close;

end;

procedure TFPai.FormCreate(Sender: TObject);
begin
  execDml('INSERT INTO ACOES(TELA,USUARIO,ACAO,DATA_HORA) VALUES(''' + self.Caption + ''','''+ nomeUsuario+''',''ABRIR'','''+ FormatDateTime('mm/dd/yyyy hh:mm:ss',now) +''')');

end;

procedure TFPai.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  execDml('INSERT INTO ACOES(TELA,USUARIO,ACAO,DATA_HORA) VALUES(''' + self.Caption + ''','''+ nomeUsuario+''',''FECHAR'','''+ FormatDateTime('mm/dd/yyyy hh:mm:ss',now) +''')');

end;

end.
