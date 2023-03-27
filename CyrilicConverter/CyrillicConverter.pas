unit CyrillicConverter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Clipbrd, ComCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Memo1: TMemo;
    StatusBar1: TStatusBar;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  x:Integer;
  s:string;
  s1:Char;
begin
s:=Edit1.Text;
for  x:=1  to Length(Edit1.text)  do
  begin

      if s[x]='а' then begin s1:=#097 ; s[x]:=s1 end;
      if s[x]='б' then begin s1:=#167 ; s[x]:=s1 end;
      if s[x]='в' then begin s1:=#168 ; s[x]:=s1 end;
      if s[x]='г' then begin s1:=#170 ; s[x]:=s1 end;
      if s[x]='д' then begin s1:=#172 ; s[x]:=s1 end;
      if s[x]='е' then begin s1:='e' ; s[x]:=s1 end;
      if s[x]='ё' then begin s1:='e' ; s[x]:=s1 end;
      if s[x]='ж' then begin s1:=#175 ; s[x]:=s1 end;
      if s[x]='з' then begin s1:=#177 ; s[x]:=s1 end;
      if s[x]='и' then begin s1:=#179 ; s[x]:=s1 end;
      if s[x]='й' then begin s1:=#181 ; s[x]:=s1 end;
      if s[x]='к' then begin s1:=#182 ; s[x]:=s1 end;
      if s[x]='л' then begin s1:=#184 ; s[x]:=s1 end;
      if s[x]='м' then begin s1:=#185 ; s[x]:=s1 end;
      if s[x]='н' then begin s1:=#186 ; s[x]:=s1 end;
      if s[x]='о' then begin s1:='o' ; s[x]:=s1 end;
      if s[x]='п' then begin s1:=#188 ; s[x]:=s1 end;
      if s[x]='р' then begin s1:='p'  ; s[x]:=s1 end;
      if s[x]='с' then begin s1:='c'  ; s[x]:=s1 end;
      if s[x]='т' then begin s1:=#189 ; s[x]:=s1 end;
      if s[x]='у' then begin s1:=#191 ; s[x]:=s1 end;
      if s[x]='ф' then begin s1:=#193 ; s[x]:=s1 end;
      if s[x]='х' then begin s1:='x'  ; s[x]:=s1 end;
      if s[x]='ц' then begin s1:=#195 ; s[x]:=s1 end;
      if s[x]='ч' then begin s1:=#197 ; s[x]:=s1 end;
      if s[x]='ш' then begin s1:=#199 ; s[x]:=s1 end;
      if s[x]='щ' then begin s1:=#201 ; s[x]:=s1 end;
      if s[x]='ъ' then begin s1:=#203 ; s[x]:=s1 end;
      if s[x]='ы' then begin s1:=#205 ; s[x]:=s1 end;
      if s[x]='ь' then begin s1:=#207 ; s[x]:=s1 end;
      if s[x]='э' then begin s1:=#209 ; s[x]:=s1 end;
      if s[x]='ю' then begin s1:=#211 ; s[x]:=s1 end;
      if s[x]='я' then begin s1:=#213 ; s[x]:=s1 end;

      if s[x]='А' then begin s1:='A' ; s[x]:=s1 end;
      if s[x]='Б' then begin s1:=#166 ; s[x]:=s1 end;
      if s[x]='В' then begin s1:='B' ; s[x]:=s1 end;
      if s[x]='Г' then begin s1:=#169 ; s[x]:=s1 end;
      if s[x]='Д' then begin s1:=#171 ; s[x]:=s1 end;
      if s[x]='Е' then begin s1:='E' ; s[x]:=s1 end;
      if s[x]='Ё' then begin s1:=#173 ; s[x]:=s1 end;
      if s[x]='Ж' then begin s1:=#174 ; s[x]:=s1 end;
      if s[x]='З' then begin s1:=#176 ; s[x]:=s1 end;
      if s[x]='И' then begin s1:=#178 ; s[x]:=s1 end;
      if s[x]='Й' then begin s1:=#180 ; s[x]:=s1 end;
      if s[x]='К' then begin s1:='K' ; s[x]:=s1 end;
      if s[x]='Л' then begin s1:=#183 ; s[x]:=s1 end;
      if s[x]='М' then begin s1:='M' ; s[x]:=s1 end;
      if s[x]='Н' then begin s1:='H' ; s[x]:=s1 end;
      if s[x]='О' then begin s1:='O' ; s[x]:=s1 end;
      if s[x]='П' then begin s1:=#187 ; s[x]:=s1 end;
      if s[x]='Р' then begin s1:='P' ; s[x]:=s1 end;
      if s[x]='С' then begin s1:='C' ; s[x]:=s1 end;
      if s[x]='Т' then begin s1:='T' ; s[x]:=s1 end;
      if s[x]='У' then begin s1:=#190 ; s[x]:=s1 end;
      if s[x]='Ф' then begin s1:=#192 ; s[x]:=s1 end;
      if s[x]='Х' then begin s1:='X' ; s[x]:=s1 end;
      if s[x]='Ц' then begin s1:=#194 ; s[x]:=s1 end;
      if s[x]='Ч' then begin s1:=#196 ; s[x]:=s1 end;
      if s[x]='Ш' then begin s1:=#198 ; s[x]:=s1 end;
      if s[x]='Щ' then begin s1:=#200 ; s[x]:=s1 end;
      if s[x]='Ъ' then begin s1:=#202 ; s[x]:=s1 end;
      if s[x]='Ы' then begin s1:=#204 ; s[x]:=s1 end;
      if s[x]='Ь' then begin s1:=#206 ; s[x]:=s1 end;
      if s[x]='Э' then begin s1:=#208 ; s[x]:=s1 end;
      if s[x]='Ю' then begin s1:=#210 ; s[x]:=s1 end;
      if s[x]='Я' then begin s1:=#212 ; s[x]:=s1 end;


  end;
    Edit2.Text:=s;
    Memo1.Lines.Add(Edit1.Text+'--->'+edit2.Text);
    Clipboard.AsText:=s;
    StatusBar1.SimpleText:='Результат '+s+' записан в буфер обмена';
    s:='';

end;

end.
