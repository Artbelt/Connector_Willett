{******************************************************************************}
{                                                                              }
{      ������ ��� ������ � ���������� Connector_A                              }
{      ������������ ��� �������� ��������� ��� ����������� Willett 4xx         }
{      ������������ �� ����������� Willett430                                  }
{      �����: ��������� ����� artbelt.pooh@gmail.com                           }
{      version 3                                                               }
{                                                                              }
{******************************************************************************}
unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, RzEdit, RzLabel, RzPanel,
 RzSpnEdt, ImgList, ToolPanels, Menus, RzButton, Mask;

type
  TForm1 = class(TForm)
    btn1: TButton;
    edt2: TEdit;
    edt3: TEdit;
    lbl2: TLabel;
    lbl3: TLabel;
    ScrollBox1: TScrollBox;
    img1: TImage;
    edt4: TEdit;
    lbl5: TLabel;
    btn2: TBitBtn;
    btn3: TBitBtn;
    btn4: TButton;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    rzpnl1: TRzPanel;
    lbl1: TRzLabel;
    edt1: TEdit;
    lbl9: TRzLabel;
    edt5: TRzEdit;
    ImageList: TImageList;
    cbb1: TComboBox;
    RzToolbar1: TRzToolbar;
    btn7: TRzToolButton;
    btn8: TRzToolButton;
    RzSpacer1: TRzSpacer;
    btnBtnNew: TRzToolButton;
    btnBtnOpen: TRzToolButton;
    RzSpacer2: TRzSpacer;
    RzSpacer3: TRzSpacer;
    RzSpacer4: TRzSpacer;
    lbl4: TRzLabel;
    edt6: TEdit;
    tmr1: TTimer;
    lbl10: TLabel;
    edt7: TEdit;
    lbl11: TLabel;
    edt8: TEdit;
    edt9: TEdit;
    lbl12: TLabel;
    lbl13: TLabel;
    tmr2: TTimer;
    tmr3: TTimer;
    btn5: TButton;
    lbl14: TLabel;
    btn6: TButton;
    img2: TImage;
    btn9: TButton;
    tmr4: TTimer;
    tmr5: TTimer;
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure img1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure Mycanvas_Draw(Sender: TObject);
    procedure Mycanvas_Clear(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure cbb1Select(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    function peresechenie(Point:TPoint):Boolean;
    procedure edt1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tmr2Timer(Sender: TObject);
    procedure tmr3Timer(Sender: TObject);
    procedure length_analize;
    procedure get_preview;
    procedure btn6Click(Sender: TObject);
    procedure tmr4Timer(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure tmr5Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;



type
  TMyparagraph = class(TObject)
  public
    Pos:TRect;        {�����}
    Text:string;      {���������� ���������� ����}
    FontSize:integer; {������ ������}
    USERFIELD:string; {���������� ���� ������������}
    Y:Integer;  {������� �� Y = heigth/4}
  procedure Draw; virtual;
  end;


type
  TMyParagraphs = class(TList)
end;


{******************************************************************************}
{****************************** ���������� ************************************}
{******************************************************************************}



  var
  Form1: TForm1;
  List:Tmyparagraphs; {������, � ������� �������� ��� �����}
  BLOCK:TMyParagraph; {������ ������}
  click_point:TPoint; {����� �����}
{?} Cur_Point:TPoint;          {���������� ����� - ����������� ������ ���������}
{?} Prev_Point:TPoint;   {����� ����������� �����}
  Sel_Block_Number:Integer; {����� ����������� �����}
  GLOBAL_FOCUS_RECT:TRect;
  GLOBAl_Font_SIZE:integer;
implementation

uses Unit2;


{******************************************************************************}
{                        �������� �����                                        }
{******************************************************************************}
procedure TForm1.FormCreate(Sender: TObject);
begin
{�������� ������ ��� ����� ��������� �����}
List:=TMyParagraphs.Create;
{����� ������ ���������}
Cur_Point.X:=0;
Cur_Point.Y:=0;
{����� ����� ����������� �����}
Prev_Point.X:=0;
Prev_Point.Y:=0;
{���������� ���� �� ��������� ��� ������� ���������}
Sel_Block_Number:=0;
{������� ������ ����}
BLOCK:=TMyparagraph.Create;
{��������� ���� � ������}
List.Add(BLOCK);
end;

{******************************************************************************}
{                          �������� ����� scrollbox                            }
{******************************************************************************}
procedure TForm1.length_analize;
var
  i:Integer;
begin
   for i:=0 to List.Count-1 do
   begin
     if TMyparagraph(List[i]).Pos.Right > ScrollBox1.Width then
      ScrollBox1.HorzScrollBar.Range:=TMyparagraph(List[i]).Pos.Right+50;
   end;
end;

{******************************************************************************}
{                              C������� �������������� ���������               }
{******************************************************************************}
procedure Tform1.get_preview;
 var
  tBmp2: TBitmap;
  r: Trect;
  h: HWND;
begin
  img2.Width:=img1.Width div 2;
  img2.Height:=img1.Height div 2;
  h:=ScrollBox1.Handle;
  if h > 0 then
  GetWindowRect(h, r);
  tBmp2 := TBitmap.Create;
  tBmp2.Width := img1.Width;
  tBmp2.Height := img1.Height;
  BitBlt(tBmp2.Canvas.Handle, 0, 0, img1.Width, img1.Height, Form1.Canvas.Handle, 10, 40, SRCCOPY);
  img2.Picture.Bitmap.Assign(tBmp2);
  StretchBlt(img2.Canvas.Handle, 0, 0, (ScrollBox1.Width div 2), (ScrollBox1.Height div 2), tBmp2.Canvas.Handle, 0, 0, ScrollBox1.Width, ScrollBox1.Height, SRCCOPY);
  tBmp2.Free;

end;


{******************************************************************************}
{                               ��������� �����                                }
{******************************************************************************}
procedure TMyParagraph.Draw;
var
  BitMap:TBitmap;
  StrBitMap:TBitMap;
  BMP_temp:string;
begin
if (USERFIELD='') and(TEXT<>'') then  {���� �����}
 begin
    case FontSize of

    5: begin Form1.img1.Canvas.Font.Name:='Willett 5x5';
             Form1.img1.Canvas.Font.Size:=24;
        end;

    7: begin Form1.img1.Canvas.Font.Name:='Willett 7x5';
             Form1.img1.Canvas.Font.Size:=24;
         end;

    9: begin Form1.img1.Canvas.Font.Name:='Willett 9x6';
             Form1.img1.Canvas.Font.Size:=48;
        end;

    16: begin Form1.img1.Canvas.Font.Name:='Willett 16x11';
              Form1.img1.Canvas.Font.Size:=48;
         end;

    24: begin Form1.img1.Canvas.Font.Name:='Willett 7x5';
              Form1.img1.Canvas.Font.Size:=40;
         end;
   end;
        Form1.img1.Canvas.TextOut(pos.Left,pos.Top,text);
   end;

  if (USERFIELD<>'') and(TEXT='') then
  begin
    {��������� ����� ��������}
   BMP_temp:=USERFIELD;
   delete(BMP_temp,1,1);
   delete(BMP_temp,length(BMP_temp),1);
   BMP_temp:='bmp\'+BMP_temp+'.bmp';

   {�������� ��������}
   BitMap:=TBitmap.Create;
   BitMap.LoadFromFile(BMP_temp);

   {������ ��������}
   StrBitMap:=TBitmap.Create;
   StrBitMap.Height:=(BitMap.Height div 7)*4;
   StrBitMap.Width:=(BitMap.Width div 7)*4;
   StretchBlt(StrBitMap.Canvas.Handle,0,0,StrBitMap.Width,StrBitMap.Height,BitMap.Canvas.Handle,0,0,BitMap.Width,BiTMap.Height,SRCCOPY);

   {�����}
   pos.Right:=pos.Left+StrBitMap.Width;
   pos.Bottom:=pos.Top+StrBitMap.Height;

   {��������� ��������}
   Form1.img1.Canvas.Draw(pos.Left,pos.Top,StrBitMap);

   {������������ ����������}
   BitMap.Free;
   StrBitMap.Free;
   bmp_temp:='';
  end
end;



{$R *.dfm}

{******************************************************************************}
{               �������� ����������� ������ ��� ������� #13                    }
{******************************************************************************}
function TForm1.peresechenie(Point:TPoint):Boolean ;
var
  x:Integer;
begin
  Result:=False;
  for x := 0 to List.Count-1 do
  begin
   if PtInRect(TMyParagraph(List[x]).Pos,Point)=true then  Result:=True;
   if Point.X=0 then Result:=True;
  end;
end;

{******************************************************************************}
{                        ��������� ���� ������ �� ������                       }
{******************************************************************************}
procedure TForm1.MyCanvas_Draw(Sender: TObject);
var
  i:integer;
begin
  for I := 0 to List.Count - 1 do  TmyParagraph(List[i]).Draw;
end;

{******************************************************************************}
{                        ������� �����                                         }
{******************************************************************************}
procedure TForm1.MyCanvas_Clear(Sender: TObject);
begin
  img1.Canvas.Pen.Color:=clwhite;
  img1.canvas.Rectangle(img1.BoundsRect);
end;

{******************************************************************************}
{                                 "���������� �����"                           }
{******************************************************************************}
procedure TForm1.btn1Click(Sender: TObject);
begin
Cur_Point.X:=TMyparagraph(List[Sel_Block_Number]).Pos.Right;
Cur_Point.y:=TMyparagraph(List[Sel_Block_Number]).Pos.Top;
Block:=TMyparagraph.Create;
List.Add(BLOCK);
Sel_Block_Number:=List.Count-1;
edt1.Text:='';
end;

{******************************************************************************}
{                      ��������� ������ �� ���� ���������                      }
{******************************************************************************}
procedure TForm1.img1Click(Sender: TObject);
var
  {����� ������� � ������}
  i:Integer;
begin

  {��������� ��������� ����� ��� �����}
  Click_point.X:=Mouse.CursorPos.X-form1.Left-scrollbox1.Left-13;
  Click_point.Y:=Mouse.CursorPos.Y-form1.Top-scrollbox1.top-36;

   {����������� ������ ����� ����������� �����}
  for i:=0 to List.Count-1 do
  begin
     {����������� ����������� �� ����� ��������������}
     if PtInRect(TMyParagraph(List[i]).Pos,Click_point) then
       begin
         {�������� ����� ����������� �����}
         Sel_Block_Number:=i;
         {���������� ����� �����������}
         Cur_Point.X:=TMyparagraph(List[Sel_Block_Number]).Pos.Left;
         Cur_Point.Y:=TMyparagraph(List[Sel_Block_Number]).Pos.Top;
         {����� ������ �����}
         Edt4.Text:=IntToStr(i);
         {-----------}
          if TMyparagraph(List[Sel_Block_Number]).USERFIELD='' then
            begin
            edt1.Text:=TMyparagraph(List[Sel_Block_Number]).Text;
            end
            else
          begin
            edt1.Text:=TMyparagraph(List[Sel_Block_Number]).USERFIELD;
          end;
         {-----------}
         cbb1.Text:=IntToStr(TMyparagraph(List[Sel_Block_Number]).FontSize);
         {��������� �������� �����}
         Mycanvas_Clear(Self);
         Mycanvas_Draw(Self);
         img1.Canvas.DrawFocusRect(TMyparagraph(List[Sel_Block_Number]).Pos);
         end;
  end;
end;

{******************************************************************************}
{                              ��������� ���� ������                           }
{******************************************************************************}
procedure TForm1.btn2Click(Sender: TObject);
begin

end;

{******************************************************************************}
{                                ������� �����                                 }
{******************************************************************************}
procedure TForm1.btn3Click(Sender: TObject);
begin

end;

{******************************************************************************}
{                             �������� ����������� �����                       }
{******************************************************************************}
procedure TForm1.btn4Click(Sender: TObject);
var
  i:integer;
begin
if List.Count>0 then
begin
  List.Delete(Sel_Block_Number);
  btn3.Click;
  Form1.Mycanvas_Draw(btn4);
end
else ShowMessage('��� ������ ��� ��������');
end;



{******************************************************************************}
{                          ��a���� cbb1 �� ���������                           }
{******************************************************************************}
procedure TForm1.cbb1Select(Sender: TObject);
var
  FRect:TRECT;

begin
       {���� ������� - ����� }
  if (edt1.Text<>'')and(edt1.Text[1]<>'<')and(edt1.Text[Length(edt1.Text)]<>'>') then
  begin
    case StrToInt(cbb1.Text) of

     5: begin img1.Canvas.Font.Name:='Willett 5x5';
             img1.Canvas.Font.Size:=24;
             TMyparagraph(List[Sel_Block_Number]).Pos.Left:=Cur_Point.X;
             TMyparagraph(List[Sel_Block_Number]).Pos.Top:=Cur_Point.Y;
             TMyparagraph(List[Sel_Block_Number]).Pos.Right:=TMyparagraph(List[Sel_Block_Number]).Pos.Left+length(edt1.Text)*28+5;
             TMyparagraph(List[Sel_Block_Number]).Pos.Bottom:=TMyparagraph(List[Sel_Block_Number]).Pos.Top+20;
        end;

     7: begin img1.Canvas.Font.Name:='Willett 7x5';
             img1.Canvas.Font.Size:=24;
             TMyparagraph(List[Sel_Block_Number]).Pos.Left:=Cur_Point.X;
             TMyparagraph(List[Sel_Block_Number]).Pos.Top:=Cur_Point.Y;
             TMyparagraph(List[Sel_Block_Number]).Pos.Right:=TMyparagraph(List[Sel_Block_Number]).Pos.Left+length(edt1.Text)*28+5;
             TMyparagraph(List[Sel_Block_Number]).Pos.Bottom:=TMyparagraph(List[Sel_Block_Number]).Pos.Top+28;
         end;

     9: begin img1.Canvas.Font.Name:='Willett 9x6';
             img1.Canvas.Font.Size:=48;
             TMyparagraph(List[Sel_Block_Number]).Pos.Left:=Cur_Point.X;
             TMyparagraph(List[Sel_Block_Number]).Pos.Top:=Cur_Point.Y;
             TMyparagraph(List[Sel_Block_Number]).Pos.Right:=TMyparagraph(List[Sel_Block_Number]).Pos.Left+length(edt1.Text)*32+5;
             TMyparagraph(List[Sel_Block_Number]).Pos.Bottom:=TMyparagraph(List[Sel_Block_Number]).Pos.Top+36;
        end;

     16: begin img1.Canvas.Font.Name:='Willett 16x11';
             img1.Canvas.Font.Size:=48;
             TMyparagraph(List[Sel_Block_Number]).Pos.Left:=Cur_Point.X;
             TMyparagraph(List[Sel_Block_Number]).Pos.Top:=Cur_Point.Y;
             TMyparagraph(List[Sel_Block_Number]).Pos.Right:=TMyparagraph(List[Sel_Block_Number]).Pos.Left+length(edt1.Text)*52+5;
             TMyparagraph(List[Sel_Block_Number]).Pos.Bottom:=TMyparagraph(List[Sel_Block_Number]).Pos.Top+64;
         end;

      24: begin img1.Canvas.Font.Name:='Willett 7x5';
              img1.Canvas.Font.Size:=40;
         end;
     end;
     {������� �����}
     btn3.Click;
     {���������� �����}
     TMyparagraph(List[Sel_Block_Number]).Text:=edt1.Text;
     TMyparagraph(List[Sel_Block_Number]).FontSize:=StrToInt(cbb1.Text);
     TMyparagraph(List[Sel_Block_Number]).USERFIELD:='';
     TMyparagraph(List[Sel_Block_Number]).Y:=TMyparagraph(List[Sel_Block_Number]).Pos.Top div 4;
     {���������� � ������ �����}
     List.Put(Sel_Block_Number,TMyparagraph(List[Sel_Block_Number]));
     TMyparagraph(List[Sel_Block_Number]).Draw;
     img1.Canvas.DrawFocusRect(TMyparagraph(List[Sel_Block_Number]).Pos);
     Mycanvas_Draw(Self);
    end;

 {���� ������� ������}
  if edt1.Text='' then
  begin
     btn3.Click;//������� �����
     Mycanvas_Draw(edt1);
     img1.Canvas.DrawFocusRect(FRect);
  end;
    GLOBAL_FOCUS_RECT:=FRect;
    edt1.SetFocus;
    get_preview;
end;

{******************************************************************************}
{                           ��������� �����                                    }
{******************************************************************************}
procedure TForm1.FormShow(Sender: TObject);
begin
{��������� ������ ����� �� ���� ����� ������}
edt1.SetFocus;
end;

procedure TForm1.btn7Click(Sender: TObject);
begin
btn1.Click;
edt1.SetFocus;
end;

procedure TForm1.btn8Click(Sender: TObject);
begin
btn4.Click;
end;

procedure TForm1.tmr1Timer(Sender: TObject);
begin
edt6.Text:=IntToStr(Sel_Block_Number);
edt7.Text:=IntToStr(List.Count);
edt3.Text:=IntToStr(BLOCK.Pos.Left);
edt2.Text:=IntToStr(BLOCK.Pos.Top);
edt8.Text:=IntToStr(Cur_Point.X);
edt9.Text:=IntToStr(Cur_Point.Y);
edt5.Text:='Y= '+IntToStr(BLOCK.Y);


end;

{******************************************************************************}
{                        ������� �� ��������� ����������                       }
{******************************************************************************}
procedure TForm1.edt1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  x:Integer;
  FRect:TRECT;
  BitMap1:TBitmap;
  StrBitMap1:TBitMap;{����������� ��������}
  BMP_temp1:string;
begin
if Key<>13 then
  begin
       {���� ������� - ����� }
  if (edt1.Text<>'')and(edt1.Text[1]<>'<')and(edt1.Text[Length(edt1.Text)]<>'>') then
  begin
    case StrToInt(cbb1.Text) of

     5: begin img1.Canvas.Font.Name:='Willett 5x5';
             img1.Canvas.Font.Size:=24;
             TMyparagraph(List[Sel_Block_Number]).Pos.Left:=Cur_Point.X;
             TMyparagraph(List[Sel_Block_Number]).Pos.Top:=Cur_Point.Y;
             TMyparagraph(List[Sel_Block_Number]).Pos.Right:=TMyparagraph(List[Sel_Block_Number]).Pos.Left+length(edt1.Text)*28+5;
             TMyparagraph(List[Sel_Block_Number]).Pos.Bottom:=TMyparagraph(List[Sel_Block_Number]).Pos.Top+20;
        end;

     7: begin img1.Canvas.Font.Name:='Willett 7x5';
             img1.Canvas.Font.Size:=24;
             TMyparagraph(List[Sel_Block_Number]).Pos.Left:=Cur_Point.X;
             TMyparagraph(List[Sel_Block_Number]).Pos.Top:=Cur_Point.Y;
             TMyparagraph(List[Sel_Block_Number]).Pos.Right:=TMyparagraph(List[Sel_Block_Number]).Pos.Left+length(edt1.Text)*28+5;
             TMyparagraph(List[Sel_Block_Number]).Pos.Bottom:=TMyparagraph(List[Sel_Block_Number]).Pos.Top+28;
         end;

     9: begin img1.Canvas.Font.Name:='Willett 9x6';
             img1.Canvas.Font.Size:=48;
             TMyparagraph(List[Sel_Block_Number]).Pos.Left:=Cur_Point.X;
             TMyparagraph(List[Sel_Block_Number]).Pos.Top:=Cur_Point.Y;
             TMyparagraph(List[Sel_Block_Number]).Pos.Right:=TMyparagraph(List[Sel_Block_Number]).Pos.Left+length(edt1.Text)*32+5;
             TMyparagraph(List[Sel_Block_Number]).Pos.Bottom:=TMyparagraph(List[Sel_Block_Number]).Pos.Top+36;
        end;

     16: begin img1.Canvas.Font.Name:='Willett 16x11';
             img1.Canvas.Font.Size:=48;
             TMyparagraph(List[Sel_Block_Number]).Pos.Left:=Cur_Point.X;
             TMyparagraph(List[Sel_Block_Number]).Pos.Top:=Cur_Point.Y;
             TMyparagraph(List[Sel_Block_Number]).Pos.Right:=TMyparagraph(List[Sel_Block_Number]).Pos.Left+length(edt1.Text)*52+5;
             TMyparagraph(List[Sel_Block_Number]).Pos.Bottom:=TMyparagraph(List[Sel_Block_Number]).Pos.Top+64;
         end;

      24: begin img1.Canvas.Font.Name:='Willett 7x5';
              img1.Canvas.Font.Size:=40;
         end;
     end;
     {������� �����}
     btn3.Click;
     {���������� �����}
     TMyparagraph(List[Sel_Block_Number]).Text:=edt1.Text;
     TMyparagraph(List[Sel_Block_Number]).FontSize:=StrToInt(cbb1.Text);
     TMyparagraph(List[Sel_Block_Number]).USERFIELD:='';
     TMyparagraph(List[Sel_Block_Number]).Y:=TMyparagraph(List[Sel_Block_Number]).Pos.Top div 4;
     {���������� � ������ �����}
     List.Put(Sel_Block_Number,TMyparagraph(List[Sel_Block_Number]));
     TMyparagraph(List[Sel_Block_Number]).Draw;
     Mycanvas_Draw(Self);
     img1.Canvas.DrawFocusRect(TMyparagraph(List[Sel_Block_Number]).Pos);
     
    end;

{���� ������� -  ������� }
if (edt1.Text<>'')and(edt1.Text[1]='<')and(edt1.Text[Length(edt1.Text)]='>')
and(length(edt1.Text)<>1{������� $})and(length(edt1.Text)<>2{������� $$}) then
  begin
  TMyparagraph(List[Sel_Block_Number]).Pos.Left:=Cur_Point.X;
  TMyparagraph(List[Sel_Block_Number]).Pos.Top:=Cur_Point.Y;
   btn3.Click;//������� �����
   Mycanvas_Draw(Self);  //��������� ����������� ������
   {��������� ����� ��������}
   BMP_temp1:=edt1.Text;
   delete(BMP_temp1,1,1);
   delete(BMP_temp1,length(BMP_temp1),1);
   BMP_temp1:='bmp\'+BMP_temp1+'.bmp';
   {�������� ��������}
   BitMap1:=TBitmap.Create;
   BitMap1.LoadFromFile(BMP_temp1);
   {������ ��������}
   StrBitMap1:=TBitmap.Create;
   StrBitMap1.Height:=(BitMap1.Height div 7)*4;
   StrBitMap1.Width:=(BitMap1.Width div 7)*4;
   StretchBlt(StrBitMap1.Canvas.Handle,0,0,StrBitMap1.Width,StrBitMap1.Height,BitMap1.Canvas.Handle,0,0,BitMap1.Width,BiTMap1.Height,SRCCOPY);
   {�������� �����}
   Frect.Left:=Cur_Point.X;
   FRect.Top:=Cur_Point.Y;
   Frect.Right:=Frect.Left+StrBitMap1.Width;
   FRect.Bottom:=Frect.Top+StrBitMap1.Height;
   {��������� ��������}
   img1.Canvas.Draw(FRect.Left,Frect.Top,StrBitMap1);
   {��������� ����� ������}
   img1.Canvas.DrawFocusRect(FRect);
   {������������ ����������}
   BitMap1.Free;
   StrBitMap1.Free;
   bmp_temp1:='';
     {������� �����}
     btn3.Click;
     {���������� �����}
     TMyparagraph(List[Sel_Block_Number]).Text:='';
     TMyparagraph(List[Sel_Block_Number]).FontSize:=StrToInt(cbb1.Text);
     TMyparagraph(List[Sel_Block_Number]).USERFIELD:=edt1.Text;
     TMyparagraph(List[Sel_Block_Number]).Y:=TMyparagraph(List[Sel_Block_Number]).Pos.Top div 4;
     {���������� � ������ �����}
     List.Put(Sel_Block_Number,TMyparagraph(List[Sel_Block_Number]));
     TMyparagraph(List[Sel_Block_Number]).Draw;
     img1.Canvas.DrawFocusRect(TMyparagraph(List[Sel_Block_Number]).Pos);
     Mycanvas_Draw(Self);


  end;

 {���� ������� ������}
  if edt1.Text='' then
  begin
     btn3.Click;//������� �����
     Mycanvas_Draw(edt1);
     img1.Canvas.DrawFocusRect(FRect);
  end;
    GLOBAL_FOCUS_RECT:=FRect;

    end
else
  begin
       Cur_Point.y:=TMyparagraph(List.Last).Pos.Bottom+2*4;
    Cur_Point.X:=TMyparagraph(List.Last).Pos.Right;
    repeat
      Cur_Point.X:=Cur_Point.X-1;
    until  peresechenie(Cur_Point)=true;
    Cur_Point.X:=Cur_Point.X+1;
    Block:=TMyparagraph.Create;
    List.Add(BLOCK);
    Sel_Block_Number:=Sel_Block_Number+1;
    edt1.Text:='';
  end;
     get_preview;
end;

procedure TForm1.tmr2Timer(Sender: TObject);
var
  x:Integer;
begin
  Form2.mmo1.Lines.Clear;
  List.First;
  Form2.mmo1.Lines.Add('List count '+IntToStr(List.count));
  for x:=0 to List.Count-1 do
  begin
    Form2.mmo1.Lines.Add('List['+IntTosTr(x)+'] '+
    ' Left:'+ IntToStr(TMyparagraph(List[x]).Pos.Left)+
    ' Top:'+IntToStr(TMyparagraph(List[x]).Pos.Top)+
    ' Text:'+TMyparagraph(List[x]).Text+
    ' Userfield:'+TMyparagraph(List[x]).USERFIELD+
    ' FontSize:'+IntToStr(TMyparagraph(List[x]).FontSize)+
    ' Y:'+IntToStr(TMyparagraph(List[x]).Y) );
  end;


end;

procedure TForm1.tmr3Timer(Sender: TObject);
begin
Form2.Top:=Form1.Top+Form1.Height;
Form2.Left:=Form1.Left;
Form2.Width:=Form1.Width;
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
 get_preview;
end;

procedure TForm1.tmr4Timer(Sender: TObject);
begin
 get_preview;
end;

procedure TForm1.btn9Click(Sender: TObject);
begin
 length_analize;
end;

procedure TForm1.tmr5Timer(Sender: TObject);
begin
 length_analize ;
end;

end.
