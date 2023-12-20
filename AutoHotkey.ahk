; How do I put my hotkeys and hotstrings into effect automatically every time I start my PC?
; Find the script file, select it, and press Ctrl+C.
; Press Win+R to open the Run dialog, then enter shell:startup
; To instead open the folder for ; users, enter shell:common startup 
; Right click inside the window, and click "Paste Shortcut". The shortcut to the script should now be in the Startup folder.

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.

SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#g::
Run, https://www.google.com/
return

#n::
Run, notepad.exe
return

; This line binds the middle mouse button (MButton) to send the key combination Ctrl + W (^w). ; 
; When you press the middle mouse button, it simulates the pressing of Ctrl + W. In many 
; applications and web browsers, Ctrl + W is commonly used to close the currently focused tab or window.
MButton::Send, ^w: 


