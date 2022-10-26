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

; LAlt::LControl

; Win to Ctrl
LControl::LWin

; Ctrl to Win
LWin::LControl

; Previous desktop
XButton1::^#Right

; Next desktop
XButton2::^#Left

; Window exit
^q::Send !{F4}

; Window minimize
^m::WinMinimize,A

; Text editor
^Left::Send {Home}
^Right::Send {End}
^Up::Send ^{Home}
^Down::Send ^{End}
^+Left::Send +{Home}
^+Right::Send +{End}

; Document of autohotkey
F18::Run "https://wyagd001.github.io/zh-cn/docs/KeyList.htm"
F19::Suspend

#If isActiveWin("chrome.exe")
^+h::Send !{Home}
#If

; ------------------- Function ------------------- ;

isActiveWin(processName) {
    WinGet, winProcessName, ProcessName, A
;   MsgBox %winProcessName%
    return (winProcessName = processName)
}
