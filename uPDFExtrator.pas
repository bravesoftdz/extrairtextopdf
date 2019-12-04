unit uPDFExtrator;

interface
uses
  Vcl.Graphics, Winapi.Windows, IdHashMessageDigest, System.SysUtils, System.Variants,
  StrUtils, Dialogs, Vcl.StdCtrls, Vcl.Controls, Vcl.Forms, System.Classes,
  System.Math, DateUtils, ShellAPI;

  function ShellExecuteAndWait(FileName: string; Params: string): Boolean;

implementation


function ShellExecuteAndWait(FileName: string; Params: string): Boolean;
var
  exInfo: TShellExecuteInfo;
  Ph: DWORD;
begin

  FillChar(exInfo, SizeOf(exInfo), 0);
  with exInfo do
  begin
    cbSize := SizeOf(exInfo);
    fMask := SEE_MASK_NOCLOSEPROCESS or SEE_MASK_FLAG_DDEWAIT;
    Wnd := GetActiveWindow();
    exInfo.lpVerb := 'open';
    exInfo.lpParameters := PChar(Params);
    lpFile := PChar(FileName);
    nShow := SW_SHOWNORMAL;
  end;
  if ShellExecuteEx(@exInfo) then
    Ph := exInfo.hProcess
  else
  begin
    ShowMessage(SysErrorMessage(GetLastError));
    Result := true;
    exit;
  end;
  while WaitForSingleObject(exInfo.hProcess, 50) <> WAIT_OBJECT_0 do
    Application.ProcessMessages;
  CloseHandle(Ph);

  Result := true;

end;


end.

