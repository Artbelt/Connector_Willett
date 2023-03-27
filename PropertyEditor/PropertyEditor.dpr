program PropertyEditor;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1};

{$E exe}

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'PropertyEditor';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
