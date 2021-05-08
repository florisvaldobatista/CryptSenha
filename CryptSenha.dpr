program CryptSenha;

uses
  Vcl.Forms,
  uCrypt in 'uCrypt.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
