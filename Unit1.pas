unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CPort, StdCtrls, CPortCtl,  FileCtrl,
   ComCtrls, RzTreeVw, RzShellCtrls, RzListVw, RzLstBox, ExtCtrls, RzPanel,
  RzLabel,   ShellCtrls, RzTabs, RzSplit, RzButton, ImgList,
  Menus, Mask, RzEdit, RzStatus, RzBmpBtn, ShellAPI, RzShellDialogs, Registry,
  AdvCombo, RzCommon, AdvGlassButton, AdvSmoothPanel, rtflabel,
  AdvTouchKeyboard, AdvPanel, AdvShape, IniFiles;

type
  TForm1 = class(TForm)
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    ComPort1: TComPort;
    ComDataPacket1: TComDataPacket;
    RzSplitter1: TRzSplitter;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    PAN1: TRzPanel;
    btn4: TRzButton;
    pm1: TPopupMenu;
    N4: TMenuItem;
    RzLabel5: TRzLabel;
    N5: TMenuItem;
    PropertyEditor1: TMenuItem;
    PropertyEditor2: TMenuItem;
    PopupMenu2: TPopupMenu;
    N6: TMenuItem;
    N8: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    OpenDialog: TRzOpenDialog;
    ABox1: TAdvComboBox;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N21: TMenuItem;
    N7: TMenuItem;
    N13: TMenuItem;
    RzPanel4: TRzPanel;
    RzPanel5: TRzPanel;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    rzbtbtn1: TRzBitBtn;
    RzBitBtn5: TRzBitBtn;
    RzBitBtn4: TRzBitBtn;
    RzButton1: TRzButton;
    RzBitBtn1: TRzBitBtn;
    Label1: TLabel;
    Memo3: TMemo;
    RzPanel6: TRzPanel;
    Memo2: TMemo;
    Edit1: TEdit;
    Memo1: TMemo;
    Button4: TButton;
    Button5: TButton;
    N23: TMenuItem;
    N25: TMenuItem;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    RzButton2: TRzButton;
    tmr1: TTimer;
    pm2: TPopupMenu;
    Cj1: TMenuItem;
    RzPanel3: TRzPanel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzStatusBar2: TRzStatusBar;
    RzClockStatus1: TRzClockStatus;
    RzStatusPane3: TRzStatusPane;
    RzStatusPane2: TRzStatusPane;
    RzStatusPane4: TRzStatusPane;
    RzStatusPane5: TRzStatusPane;
    RzPanel7: TRzPanel;
    lv1: TShellListView;
    lv2: TShellListView;
    RzLabel2: TRzLabel;
    RzLabel1: TRzLabel;
    mmo1: TMemo;
    waitpanel: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure ComDataPacket1Packet(Sender: TObject; const Str: String);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure lv1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure lv2DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure lv2DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure FormPaint(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure edt2Click(Sender: TObject);
    procedure rzbtbtn1Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure PAN1Paint(Sender: TObject);
    procedure RzBitBtn4Click(Sender: TObject);
    procedure PropertyEditor2Click(Sender: TObject);
    procedure RzStatusPane2Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N3DrawItem(Sender: TObject; ACanvas: TCanvas; ARect: TRect;
      Selected: Boolean);
    procedure N19Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure lv2DblClick(Sender: TObject);
    procedure lv1DblClick(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure RzButton1Click(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure tmr2Timer(Sender: TObject);
    procedure pnl1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sendLogoToWillett();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  EX:Boolean;
  ErrorStatus:string;
  ini:TIniFile;

implementation

uses Unit2,Unit3, Unit4, Unit5;

{$R *.dfm}
procedure StatusAnalize(sts:string);
var
  indicator:Integer;
  complexError:Boolean;

begin
{ОБРАБОТКА СВЕТОФОРА}
 // sts:='0001C';


  {скрываем все панельки ошибок}



  if Length(sts)<>0 then   //если нет ответа от маркиратора исключаем ошибку
  begin  
    try




       {ОБРАБОТКА СООБЩЕНИЙ}
       Delete(sts,5,1);
       {complexerror служит для определения не описанной ситуации - когда несколько битов активны}
       complexError:=True;
      {ни какой из битов не активен}
      if sts='0000' then
        begin
          complexError:=False;
        end;
      {0 бит активен}
      if sts='0001' then
        begin
          complexError:=False;

        end;
      {1 бит активен}
      if sts='0002' then
        begin
          complexError:=False;


        end;
      {2 бит активен}
      if sts='0004' then
        begin
          complexError:=False;

        end;
      {3 бит активен}
      if sts='0008' then
        begin
          complexError:=False;

        end;
      {4 бит активен}
      if sts='0010' then
        begin
          complexError:=False;

        end;
      {5 бит активен}
      if sts='0020' then
        begin
          complexError:=False;

        end;
      {6 бит активен}
      if sts='0040' then
        begin
          complexError:=False;

        end;
      {7 бит активен}
      if sts='0080' then
        begin
          complexError:=False;

        end;
      {8 бит активен}
      if sts='0100' then
        begin
          complexError:=False;

        end;
      {9 бит активен}
      if sts='0200' then
        begin
          complexError:=False;

        end;
      {10 бит активен}
      if sts='0400' then
        begin
          complexError:=False;

        end;
      {11 бит активен}
      if sts='0800' then
        begin
          complexError:=False;

        end;
      {12 бит активен}
      if sts='1000' then
        begin
          complexError:=False;

        end;
      {13 бит активен}
      if sts='2000' then
        begin
          complexError:=False;

        end;
      {14 бит активен}
      if sts='4000' then
        begin
          complexError:=False;

        end;
      {15 бит активен}
      if sts='8000' then
        begin
          complexError:=False;

        end;
      {complexError несколько битов активны}
      if complexError=True then
        begin
          complexError:=False;

        end;
        {освобождаем переменную чтобы при следующем цикле опроса если не будет ответа это увидеть}
        sts:='';
    except
 //
      end;
    end
  else
  begin

  end;

end;


Procedure ShutdownComputer;
  var
    ph:THandle;
    tp,prevst:TTokenPrivileges;
    rl:DWORD;
begin
  OpenProcessToken(GetCurrentProcess,TOKEN_ADJUST_PRIVILEGES or
  TOKEN_QUERY,ph);
  LookupPrivilegeValue(Nil,'SeShutdownPrivilege',tp.Privileges[0].Luid);
  tp.PrivilegeCount:=1;
  tp.Privileges[0].Attributes:=2;
  AdjustTokenPrivileges(ph,FALSE,tp,SizeOf(prevst),prevst,rl);
  ExitWindowsEx(EWX_SHUTDOWN or EWX_POWEROFF,0);
end;


procedure TForm1.Button1Click(Sender: TObject);
var
z,z1,z2:PAnsiChar;
x,x1:integer;
t:AnsiChar;
begin
z:=#02;
z1:=#03;
z2:=#10;

x:=length(z);
x1:=length(z1);

comport1.Write(z,x);
comport1.Write('T00000002500010Manufactured on: ',32);
comport1.Write(z2,x);
comport1.Write('00000102500010@Date',19);
comport1.Write(z2,x);
comport1.Write('00000001600010Expires on: ',26);
comport1.Write(z2,x);
comport1.Write('00000101600010@Expiry Date',26);
comport1.Write(z1,x1);
end;

procedure TForm1.ComDataPacket1Packet(Sender: TObject; const Str: String);
begin
 if Length(Str)=7 then
    begin ErrorStatus:=Str;
          Delete(ErrorStatus,1,1);
          Delete(ErrorStatus,6,1);
    end
    else
     begin
       memo3.Lines.Add('<--'+str);
     end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
z,z1:PAnsiChar;
begin
z:=#02;
z1:=#03;
comport1.WriteStr(z);
comport1.WriteStr('H');
comport1.Writestr(z1);
end;

procedure TForm1.Button3Click(Sender: TObject);
var
z,z1:PAnsiChar;
x,x1:integer;
begin
z:=#02;
z1:=#03;
comport1.WriteStr(z);
comport1.WriteStr('E');
comport1.WriteStr(z1);

end;

procedure TForm1.Button4Click(Sender: TObject);
var
in_string:string;{входящая строка}
temp_string:string;{строка временного хранения данных}
x,y:integer;{счетчик цикла}
begin
{вспомагательные переменные}
memo1.Lines.Clear;
temp_string:='';
x:=1;
{получили строку}
in_string:=Edit1.Text;
{обрезаем [STX] и [ETX]}
Delete(in_string,1,5);
Delete(in_string,length(in_string)-4,5);
//memo1.Lines.Add(in_string);
{ищем [LF] и разбиваем строку на отрезки между [LF]}
while x<= length(in_string) do
  begin
  if (in_string[x]='[')and(in_string[x+1]='L')and(in_string[x+2]='F')and(in_string[x+3]=']') then
    begin{если нашлось [LF]}
    Memo1.Lines.Add(temp_string);
    temp_string:='';
    x:=x+4;
    end
    else
    begin
    temp_string:=temp_string+in_string[x];
    x:=x+1;
    end;
end;
Memo1.Lines.Add(temp_string);
temp_string:='';
end;

procedure TForm1.Button5Click(Sender: TObject);
var
c:PAnsiChar;{символ для отправки [STX][ETX][LF]}
x:integer;
text,text1:string;{контейнер для отправки текста}
kostyl:Integer;
begin

{несколько раз сделаем отправку так как не понятная ошибка, отправляютсЯ в маркиратор все сообщения
нормально, кроме Альфы 101-102, поставим костыль - сделаем несколько отправок подряд}


{показываем панель ожидания}
waitpanel.Visible := True;

for kostyl := 0 to 2 do
    begin

        {отправка признака начала сообщения}
        c:=#02;
        comport1.WriteStr(c);
        {отправка тела сообщения}
        x:=0;
        text:='';
        text1:='11111111111111111111';
        while x< memo1.Lines.Count do
          begin
            text:=memo1.Lines[x];
            comport1.WriteStr(text);
            text:='';
            x:=x+1;
            c:=#10;
            if x<(memo1.Lines.Count) then comport1.WriteStr(c);  {если последняя строка в memo1 то разделитель не нужен}
          end;

        {отправка признака конца сообщения}
        c:=#03;
        comport1.WriteStr(c);
        Application.ProcessMessages;

          case kostyl of
            0: waitpanel.Caption :='Отправка.';
            1: waitpanel.Caption :='Отправка..';
            2: waitpanel.Caption :='Отправка...';
          end;

         Sleep(200);
    end;

    {прячем панель ожидания}
    waitpanel.Visible := False;

end;

procedure TForm1.Button6Click(Sender: TObject);
  var
   x:string;
begin
  x:=edit1.Text;
  comport1.WriteStr(x);
end;

procedure TForm1.lv1DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
if (Source <> Sender) then Accept:=Source is TShellListView
else Accept:=false;
form1.Repaint;
end;

procedure TForm1.lv2DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
if (Source <> Sender) then Accept:=Source is TShellListView
else Accept:=false;
Form1.Repaint;
end;

procedure TForm1.lv2DragDrop(Sender, Source: TObject; X, Y: Integer);
var
file1,file2:string;
ExB: WORD;
begin
file1:=ExtractFilePath(Application.Exename)+'Messages\'
+ExtractFileName(lv1.Folders[lv1.Selected.index].PathName);
file2:=ExtractFilePath(Application.Exename)+'Temporary\'
+ExtractFileName(lv1.Folders[lv1.Selected.index].PathName);

if CopyFile(PChar(file1),PChar(file2),true) then
else
ExB:=MessageBox(handle,pchar('Не удалось добавить сообщение к активным. Наиболее вероятная причина в том что оно уже присутствует в списке. '),pchar('Системное сообщение'),48);
lv2.Refresh;
lv1.Refresh;
form1.Repaint;

RZSplitter1.Repaint;
end;

procedure TForm1.FormPaint(Sender: TObject);
var
  path:string;
begin

{располагаем панель ожидания по центру экрана  size_of_panel:150x40}
waitpanel.Left :=(lv2.Width div 2) - (waitpanel.Width div 2);
waitpanel.Top :=(lv2.Height div 2) - (waitpanel.Height div 2);


path:= ExtractFilePath(Application.Exename);
path:=path+'Messages';
lv1.Root:=path;
path:= ExtractFilePath(Application.Exename);
path:=path+'Temporary';
lv2.Root:=path;


PAN1.Top:=Form1.Height div 3;
PAN1.Left:=(Form1.Width div 2)-(PAN1.Width div 2);



end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
Var ExB: WORD;
begin
   if EX=true then
      begin  {
       ExB:=MessageBox(handle,pchar('Программа будет закрыта, продолжить?'),pchar('Системное сообщение'),33);
       if Exb=IDOK then ClearDir(ExtractFilePath(Application.Exename)+'Temporary');
       if Exb=IDCANCEL then  CanClose := False; }
       end
      else
      begin
         ExB:=MessageBox(handle,pchar('Программа будет закрыта, список активных сообщений не удаляется'),pchar('Системное сообщение'),33);
         //if Exb=IDOK then ClearDir(ExtractFilePath(Application.Exename)+'Temporary');
         if Exb=IDCANCEL then  CanClose := False;
      end;

end;

procedure TForm1.N1Click(Sender: TObject);
begin
  ClearDir(ExtractFilePath(Application.Exename)+'Temporary');
  lv2.Refresh;
end;

procedure TForm1.N3Click(Sender: TObject);
  var
    f: Textfile;
    ExB: WORD;
    x:integer;
    s,stx:string;
begin
  RzBitBtn1.Click;{переподключаемся к принтеру}
  edit1.Text:='';
  memo2.Lines.Clear;
  memo1.Lines.Clear;

{**********************посылаем параметры (расписано ниже)**************}
  try

    S:=ExtractFilePath(Application.Exename)+'Settings\'+ExtractFileName(lv2.Folders[lv2.Selected.index].PathName);
    memo2.Lines.LoadFromFile(s);
    for x:=0 to memo2.lines.Count-1 do
      begin
        edit1.Text:=Edit1.Text+memo2.Lines[x];
      end;
    {преобразуем в строкии загружаем в мемо1}
    button4.Click;
    {посылаем сообщение в маркиратор}
    button5.Click;
  {************************************************************************}
    s:='';
    edit1.Text:='';
    memo2.Lines.Clear;
    memo1.Lines.Clear;
  {**********************ПОСЫЛАЕМ СООБЩЕНИЕ******************************}

    {загружаем файл в мемо2}
    memo2.Lines.LoadFromFile(lv2.Folders[lv2.Selected.index].PathName);
    {из мемо2 загружаем в строку edit}
    for x:=0 to memo2.lines.Count-1 do
      begin
          edit1.Text:=Edit1.Text+memo2.Lines[x];
      end;
    {преобразуем в строкии загружаем в мемо1}
    button4.Click;
    {посылаем сообщение в маркиратор}
    button5.Click;
    {RZLabel4 пишем имя файла загруженного}
    s:=ExtractFileName(lv2.Folders[lv2.Selected.index].PathName);
    Delete(s,length(s)-3,4);
    RzLabel4.Caption:=s;
    Memo3.Lines.Add('-->'+s);
  except
    ExB:=MessageBox(handle,pchar('Во время отправки сообщения произошла ошибка. Возможные варианты ошибок: 1) сообщение не было выделено 2) отсутствует файл настройки 3) не доступен COM порт. Повторите попытку. Если ошибка будет повторяться - обратитесь к администратору.'),pchar('Ошибка отправки сообщения'),48);
  end;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  form1.Close;
end;

procedure TForm1.RzBitBtn1Click(Sender: TObject);
begin
  comport1.Connected:=false;
  memo3.Lines.Add('Disconnect');
  comport1.Connected:=true;
  memo3.Lines.Add('Connect');
end;

procedure TForm1.RzBitBtn2Click(Sender: TObject);
var
  z,z1:PAnsiChar;
  x,x1:integer;
begin
  z:=#02;
  z1:=#03;
  comport1.WriteStr(z);
  comport1.WriteStr('E');
  comport1.WriteStr(z1);
  //memo3.Lines.Add('->errors');
end;

procedure TForm1.RzBitBtn3Click(Sender: TObject);
var
  z,z1:PAnsiChar;
begin
  z:=#02;
  z1:=#03;
  comport1.WriteStr(z);
  comport1.WriteStr('H');
  comport1.Writestr(z1);
  memo3.Lines.Add('->number software');

end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  Button4.Click;    {преобразуем в строкии загружаем в мемо1}
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  Button5.Click;
end;

procedure TForm1.btn4Click(Sender: TObject);
var
  z,z1,z2:PAnsiChar;
begin
    {переподключение макриратора}
  ComPort1.Connected:=false;
  ComPort1.Connected:=True;
  {запись бригады}
  PAN1.Visible:=False;
  RZStatusPane2.Caption:=ABox1.Text;
  z:=#02;
  z1:=#03;
  z2:=#10;
  comport1.WriteStr(z);
  comport1.WriteStr('UUF3');
  comport1.WriteStr(z2);
  comport1.WriteStr(ABox1.Text);
  comport1.WriteStr(z1);
  memo3.Lines.Add('-->Бригада '+ABox1.Text);
    {выбор TEST MESSAGE}
  comport1.WriteStr(z);
  comport1.WriteStr('MTEST');
  comport1.WriteStr(z1);
  MEMO3.Lines.Add('-->TEST MESSAGE')
end;

procedure TForm1.edt2Click(Sender: TObject);
begin
  PAN1.Visible:=True;
end;

procedure TForm1.rzbtbtn1Click(Sender: TObject);
var
  z,z1:PAnsiChar;
  x,x1:integer;
begin
  z:=#02;
  z1:=#03;
  comport1.WriteStr(z);
  comport1.WriteStr('MTEST');
  comport1.WriteStr(z1);
  MEMO3.Lines.Add('[STX]MTEST[ETX]')
end;

procedure TForm1.N4Click(Sender: TObject);
var
  file1,file2:string;
  ExB: WORD;
begin
  try
    file1:=ExtractFilePath(Application.Exename)+'Messages\'
    +ExtractFileName(lv1.Folders[lv1.Selected.index].PathName);
    file2:=ExtractFilePath(Application.Exename)+'Temporary\'
    +ExtractFileName(lv1.Folders[lv1.Selected.index].PathName);
    CopyFile(PChar(file1),PChar(file2),true)
  except
    ExB:=MessageBox(handle,pchar('Не удалось добавить сообщение к активным. Вероятно оно уже добавлено.'),
    pchar('Системное сообщение'),48);
  end;
  lv2.Refresh;
  lv2.Refresh;
end;

procedure TForm1.PAN1Paint(Sender: TObject);
begin
  PAN1.Top:=Form1.Height div 3;
  PAN1.Left:=(Form1.Width div 2)-(PAN1.Width div 2);
end;

procedure TForm1.RzBitBtn4Click(Sender: TObject);
begin
  winexec('PropertyEditor.exe', SW_SHOW);
end;

procedure TForm1.PropertyEditor2Click(Sender: TObject);
begin
  winexec('PropertyEditor.exe', SW_SHOW);
end;

procedure TForm1.RzStatusPane2Click(Sender: TObject);
begin
  PAN1.Visible:=True;
end;

procedure TForm1.N8Click(Sender: TObject);
begin
  EX:=True;
  form1.Close;
end;

procedure TForm1.N10Click(Sender: TObject);
begin
  Form1.TabSheet2.TabVisible:=true;
end;

procedure TForm1.N11Click(Sender: TObject);
var
  s:string;
begin
  s:=ExtractFileName(lv2.Folders[lv2.Selected.index].PathName);
  s:='Temporary\'+s;
    try DeleteFile(s);
    lv2.Refresh;
    except
    ShowMessage('Ошибка! Не удалось удалить файл '+IntToStr(GetLastError));
    end;
end;

procedure TForm1.N13Click(Sender: TObject);
begin
  //Перезапуск программы
  ComPort1.Connected:=False;
  Application.Terminate;
  Application.Free;
  winexec('Connector_A.exe', SW_SHOW);
end;

procedure TForm1.N15Click(Sender: TObject);      //Запуск редактора логотипов.
begin
  winexec('LogoEditor\LogoEditor.exe', SW_SHOW);
end;

procedure TForm1.sendLogoToWillett();   {ОТПРАВКА ЛОГОТИПА А В МАРКИРАТОР}
  var
  Exb:Word;
  x:integer;
  s:string;
begin
  if OpenDialog.Execute then
  begin
    RzBitBtn1.Click;{переподключаемся к принтеру}
    edit1.Text:='';
    memo2.Lines.Clear;
    memo1.Lines.Clear;
   {**********************посылаем параметры (расписано ниже)**************}
    try
       S:=OpenDialog.FileName;
       memo2.Lines.LoadFromFile(s);
       for x:=0 to memo2.lines.Count-1 do
        begin
          edit1.Text:=Edit1.Text+memo2.Lines[x];
        end;
          {преобразуем в строкии загружаем в мемо1}
          button4.Click;
          {посылаем сообщение в маркиратор}
          button5.Click;
         S:=ExtractFileName(OpenDialog.FileName);
         Delete(S,length(s)-4,5);
         MessageDlg('Логотип отправлен в маркиратор под именем '+s,  mtInformation, [mbOK], 0);
         MEMO3.Lines.Add('-->logo '+s);
      except
       ExB:=MessageBox(handle,pchar('Во время отправки произошла ошибка.'),pchar('Ошибка отправки'),48);
    end;
  end;
end;

procedure TForm1.N16Click(Sender: TObject);   {ОТПРАВКА ЛОГОТИПА А В МАРКИРАТОР}
begin
  sendLogoToWillett();
end;  

//procedure TForm1.N16Click(Sender: TObject);   {ОТПРАВКА ЛОГОТИПА А В МАРКИРАТОР}
//  var
//  Exb:Word;
//  x:integer;
//  s:string;
//begin
//  if OpenDialog.Execute then
//  begin
//    RzBitBtn1.Click;{переподключаемся к принтеру}
//    edit1.Text:='';
//    memo2.Lines.Clear;
//    memo1.Lines.Clear;
//   {**********************посылаем параметры (расписано ниже)**************}
//    try
//       S:=OpenDialog.FileName;
//       memo2.Lines.LoadFromFile(s);
//       for x:=0 to memo2.lines.Count-1 do
//        begin
//          edit1.Text:=Edit1.Text+memo2.Lines[x];
//        end;
//          {преобразуем в строкии загружаем в мемо1}
//          button4.Click;
//          {посылаем сообщение в маркиратор}
//          button5.Click;
//         S:=ExtractFileName(OpenDialog.FileName);
//         Delete(S,length(s)-4,5);
//         MessageDlg('Логотип отправлен в маркиратор под именем '+s,  mtInformation, [mbOK], 0);
//         MEMO3.Lines.Add('-->logo '+s);
//      except
//       ExB:=MessageBox(handle,pchar('Во время отправки произошла ошибка.'),pchar('Ошибка отправки'),48);
//    end;
//  end;
//end;

procedure TForm1.N18Click(Sender: TObject);
begin
//
end;

procedure TForm1.N17Click(Sender: TObject);
begin
//Завершение работы компьютера
  EX:=True;
  ShutdownComputer;
end;

procedure TForm1.N3DrawItem(Sender: TObject; ACanvas: TCanvas;
  ARect: TRect; Selected: Boolean);
begin
  ACanvas.Font.Color:=clblue;
  ACanvas.Font.Size:=13;
  ACanvas.TextOut(0,0,'    Отправить сообщение в Willett     ');
end;

procedure TForm1.N19Click(Sender: TObject);
var
  reg:TRegistry;
  x,x1:string;

begin
  reg:=TRegistry.Create;
  Reg.RootKey:=HKEY_LOCAL_MACHINE;
  Reg.OpenKey('Software',true);
  Reg.OpenKey('Microsoft',true);
  Reg.OpenKey('Windows Nt',true);
  Reg.OpenKey('CurrentVersion',true);
  Reg.OpenKey('Winlogon',true);
  Reg.WriteString('Shell',Application.ExeName);
  Reg.CloseKey;
  Reg.Free;

end;

procedure TForm1.N21Click(Sender: TObject);
var
  reg:TRegistry;
  x,x1:string;
begin
  reg:=TRegistry.Create;
  Reg.RootKey:=HKEY_LOCAL_MACHINE;
  Reg.OpenKey('Software',true);
  Reg.OpenKey('Microsoft',true);
  Reg.OpenKey('Windows Nt',true);
  Reg.OpenKey('CurrentVersion',true);
  Reg.OpenKey('Winlogon',true);
  Reg.WriteString('Shell','explorer.exe');
  Reg.CloseKey;
  Reg.Free;
end;

procedure TForm1.lv2DblClick(Sender: TObject);
begin
  N3.Click;
end;

procedure TForm1.lv1DblClick(Sender: TObject);
begin
  N4.Click;
end;

procedure TForm1.N7Click(Sender: TObject);
begin
EX:=False;
form1.Close;
end;

procedure TForm1.N22Click(Sender: TObject);
begin
  Tform4.Create(Self);

end;

procedure TForm1.RzButton1Click(Sender: TObject);
begin
 winexec('C:\windows\system32\osk.exe', SW_SHOW);
end;

procedure TForm1.N23Click(Sender: TObject);
begin
 winexec('C:\windows\system32\osk.exe', SW_SHOW);
end;

procedure TForm1.N25Click(Sender: TObject);
begin
  winexec('CyrilicConverter\Cyrillic_Converter.exe', SW_SHOW);
end;

procedure TForm1.tmr1Timer(Sender: TObject);
begin
  RzBitBtn2.Click;
  StatusAnalize(ErrorStatus); //анализ состояния маркиратора
end;

procedure TForm1.tmr2Timer(Sender: TObject);
begin
  Memo3.Lines.Clear;
end;

procedure TForm1.pnl1Click(Sender: TObject);
begin
   Cj1.Click;

end;

procedure TForm1.FormCreate(Sender: TObject);
var
  PORT_NUMBER:string;
begin
  Ini:=TiniFile.Create(extractfilepath(paramstr(0))+'settings.ini');
  PORT_NUMBER:=ini.ReadString('settings','Port','COM1');
  ini.Free;
  ComPort1.Port:=PORT_NUMBER;
  ComPort1.Connected:=True;
end;

end.
