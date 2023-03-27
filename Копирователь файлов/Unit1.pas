unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzButton;

type
  TForm1 = class(TForm)
    btn1: TButton;
    btn2: TButton;
    RzButton1: TRzButton;
    edt1: TEdit;
    edt2: TEdit;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure RzButton1Click(Sender: TObject);
    procedure edt1KeyPress(Sender: TObject; var Key: Char);
    procedure FormPaint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
var
   f: Textfile;
   x:integer;
   s:string;
begin
   for x:=1602 to 1799 do
   begin
   s:='AF '+IntToStr(x)+'.txt';
   AssignFile(f, s);
   ReWrite(f);
   Writeln(f, '[STX]T01000002500014@UF1[LF]');
   Writeln(f, '01000102500014 [LF]');
   Writeln(f, '03000202500014AF'+inttostr(x)+'[LF]');
   Writeln(f, '00000302500014  [LF]');
   Writeln(f, '00000401600014    [LF]');
   Writeln(f, '00000502500014@UF2[LF]');
   Writeln(f, '00000602500014H10[LF]');
   Writeln(f, '00000701600014@UF3[ETX]');
   Closefile(f);
   end;

end;

procedure TForm1.btn2Click(Sender: TObject);
var
   f: Textfile;
   x:integer;
   s:string;
begin
   for x:=1602 to 1799 do
   begin
   s:='AF '+IntToStr(x)+'.txt';
   AssignFile(f, s);
   ReWrite(f);
   Writeln(f, '[STX]P10050080000000016001250[ETX]');
   Closefile(f);
   end;
end;

procedure TForm1.RzButton1Click(Sender: TObject);
var
   f: Textfile;
   x:integer;
   s:string;
begin
   for x:=1601 to 1799 do
   begin
   s:='AF '+IntToStr(x)+'.txt';
   AssignFile(f, s);
   ReWrite(f);
   Writeln(f, 'Высота печатающей головки - ');
   Closefile(f);
end;
end;

procedure TForm1.edt1KeyPress(Sender: TObject; var Key: Char);
var
   f: Textfile;
   x:integer;
   s:string;
begin
if Key=#13 then
  begin
   s:='AF '+edt2.text+'.txt';
   AssignFile(f, s);
   ReWrite(f);
   Writeln(f, 'Высота печатающей головки - уровень "'+edt1.text+'"');
   Closefile(f);
   edt2.text:=IntToStr(StrToInt(edt2.Text)+1);
   edt1.SetFocus;
   edt1.SelectAll;
  end;

end;

procedure TForm1.FormPaint(Sender: TObject);
begin
edt1.SetFocus;
end;

end.
