unit uSubString;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBClient, Buttons, ExtCtrls, StrUtils, Mask;

type
  TForm1 = class(TForm)
    edtMainString: TEdit;
    edtPosStart: TEdit;
    edtPosFinal: TEdit;
    edtNewString: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    SpeedButton2: TSpeedButton;
    numPosStart: TMaskEdit;
    Label5: TLabel;
    numPosFinal: TMaskEdit;
    Label6: TLabel;
    procedure SpeedButton2Click(Sender: TObject);
  private
    function jumpChar(strMainString, strPos, jump: string): Integer;
    function receiveSubString(strMainString: string; start, final: Integer): string;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.SpeedButton2Click(Sender: TObject);
var
  posStart, posFinal: Integer;
  newString: string;
begin
  if (edtMainString.Text <> '') and (EdtPosStart.Text <> '') and (edtPosFinal.Text <> '') then
  begin
    //posStart recebe a posi��o inical da substring baseado no caractere e no tanto de pulos informados
    posStart := jumpChar(LowerCase(edtMainString.Text), LowerCase(EdtPosStart.Text), numPosStart.Text);

    //newString recece a string principal cortando a parte inicial informada
    newString := receiveSubString(LowerCase(edtMainString.Text), posStart + 1, Length(edtMainString.Text) + 1);

    //posFinal recebe a posi��o final da substring baseado no caractere e no tanto de pulos informados
    posFinal := jumpChar(newString, LowerCase(edtPosFinal.Text), numPosFinal.Text);

    //edtNewString.Text recebe a newString removendo a parte final informada
    edtNewString.Text := receiveSubString(newString, 0, posFinal - 1);
  end
  else
    ShowMessage('Preecha o campo de frase principal' + #13#10 +
        'Preecha campo de caractere inicial' + #13#10 +
        'Preecha o campo de caractere final');
end;

function TForm1.jumpChar(strMainString, strPos, jump: string): Integer;
var
  pos, i: Integer;
begin
  pos := PosEx(strPos, strMainString, 0);
  for i:=1 to StrToInt(jump) do
    pos := PosEx(strPos, strMainString, pos + 1);

  Result := pos;
end;

function TForm1.receiveSubString(strMainString: string; start, final: Integer): string;
begin
  Result := TrimRight(copy(
    strMainString,
    start,
    final
  ));
end;

end.
