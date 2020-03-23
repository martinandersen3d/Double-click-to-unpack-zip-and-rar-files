;ShellExecute("C:\Program Files\7-Zip\7z.exe", "x ""D:\Download\junk\z.zip"" -oD:\Download\junk\z\ -y -r")
;ShellExecuteWait("C:\Program Files\7-Zip\7z.exe", "x ""D:\Download\junk\z.zip"" -oD:\Download\junk\z\ -y -r")
#include <Array.au3>
#include <File.au3>

if $CmdLine[0] = 1 Then
   ; Hvis der er flere filer valgt i explorer og man trykker enter så udpakker den dem allesammen
   For $i = 1 To $CmdLine[0]
		$input = $CmdLine[$i]
		 Dim $drive, $dir, $name, $ext
	  Local $aPathSplit = _PathSplit($input, $drive, $dir, $name, $ext)
	  ;ShellExecuteWait("C:\Program Files\7-Zip\7z.exe", "x """ + $input + """ -o" + + " -y -r")
	  ;_ArrayDisplay($aPathSplit, "_PathSplit of " & @ScriptFullPath)
	  $output = $drive & $dir & $name
	   ;MsgBox(0,"$output",$output)
	  ShellExecuteWait("C:\Program Files\7-Zip\7z.exe", "x """  & $input & """ -o""" & $output &  """\ -y -r")
	  ;MsgBox(0,"","Done")ef
   Next

Else
    MsgBox(0,"No Input File","No Input File. From commandline you must set a zip or rar to extract")
EndIf



