#NoEnv                             ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn                            ; Enable warnings to assist with detecting common errors.
SendMode Input                     ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%        ; Ensures a consistent starting directory.

I_Icon = CapsLock.ico
ICON [I_Icon]                      ; Changes a compiled script's icon (.exe)
if I_Icon <>
    IfExist, %I_Icon%
    Menu, Tray, Icon, %I_Icon%     ; Changes menu tray icon

Menu Tray, Tip, CapsLock Toggle    ; Set Tooltip in system tray

+Capslock::CapsLock                ; Use Shift + CapLock to toggle CapsLock

CapsLock::LShift                   ; Turn CapsLock into Left Shift
