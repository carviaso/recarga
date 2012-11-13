unit uRestore;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPai, StdCtrls, Buttons, IBServices, DB, Grids, Mask, DBCtrls,
  ExtCtrls;

type
  TFRestore = class(TFPai)
    IBRestoreService: TIBRestoreService;
    dsEmpresa: TDataSource;
    Memo1: TMemo;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    Label18: TLabel;
    OpenDialog1: TOpenDialog;
    edBackup: TEdit;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRestore: TFRestore;

implementation

uses UFsuper, UdmPesquisa, UdmGeral;

{$R *.dfm}

procedure TFRestore.BitBtn1Click(Sender: TObject);
var
  nomeBackupFile : string;
begin
  inherited;

  if (dsEmpresa.DataSet.FieldByName('SERVER_NAME').AsString = '') then
  begin
    alert('Verifique os parametros de backup no cadastro da empresa!');
    Exit;
  end;

  if edBackup.Text = '' then
  begin
    alert('Selecione um arquivo de backup!');
    Exit;
  end else begin
    if not(FileExists(edBackup.Text)) then
    begin
      alert('O arquivo informado não existe!');
      Exit;
    end;
  end;



  with IBRestoreService do
  begin

    ServerName := dsEmpresa.DataSet.FieldByName('SERVER_NAME').AsString;
    LoginPrompt := False;
    Params.Add('user_name=sysdba');
    Params.Add('password=masterkey');
    Active := true;
    try
      Verbose := True;
      Options := [Replace];
      DatabaseName.Add(dsEmpresa.DataSet.FieldByName('LOCAL_BANCO').AsString);
      nomeBackupFile := edBackup.Text;
      BackupFile.Add(nomeBackupFile);

      // Fechando a conexão com o banco de dados, pois, ele será substituido
      Dm.IBDatabase1.Close;

      ServiceStart;
      While not Eof do
        Memo1.Lines.Add(GetNextLine);

    finally
      Active := False;
    end;

    ShowMessage('Backup restaurado com sucesso, sistema será reiniciado!');
    Application.Terminate;

  end;
end;

procedure TFRestore.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if OpenDialog1.Execute then
    edBackup.Text := OpenDialog1.FileName
end;

procedure TFRestore.FormCreate(Sender: TObject);
begin
  inherited;
  dsEmpresa.DataSet.Close;
  dsEmpresa.DataSet.Open;

end;

end.
