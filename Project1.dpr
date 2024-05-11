program Project1;

uses
  //uTToastMessage in 'uTToastMessage.pas',
  Vcl.Forms,
  Unit2 in 'Unit2.pas' {Form2},

  uTToastMessage in 'uTToastMessage.pas',
  Unit1 in 'Unit1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
