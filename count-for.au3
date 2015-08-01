;
; AutoIt Version: 3.0
; Language:       English
; Platform:       Win9x/NT
; Author:         Jonathan Bennett (jon at hiddensoft com)
;
; Script Function:
;   Counts to 5 using a "for" loop
#include <File.au3>

; Prompt the user to run the script - use a Yes/No prompt (4 - see help file)
Local $answer = MsgBox(4, "AutoIt Example", "This script will count to 5 using a 'For' loop.  Run?")


; Check the user's answer to the prompt (see the help file for MsgBox return values)
; If "No" was clicked (7) then exit the script
If $answer = 7 Then
	MsgBox(0, "AutoIt Example", "OK.  Bye!")
	Exit
EndIf



$file = "C:\Users\morndej\Desktop\line_friend.txt"
FileOpen($file, 0)

;For $i = 1 to _FileCountLines($file)
For $i = 1 to 50
    $line = FileReadLine($file, $i)
   ;msgbox(0,'','the line ' & $i & ' is ' & $line)
   MouseClick("left", 1179, 474, 2)
   sleep(3000)
   Send($line)
   sleep(2000)
   MouseClick("left",1402,475)
   sleep(10000)
   MouseClick("left",1221,688)
   sleep(30000)
   
Next
FileClose($file)

; Execute the loop 5 times
;For $count = 1 To 50
	; Print the count
;	MsgBox(0, "AutoIt Example", "Count is: " "0" + & $count)
;Next


; Finished!
MsgBox(0, "AutoIt Example", "Finished!")
