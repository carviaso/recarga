unit UPrompt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFPrompt = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrompt: TFPrompt;

implementation

{$R *.dfm}

procedure TFPrompt.BitBtn1Click(Sender: TObject);
begin
  Edit1.Clear;
  Close;
end;

procedure TFPrompt.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

end.
