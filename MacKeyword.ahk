; List of Keys https://wyagd001.github.io/zh-cn/docs/KeyList.htm

; LButton:		Left mouse
; RButton:		Right mouse
; MButton:		Middle or wheel mouse
; XButton1:		Browser_Back
; XButton2:		Browser_Forward
; WheelDown:	Wheel downward
; WheelUp:		Wheel upward
; WheelLeft:	Wheel left
; WheelRight:	Wheel right

; Win: #
; (LWin: <#) (RWin: >#)

; Control: ^
; (LControl: <^) (RControl: >^)

; Shift: +
; (LShift: <+) (RShift: >+)

; Alt: !
; (LAlt: <!) (RAlt: >!)

; F1 - F24

; Disable lock workstation
; HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Policies\System, DisableLockWorkstation, 1

; -------------------- Script -------------------- ;

LControl::LWin

LWin::LControl

XButton1::^#Right

XButton2::^#Left

F19::Run "https://wyagd001.github.io/zh-cn/docs/KeyList.htm"

#If isActiveWin("chrome.exe")
^+h::Send !{Home}
#If

; ------------------- Function ------------------- ;

isActiveWin(processName) {
    WinGet, winProcessName, ProcessName, A
    return (winProcessName = processName)
}
