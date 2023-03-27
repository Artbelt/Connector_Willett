unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, RzEdit, StdCtrls, RzLabel, RzRadChk, Mask, RzSpnEdt,
  ExtCtrls, RzForms;

type
  TForm1 = class(TForm)
    edt1: TRzSpinEdit;
    edt2: TRzSpinEdit;
    edt3: TRzSpinEdit;
    edt4: TRzSpinEdit;
    edt5: TRzSpinEdit;
    edt6: TRzSpinEdit;
    edt7: TRzSpinEdit;
    RzCheckBox1: TRzCheckBox;
    RzCheckBox2: TRzCheckBox;
    RzCheckBox3: TRzCheckBox;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    edt8: TRzEdit;
    RzButton1: TRzButton;
    Edit1: TEdit;
    RzLabel7: TRzLabel;
    edt9: TEdit;
    procedure RzButton1Click(Sender: TObject);
    procedure edt1KeyPress(Sender: TObject; var Key: Char);
    procedure edt2KeyPress(Sender: TObject; var Key: Char);
    procedure edt3KeyPress(Sender: TObject; var Key: Char);
    procedure edt4KeyPress(Sender: TObject; var Key: Char);
    procedure edt5KeyPress(Sender: TObject; var Key: Char);
    procedure edt6KeyPress(Sender: TObject; var Key: Char);
    procedure edt7KeyPress(Sender: TObject; var Key: Char);
    procedure RzCheckBox1KeyPress(Sender: TObject; var Key: Char);
    procedure RzCheckBox2KeyPress(Sender: TObject; var Key: Char);
    procedure RzCheckBox3KeyPress(Sender: TObject; var Key: Char);
    procedure edt8KeyPress(Sender: TObject; var Key: Char);
    procedure RzButton1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure edt8Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.RzButton1Click(Sender: TObject);
var
   f: Textfile;
   x:integer;
   s,str:string;
begin

   str:='[STX]P';
   {******************************}
   if RzCheckBox1.Checked then str:=str+'1' else str:=str+'0'; {реверс}
   {******************************}
   if RzCheckBox2.Checked then str:=str+'1' else str:=str+'0'; {инверсия}
   {******************************}
   if edt2.Value<10 then str:=str+'00'+IntToStr(edt2.IntValue);  {ширина}
   if (edt2.Value>9) and (edt2.Value<100) then str:=str+'0'+IntToStr(edt2.IntValue);
   if edt2.Value>99 then str:=str+IntToStr(edt2.IntValue);
   {******************************}                          {высота}
   if edt3.Value<10 then str:=str+'0'+IntToStr(edt3.IntValue);
   if edt3.Value>9 then str:=str+IntToStr(edt3.IntValue);
   {******************************}
   str:=str+IntToStr(edt4.IntValue); {интервал}
   {******************************}
   if edt1.Value<10 then str:=str+'0000'+IntToStr(edt1.IntValue);                     {срок годности}
   if (edt1.Value>9) and (edt1.Value<100) then str:=str+'000'+IntToStr(edt1.IntValue);
   if (edt1.Value>99) and (edt1.Value<1000)then str:=str+'00'+IntToStr(edt1.IntValue);
   if (edt1.Value>999) and (edt1.Value<10000)then str:=str+'0'+IntToStr(edt1.IntValue);
   if (edt1.Value>9999) and (edt1.Value<100000)then str:=str+IntToStr(edt1.IntValue);
   {******************************}
   if edt5.Value<10 then str:=str+'0000'+IntToStr(edt1.IntValue);                     {задержка}
   if (edt5.Value>9) and (edt5.Value<100) then str:=str+'000'+IntToStr(edt5.IntValue);
   if (edt5.Value>99) and (edt5.Value<1000)then str:=str+'00'+IntToStr(edt5.IntValue);
   if (edt5.Value>999) and (edt5.Value<10000)then str:=str+'0'+IntToStr(edt5.IntValue);
   if (edt5.Value>9999) and (edt5.Value<100000)then str:=str+IntToStr(edt5.IntValue);
   {******************************}
   if edt6.Value<10 then str:=str+'0'+IntToStr(edt6.IntValue);  {повтор растра}
   if edt6.Value>9 then str:=str+IntToStr(edt6.IntValue);
   {******************************}
   if edt7.Value<10 then str:=str+'0'+IntToStr(edt7.IntValue);
   if edt7.Value>9 then str:=str+IntToStr(edt7.IntValue);
   {******************************}
   if RzCheckBox3.Checked then str:=str+'1' else str:=str+'0'; {скоростная печать}
   {******************************}
   str:=str+'[ETX]';

   s:=Edt8.text;
   S:='Settings\'+s;
   AssignFile(f,s);
   ReWrite(f);
   Write(f,str);
   Closefile(f);

end;

procedure TForm1.edt1KeyPress(Sender: TObject; var Key: Char);
begin
if key =#13 then edt2.SetFocus;
end;

procedure TForm1.edt2KeyPress(Sender: TObject; var Key: Char);
begin
if key =#13 then edt3.SetFocus;
end;

procedure TForm1.edt3KeyPress(Sender: TObject; var Key: Char);
begin
if key =#13 then edt4.SetFocus;
end;

procedure TForm1.edt4KeyPress(Sender: TObject; var Key: Char);
begin
if key =#13 then edt5.SetFocus;
end;

procedure TForm1.edt5KeyPress(Sender: TObject; var Key: Char);
begin
if key =#13 then edt6.SetFocus;
end;

procedure TForm1.edt6KeyPress(Sender: TObject; var Key: Char);
begin
if key =#13 then edt7.SetFocus;
end;

procedure TForm1.edt7KeyPress(Sender: TObject; var Key: Char);
begin
if key =#13 then RzCheckBox1.SetFocus;
end;

procedure TForm1.RzCheckBox1KeyPress(Sender: TObject; var Key: Char);
begin
if key =#13 then RzCheckBox2.SetFocus;
end;

procedure TForm1.RzCheckBox2KeyPress(Sender: TObject; var Key: Char);
begin
if key =#13 then RzCheckBox3.SetFocus;
end;

procedure TForm1.RzCheckBox3KeyPress(Sender: TObject; var Key: Char);
begin
if key =#13 then RzButton1.SetFocus;
end;

procedure TForm1.edt8KeyPress(Sender: TObject; var Key: Char);
var
  x:string;
begin
//if key =#13 then edt1.SetFocus;
  if Key=#13 then
  begin
   x:=Copy(edt8.Text,4,4);
   x:=IntToStr(strtoint(x)+1);
   edt8.Text:='AF '+x+'.txt';
  end;

end;

procedure TForm1.RzButton1KeyPress(Sender: TObject; var Key: Char);
var ExB: WORD;
begin
ExB:=MessageBox(handle,pchar('Настройки сохранены'),pchar('Сохранение'),64);
edt8.SetFocus;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
edt8.SetFocus;
edt8.SelStart:=5;
edt8.SelLength:=2;

end;

procedure TForm1.edt8Change(Sender: TObject);
var
   f: Textfile;
   s,str:string;
   rev,inv,wid,eht,gap,exp,dly,bld,drp,nln:string;
begin
try
   s:=Edt8.text;
   s:='Settings\'+s;
   AssignFile(f,s);
   Reset(F);
   Read(f,str);
   Closefile(f);
   edit1.Text:=str;

   rev:=copy(str,7,1);
   inv:=copy(str,8,1);
   wid:=copy(str,9,3);
   eht:=copy(str,12,2);
   gap:=copy(str,14,1);
   exp:=copy(str,15,5);
   dly:=copy(str,20,5);
   bld:=copy(str,25,2);
   drp:=copy(str,27,2);
   nln:=copy(str,29,1);


   edt1.IntValue:=StrToInt(exp);
   edt2.IntValue:=StrToInt(wid);
   edt3.IntValue:=StrToInt(eht);
   edt4.IntValue:=StrToInt(gap);
   edt5.IntValue:=StrToInt(dly);
   edt6.IntValue:=StrToInt(bld);
   edt7.IntValue:=StrToInt(drp);
   if rev = '0' then RzCheckBox1.Checked:=false else RzCheckBox1.Checked:=true;
   if inv = '0' then RzCheckBox2.Checked:=false else RzCheckBox2.Checked:=true;
   if nln = '0' then RzCheckBox3.Checked:=false else RzCheckBox3.Checked:=true;

except
   edit1.Text:='error';
   edt1.IntValue:=0;
   edt2.IntValue:=0;
   edt3.IntValue:=0;
   edt4.IntValue:=0;
   edt5.IntValue:=0;
   edt6.IntValue:=0;
   edt7.IntValue:=0;
   RzCheckBox1.Checked:=false;
   RzCheckBox2.Checked:=false;
   RzCheckBox3.Checked:=false;
end;

end;

end.
