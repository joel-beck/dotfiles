#Requires AutoHotkey v2.0

#UseHook true
#SingleInstance Force

InstallKeybdHook()
SetTitleMatchMode "RegEx" ; match window titles based on regular expressions

; Special Hotkeys: https://www.autohotkey.com/docs/v2/Hotkeys.htm#Symbols
; # -> Windows Key
; ! -> Alt Key
; ^ -> Ctrl
; + -> Shift
; < -> Left Modifier
; > -> Right Modifier


; SECTION: Development Functions
ReloadScript(ThisHotkey) {
    Reload()
}

AbortScript(ThisHotkey) {
    ExitApp()
}

; Show Name of Front Windows Process
ShowFrontWindowProcessName(ThisHotkey) {
    MsgBox("Front window's process name: " WinGetProcessName("A"))
}

; Show Path of Front Windows Process
ShowFrontWindowProcessPath(ThisHotkey) {
    MsgBox("Front window's process path: " WinGetProcessPath("A"))
}

; Show Title of Front Window
ShowFrontWindowTitle(ThisHotkey) {
    MsgBox("Front window's title: " WinGetTitle("A"))
}

Hotkey("RShift & a", AbortScript)
Hotkey("RShift & r", ReloadScript)
Hotkey("RShift & n", ShowFrontWindowProcessName)
Hotkey("RShift & p", ShowFrontWindowProcessPath)
Hotkey("RShift & t", ShowFrontWindowTitle)


; SECTION: Global Hotkeys
; Deactivate CapsLock
SetCapsLockState("AlwaysOff")

; CapsLock to Escape
CapsLock::Escape

ActivateNextTab(ThisHotkey) {
    Send("{LCtrl down}{Tab down}{Tab up}{LCtrl up}")
}

ActivatePreviousTab(ThisHotkey) {
    Send("{LCtrl down}{LShift down}{Tab down}{Tab up}{LShift up}{LCtrl up}")
}

; Switch Tabs with Fn + Ctrl + Left/Right
Hotkey("LCtrl & End", ActivateNextTab)
Hotkey("LCtrl & Home", ActivatePreviousTab)


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


; SECTION: Activate Apps
ActivateApp(App) {
    ProcessName := Apps[App]

    if WinExist("ahk_exe" ProcessName) {
        WinActivate()
        return
    }

    Run(ProcessName)
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
    Run("ms-settings:")
}

ActivateExplorer(ThisHotkey) {
    WinExist("ahk_class CabinetClass") ? WinActivate() : Run("explorer")
    ; ActivateApp("FileExplorer")
}

Hotkey("CapsLock & b", ActivateBitwarden)
Hotkey("CapsLock & e", ActivateExcel)
Hotkey("CapsLock & f", ActivateExplorer) ; currently always opens new window
Hotkey("CapsLock & n", ActivateNotion)
Hotkey("CapsLock & p", ActivatePowerToys)
Hotkey("CapsLock & s", ActivateEdge)
Hotkey("CapsLock & t", ActivateTeams)
Hotkey("CapsLock & v", ActivateVSCode)
Hotkey("CapsLock & w", ActivateWord)
Hotkey("LWin & ,", ActivateSettings)


; SECTION: Activate URLs
ActivateURL(title, domain) {
    if WinExist(title) {
        WinActivate()
        return
    }

    url := "https://" domain
    Run(url)
}

ActivateGoogle(ThisHotkey) {
    ActivateURL("Google", "google.com")
}

ActivateTodoist(ThisHotkey) {
    ActivateURL("Todoist", "app.todoist.com")
}

ActivateChatGPT(ThisHotkey) {
    ActivateURL("ChatGPT", "chat.openai.com/?model=gpt-4")
}

ActivateAutoHotkeyDocs(ThisHotkey) {
    ActivateURL("AutoHotkey v2", "autohotkey.com/docs/v2/")
}

Hotkey("RCtrl & a", ActivateAutoHotkeyDocs)
Hotkey("RCtrl & g", ActivateGoogle)
Hotkey("RCtrl & t", ActivateTodoist)
Hotkey("RCtrl & c", ActivateChatGPT)


; SECTION: App-Specific Hotkeys
; SUBSECTION: Microsoft Edge
#HotIf WinActive("ahk_exe" Apps["MicrosoftEdge"])
; Open New Window with Ctrl + Shift + N
^+n:: Send("{LCtrl down}n{LCtrl up}")
; Open New Browser Tab with Ctrl + N
^n:: Send("{LCtrl down}t{LCtrl up}")
#HotIf

; SUBSECTION: Microsoft Teams
#HotIf WinActive("ahk_exe" Apps["MicrosoftTeams"])
; Insert ` with Ctrl + E
; Backticks must be escaped with another backtick
; Add space after backtick to insert single backtick immediately
^e:: Send("`` ")
#HotIf

; SUBSECTION: VSCode / Except VSCode
SquareBrackets(ThisHotkey) {
    ; MsgBox("Not VSCode")
    Send("[]{Left}")
}

CurlyBraces(ThisHotkey) {
    Send("{{}{}}{Left}")
}

SquareBracketsVSCode(ThisHotkey) {
    ; MsgBox("VSCode")
    Send("{LCtrl down}{LAlt down}8{LCtrl up}{LAlt up}")
}

CurlyBracesVSCode(ThisHotkey) {
    Send("{LCtrl down}{LAlt down}7{LCtrl up}{LAlt up}")
}

VSCodeFrontWindow() {
    return WinActive("ahk_exe" Apps["VSCode"])
}

; Currently does not work, always executes else clause even in VSCode
if WinActive("ahk_exe" Apps["VSCode"]) {
    Hotkey("RCtrl", SquareBracketsVSCode)
    Hotkey("RShift", CurlyBracesVSCode)
} else {
    Hotkey("RCtrl", SquareBrackets)
    Hotkey("RShift", CurlyBraces)
}