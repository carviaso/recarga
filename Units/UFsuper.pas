unit UFsuper;

interface
  Uses Dialogs, Controls, SqlExpr, SysUtils, IBQuery, forms, Classes, DBCtrls, windows, variants;

procedure alert(texto : string); // Exibe uma menssagem de alerta passada como parametro
procedure execDml(sql:string); // Executa uma instrução UPDATE, INSERT ou DELETE
procedure execDml2(sql:string); // Executa uma instrução UPDATE, INSERT ou DELETE
procedure fun_dblookup(Key: Word; Shift: TShiftState; lookup : TDBLookupComboBox);// Funções do onKeyDown do DBLOOKUPCOMBOBOX

function  select_1(sql : string):variant; // Função que retorna o primero campo de uma conslta
function  pegaGenerator(GenName : String):integer; // Função que retorno o código para um novo registro
function  question(texto : string):boolean;
function  procuraPermissao(codGrupo:integer; menuNome:string):boolean;
function  zeroAEsquerda(tamanho : integer; numero : string):string;
function  prompt(form_caption, label_caption, edit_text : string; password_char : char):string;
function testaInteiro(valor : String):Boolean;
function Retorna_Codigo_Generetor(Generetor: String) : Integer;


var
  //VARIAVEIS GLOBAIS RELATIVAR AO USUÁRIO LOGADO!
  CodUsuario   : integer;
  codGrupo     : integer;
  nomeUsuario  : string;
  usu_Master   : integer;
  CodEmpresa   : integer;
  bancodedados : string;
implementation

uses UdmGeral, UPrompt;

procedure alert(texto : string);
begin
  MessageDlg(texto,mtInformation,[mbOk],0);
end;

function  question(texto : string):boolean;
begin
  result := MessageDlg(texto,mtConfirmation,[mbYes, mbNo],0) = mrYes;
end;

function  procuraPermissao(codGrupo:integer; menuNome:string):boolean;
var
  qaux : TIBQuery;
const
  ctDml = 'SELECT * FROM ACESSO WHERE (COD_GRUPO = %s) AND (MENU_NOME = %s)';
begin
  try
    qaux := TIBQuery.Create(nil);
    qaux.Transaction := DM.IBTransaction1;
    qaux.Database    := DM.IBDatabase1;
    try
      qaux.Close;
      qaux.SQl.Clear;
      qaux.SQL.Add(Format(ctDml,[IntToStr(codGrupo),QuotedStr(menuNome)]));
      qaux.Open;
      Result := not(qaux.IsEmpty);
      qaux.Close;
    except
    end;
  finally
    qaux.Free;
  end;
end;

function  prompt(form_caption, label_caption, edit_text : string; password_char : char):string;
begin

  Application.CreateForm(TFPrompt, FPrompt);
  FPrompt.Caption            := form_caption;
  FPrompt.Label1.Caption     := label_caption;
  FPrompt.Edit1.Text         := edit_text;
  FPrompt.Edit1.PasswordChar := password_char;
  FPrompt.ShowModal;
  result := FPrompt.Edit1.Text;
  FPrompt.Free;

end;

procedure execDml(sql:string);
var
  qaux : TIBQuery;
begin
  try
    qaux := TIBQuery.Create(nil);
    qaux.Transaction := DM.IBTransaction1;
    qaux.Database    := DM.IBDatabase1;
    try
      qaux.Close;
      qaux.SQl.Clear;
      qaux.SQL.Add(sql);
      qaux.ExecSQL;
      qaux.Transaction.CommitRetaining;
    except
      ShowMessage(sql);
    end;
  finally
    qaux.Free;
  end;
end;

procedure execDml2(sql:string);
var
  qaux : TIBQuery;
begin
  try
    qaux := TIBQuery.Create(nil);
    qaux.Transaction := DM.IBTransaction1;
    qaux.Database    := DM.IBDatabase1;

    qaux.Close;
    qaux.SQl.Clear;
    qaux.SQL.Add(sql);
    qaux.ExecSQL;
    qaux.Transaction.CommitRetaining;

  finally
    qaux.Free;
  end;
end;

function  zeroAEsquerda(tamanho : integer; numero : string):string;
var
  texto: string;
  i : integer;
begin
  texto := numero;
  for i := length(numero) to (tamanho-1) do
    texto := '0' + texto;

  result := texto;
end;

function select_1(sql : string):variant; // Função que retorna o primero campo de uma conslta
var
  qaux : TIBQuery;
begin
  try
    qaux := TIBQuery.Create(nil);

    try

      qaux.Transaction := DM.IBTransaction1;
      qaux.Database    := DM.IBDatabase1;
      qaux.Close;
      qaux.SQl.Clear;
      qaux.SQL.Add(sql);
      qaux.Open;
      result := qaux.Fields[0].AsVariant;
      qaux.Close;

    except
      Alert('Erro na Consulta!');
    end;

  finally
    qaux.Free;
  end;

end;

function  pegaGenerator(GenName : String):integer;
Const Select_Generation = ' SELECT GEN_ID(%s,0) + 1 AS CODIGO FROM RDB$DATABASE ';
begin

  Result := select_1(Format(Select_Generation,[GenName]));

end;

function testaInteiro(valor : String):Boolean;
var
  teste : string;
  i : integer;
  numero : boolean;

begin

  teste := valor;

  for i := 1 to length(teste) do
  begin
    if (teste[i] = '0') or
       (teste[i] = '1') or
       (teste[i] = '2') or
       (teste[i] = '3') or
       (teste[i] = '4') or
       (teste[i] = '5') or
       (teste[i] = '6') or
       (teste[i] = '7') or
       (teste[i] = '8') or
       (teste[i] = '9') then
      numero := True
    else begin
      numero := False;
      break;
    end;
  end;

  result := numero;

end;

Function Retorna_Codigo_Generetor(Generetor: String) : Integer;
Const
  Select_Generation =
    ' SELECT GEN_ID(%s,0) + 1 AS CODIGO FROM RDB$DATABASE ';

begin

  Result := select_1(Format(Select_Generation, [Generetor]));

end;

procedure fun_dblookup(Key: Word; Shift: TShiftState; lookup : TDBLookupComboBox);
begin

  if Key = vk_delete then
    lookup.KeyValue := null
  else if Key = vk_f5 then
  begin

    lookup.ListSource.DataSet.Close;
    lookup.ListSource.DataSet.Open;

  end;

end;


end.
