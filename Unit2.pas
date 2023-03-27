unit Unit2;

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CPort, StdCtrls, CPortCtl, FileCtrl,
   ComCtrls, RzTreeVw, RzShellCtrls, RzListVw, RzLstBox, ExtCtrls, RzPanel,
  RzLabel,   ShellCtrls, RzTabs, RzSplit;

function ClearDir( Dir: string ): boolean;

implementation

function ClearDir( Dir: string ): boolean;
var
  isFound: boolean;
  sRec: TSearchRec;
begin
   Result := false;
   ChDir( Dir );
   if IOResult <> 0 then
   begin
      ShowMessage( 'Не могу войти в каталог: ' + Dir );
      Exit;
   end;
   if Dir[Length(Dir)] <> '\' then Dir := Dir + '\';
   isFound := FindFirst( Dir + '*.*', faAnyFile, sRec ) = 0;
   while isFound do
   begin
   if ( sRec.Name <> '.' ) and ( sRec.Name <> '..' ) then
      if ( sRec.Attr and faDirectory ) = faDirectory then
      begin
         if not ClearDir( Dir + sRec.Name ) then
            Exit;
         if ( sRec.Name <> '.' ) and ( sRec.Name <> '..' ) then
            if ( Dir + sRec.Name ) <> Dir then
            begin
               ChDir( '..' );
               RmDir( Dir + sRec.Name );
            end;
      end
      else
         if not DeleteFile( Dir + sRec.Name ) then
         begin
            ShowMessage( 'Не могу удалить файл: ' + sRec.Name );
            Exit;
         end;
      isFound := FindNext( sRec ) = 0;
   end;
   FindClose( sRec );
   Result := IOResult = 0;
end;

end.
