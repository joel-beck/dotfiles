#Requires AutoHotkey v2.0

#UseHook true
#SingleInstance Force

InstallKeybdHook()

; Development Functions

; Abort this AutoHotkey script globally
Escape:: ExitApp

; Show Name of Front Windows Process
ShowFrontWindowProcessName(ThisHotkey) {
    MsgBox "Front window's process name: " WinGetProcessName("A")
}

; Show Path of Front Windows Process
ShowFrontWindowProcessPath(ThisHotkey) {
    MsgBox "Front window's process path: " WinGetProcessPath("A")
}

; Uncomment for Debugging
; Hotkey "n", ShowFrontWindowProcessName
; Hotkey "p", ShowFrontWindowProcessPath


; SECTION: App Identifiers

; Mapping of App Key to Process Names
; Values are case-sensitive!!
Apps := Map()

; Apps["FileExplorer"] := ["explorer.exe"]
Apps["MicrosoftWord"] := "WINWORD.EXE"
Apps["MicrosoftExcel"] := "EXCEL.EXE"
Apps["MicrosoftEdge"] := "msedge.exe"
Apps["MicrosoftTeams"] := "Teams.exe"
Apps["PowerToys"] := "PowerToys.Settings.exe"

Apps["VSCode"] := "Code.exe"
Apps["Notion"] := "Notion.exe"
Apps["Bitwarden"] := "Bitwarden.exe"


; SECTION: Global Hotkeys

ActivateNextTab(ThisHotkey) {
    Send "{LCtrl down}{Tab down}{Tab up}{LCtrl up}"
}

ActivatePreviousTab(ThisHotkey) {
    Send "{LCtrl down}{LShift down}{Tab down}{Tab up}{LShift up}{LCtrl up}"
}

; CapsLock to Escape
SetCapsLockState("AlwaysOff")
CapsLock::Escape

; Switch Tabs with Fn + Ctrl + Left/Right
Hotkey "LCtrl & End", ActivateNextTab
Hotkey "LCtrl & Home", ActivatePreviousTab


; SECTION: Activate Apps

ActivateApp(App) {
    ProcessName := Apps[App]

    if WinExist("ahk_exe" . ProcessName) {
        WinActivate
        return
    }

    Run ProcessName
}

ActivateWord(ThisHotkey) {
    ActivateApp("MicrosoftWord")
}

ActivateExcel(ThisHotkey) {
    ActivateApp("MicrosoftExcel")
}

ActivateEdge(ThisHotkey) {
    ActivateApp("MicrosoftEdge")
}

ActivateTeams(ThisHotkey) {
    ActivateApp("MicrosoftTeams")
}

ActivatePowerToys(ThisHotkey) {
    ActivateApp("PowerToys")
}

ActivateVSCode(ThisHotkey) {
    ActivateApp("VSCode")
}

ActivateNotion(ThisHotkey) {
    ActivateApp("Notion")
}

ActivateBitwarden(ThisHotkey) {
    ActivateApp("Bitwarden")
}

ActivateSettings(ThisHotkey) {
    Run "ms-settings:"
}

ActivateExplorer(ThisHotkey) {
    WinExist("ahk_class CabinetClass") ? WinActivate() : Run("explorer")
    ; ActivateApp("FileExplorer")
}

Hotkey "Capslock & w", ActivateWord
Hotkey "Capslock & e", ActivateExcel
Hotkey "Capslock & s", ActivateEdge
Hotkey "Capslock & t", ActivateTeams
Hotkey "Capslock & p", ActivatePowerToys ; does not reliably work
Hotkey "Capslock & v", ActivateVSCode
Hotkey "Capslock & n", ActivateNotion
Hotkey "Capslock & b", ActivateBitwarden
Hotkey "Capslock & f", ActivateExplorer ; currently always opens new window
Hotkey "LWin & ,", ActivateSettings


; SECTION: App-Specific Hotkeys

; SUBSECTION: Microsoft Edge

; Open New Browser Tab with Ctrl + N
#HotIf WinActive("ahk_exe" . Apps["MicrosoftEdge"])
^n:: Send "{LCtrl down}t{LCtrl up}"
#HotIf


; SUBSECTION: VSCode / Except VSCode

SquareBrackets(ThisHotkey) {
    MsgBox "Not VSCode"
    Send "[]{Left}"
}

CurlyBraces(ThisHotkey) {
    Send "{{}{}}{Left}"
}

SquareBracketsVSCode(ThisHotkey) {
    MsgBox "VSCode"
    Send "{LCtrl down}{LAlt down}8{LCtrl up}{LAlt up}"
}

CurlyBracesVSCode(ThisHotkey) {
    Send "{LCtrl down}{LAlt down}7{LCtrl up}{LAlt up}"
}

VSCodeFrontWindow() {
    return WinActive("ahk_exe" . Apps["VSCode"])
}

; Currently does not work, always executes else clause even in VSCode
if WinActive("ahk_exe" . Apps["VSCode"]) {
    Hotkey "RCtrl", SquareBracketsVSCode
    Hotkey "RShift", CurlyBracesVSCode
} else {
    Hotkey "RCtrl", SquareBrackets
    Hotkey "RShift", CurlyBraces
}