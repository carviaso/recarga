unit UdmGeral;

interface

uses
  SysUtils, Classes, DB, IBDatabase, Dialogs, IniFiles,
  IBCustomDataSet, IBQuery, IBTable;

type
  TDM = class(TDataModule)
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    OpenDialog1: TOpenDialog;
    QRGS: TIBQuery;
    QExtintor: TIBQuery;
    tbItensRecarga: TIBTable;
    Qry: TIBQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function transferencia:integer;
    procedure select(Qry : TIBQuery; SQL : String);
  end;

var
  DM: TDM;
  config : TIniFile;
implementation

uses UFsuper;

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
var
  db : string;
begin

  IBDatabase1.Connected := false;
  IBDatabase1.DatabaseName := '';
                           
  try
    // INTERBASE CONNECTION
    config := TIniFile.Create('./config.Ini');
    db := config.ReadString('DB','NAME','');
    if IBDatabase1.DatabaseName = '' then
      IBDatabase1.DatabaseName := db;
    IBDatabase1.Connected := False;
    IBDatabase1.Connected := true;
    bancodedados := db;

  except
    IBDatabase1.DatabaseName := InputBox('Endereço do banco de dados','Digite aqui','');
    IBDatabase1.Connected := true;
    if IBDatabase1.Connected then
      config.WriteString('DB','NAME',IBDatabase1.DatabaseName);
  end;
  config.Free;
end;

procedure TDM.select(Qry: TIBQuery; SQL: String);
begin
  Qry.Close;
  Qry.SQL.Clear;
  Qry.SQL.Add(SQL);
  Qry.Open;
end;

function TDM.transferencia: integer;
const
  ctExtintores =
    'SELECT'#10+
    '  ESTINTOR.CODIGO,'#10+
    '  ESTINTOR.CAPACIDADE,'#10+
    '  ESTINTOR.FABRICANTE,'#10+
    '  ESTINTOR.ANO_FABRICACAO,'#10+
    '  ESTINTOR.ULTIMA_VISITA,'#10+
    '  ESTINTOR.NUMERO_SERIE,'#10+
    '  ESTINTOR.NIVEL_MANUTENCAO,'#10+
    '  ESTINTOR.PINTURA,'#10+
    '  ESTINTOR.SELO,'#10+
    '  ESTINTOR.BATELADA,'#10+
    '  ESTINTOR.OBS,'#10+
    '  ESTINTOR.FECHAMENTO,'#10+
    '  ESTINTOR.TIPO,'#10+
    '  ESTINTOR.PESO_VAZIO,'#10+
    '  ESTINTOR.PESO_CHEIO,'#10+
    '  ESTINTOR.TARA,'#10+
    '  ESTINTOR.ET,'#10+
    '  ESTINTOR.EP,'#10+
    '  ESTINTOR.CLIENTE,'#10+
    '  ESTINTOR.NUMERO_PROJETO,'#10+
    '  ESTINTOR.NUMERO_LACRE,'#10+
    '  ESTINTOR.PRESSAO_TRABALHO,'#10+
    '  ESTINTOR.RS_PERDA,'#10+
    '  ESTINTOR.RS_EP_ET,'#10+
    '  ESTINTOR.RS,'#10+
    '  ESTINTOR.DATA_TESTE,'#10+
    '  ESTINTOR.PRESSAO_TESTE,'#10+
    '  ESTINTOR.MOTIVO,'#10+
    '  ESTINTOR.PESO_VAZIO_CO2,'#10+
    '  ESTINTOR.NORMA_CO2,'#10+
    '  ESTINTOR.LITROS_CO2,'#10+
    '  ESTINTOR.PESO_CHEIO_CO2,'#10+
    '  ESTINTOR.LOCAL'#10+
    'FROM'#10+
    '  ESTINTOR'#10+
    '  INNER JOIN RGS_EXTINTOR ON (ESTINTOR.CODIGO = RGS_EXTINTOR.CODIGO_EXTINTOR)'#10+
    'WHERE'#10+
    '  (RGS_EXTINTOR.CODIGO_RGS = %s)';

var
  i,c : Integer;

begin
  c := 0;

  QRGS.Open;

  tbItensRecarga.Open;

  if not(QRGS.IsEmpty) then
  begin

    while not(QRGS.Eof) do
    begin

      QExtintor.Close;
      QExtintor.SQL.Clear;
      QExtintor.SQL.Add(format(ctExtintores, [QRGS.FieldByName('CODIGO').AsString]));
      QExtintor.Open;

      if not(QExtintor.IsEmpty) then
      begin

        while not(QExtintor.Eof) do
        begin

          tbItensRecarga.Insert;
          tbItensRecarga.FieldByName('RGS').AsString := QRGS.FieldByName('RGS').AsString;

          for i := 0 to QExtintor.FieldCount - 1 do
            tbItensRecarga.FieldByName(QExtintor.Fields[i].FieldName).AsVariant :=
            QExtintor.FieldByName(QExtintor.Fields[i].FieldName).AsVariant;

          tbItensRecarga.Post;

          QExtintor.Next;
          inc(c);

        end;

      end;

      QRGS.Next;

    end;

  end;

  ShowMessage('Processo concluído com sucesso!'#10+
              IntToStr(c) + '  GRSs foram transferidas');

   result := c;
   
end;

end.
