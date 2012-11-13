unit UBackup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPai, IBServices, StdCtrls, Buttons, DB, DBCtrls;

type
  TFBackup = class(TFPai)
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    IBBackupService1: TIBBackupService;
    DBText1: TDBText;
    dsEmpresa: TDataSource;
    DBText2: TDBText;
    DBText3: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBText4: TDBText;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBackup: TFBackup;

implementation

uses UdmPesquisa, UFsuper;

{$R *.dfm}

procedure TFBackup.BitBtn1Click(Sender: TObject);
var
  nomeBackupFile : string;
begin
  inherited;
  if (dsEmpresa.DataSet.FieldByName('SERVER_NAME').AsString = '') or
     (dsEmpresa.DataSet.FieldByName('LOCAL_BANCO').AsString = '') or
     (dsEmpresa.DataSet.FieldByName('LOCAL_BACKUP').AsString = '') then
  begin
    alert('Verifique os parametros de backup no cadastro da empresa!');
    abort;
  end;

  with IBBackupService1 do
  begin
    ServerName := trim(dsEmpresa.DataSet.FieldByName('SERVER_NAME').AsString);
    LoginPrompt := False;
    Params.Add('user_name=sysdba');
    Params.Add('password=masterkey');
    Active := True;
    try
      Verbose := True;
      Options := [NonTransportable, IgnoreLimbo];
      DatabaseName   := dsEmpresa.DataSet.FieldByName('LOCAL_BANCO').AsString;
      nomeBackupFile := dsEmpresa.DataSet.FieldByName('LOCAL_BACKUP').AsString;
      nomeBackupFile := nomeBackupFile + FormatDateTime('ddmmyy".gbk"',now);
      BackupFile.Add(nomeBackupFile);
      ServiceStart;
      While not Eof do
        Memo1.Lines.Add(GetNextLine);
    finally

      dsEmpresa.Edit;
      dsEmpresa.DataSet.FieldByName('DATA_BACKUP').AsDateTime := now;
      dsEmpresa.DataSet.Post;

      Active := False;
    end;
  end;


end;

procedure TFBackup.FormCreate(Sender: TObject);
begin
  inherited;
  dsEmpresa.DataSet.Close;
  dsEmpresa.DataSet.Open;
end;

end.
