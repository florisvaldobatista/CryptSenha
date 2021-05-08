unit uCrypt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    function crypt(Action, Src: String): String;
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
//Usa-se C para Criptografar e D para Descriptografar
//Ex de Criptografia:

Edit2.text:= Crypt('C',Edit1.text);

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  //Ex: de Descriptografia

Edit3.text:= Crypt('D',(Edit2.Text));
end;

function TForm1.crypt(Action, Src: String): String;
Label Fim;
var KeyLen : Integer;
       KeyPos : Integer;
       OffSet : Integer;
       Dest, Key : String;
       SrcPos : Integer;
       SrcAsc : Integer;
       TmpSrcAsc : Integer;
       Range : Integer;
begin
       if (Src = '') Then
       begin
               Result:= '';
               Goto Fim;
       end;
       Key := 'AQUI VOCE CRIA SUA CHAVE PARA CRIPTOGRAFAR';
       Dest := '';
       KeyLen := Length(Key);
       KeyPos := 0;
       SrcPos := 0;
       SrcAsc := 0;
       Range := 256;
       if (Action = UpperCase('C')) then
       begin
               Randomize;
               OffSet := Random(Range);
               Dest := Format('%1.2x',[OffSet]);
               for SrcPos := 1 to Length(Src) do
               begin
                       Application.ProcessMessages;
                       SrcAsc := (Ord(Src[srcPos]) + OffSet) Mod 255;
                       if KeyPos < KeyLen then KeyPos := KeyPos + 1 else KeyPos := 1;

                       SrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
                       Dest := Dest + Format('%1.2x',[srcAsc]);
                       OffSet := SrcAsc;
               end;
       end
       Else if (Action = UpperCase('D')) then
       begin
               OffSet := StrToInt('$' + copy(Src,1,2));//<--------------- adiciona o $ entra as aspas simples
               SrcPos := 3;
               repeat
                       SrcAsc := StrToInt('$' + copy(Src,SrcPos,2));//<--------------- adiciona o $ entra as aspas simples
                       if (KeyPos < KeyLen) Then KeyPos := KeyPos + 1 else KeyPos := 1;
                       TmpSrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
                       if TmpSrcAsc <= OffSet then TmpSrcAsc := 255 + TmpSrcAsc - OffSet
                       else TmpSrcAsc := TmpSrcAsc - OffSet;
                       Dest := Dest + Chr(TmpSrcAsc);
                       OffSet := SrcAsc;
                       SrcPos := SrcPos + 2;
               until (SrcPos >= Length(Src));
       end;
       Result:= Dest;
Fim:
end;
end.
