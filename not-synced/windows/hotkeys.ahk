#Requires AutoHotkey v2.0

#UseHook true
#SingleInstance Force

InstallKeybdHook()

; Mapping of App Key to Executable Paths and Executable Filenames
; Values are case-sensitive!!
Apps := Map()

Apps["MicrosoftWord"] := ["C:\Program Files\Microsoft Office\root\Office16\WINWORD.EXE", "msword.exe"]
Apps["MicrosoftExcel"] := ["Excel", "msexcel.exe"]
Apps["MicrosoftEdge"] := ["Edge", "msedge.exe"]
Apps["MicrosoftTeams"] := ["Teams", "teams.exe"]
Apps["PowerToys"] := ["C:\Users\BK25769\AppData\Local\PowerToys\PowerToys.exe", "PowerToys.exe"]

Apps["VSCode"] := ["code", "code.exe"]
Apps["Notion"] := ["C:\Users\BK25769\AppData\Local\Programs\Notion\Notion.exe", "notion.exe"]
Apps["Bitwarden"] := ["C:\Users\BK25769\AppData\Local\Programs\Bitwarden\Bitwarden.exe", "bitwarden.exe"]

ActivateApp(AppKey) {
    AppArray := Apps[AppKey]

    if WinExist("ahk_exe" . AppArray[2]) {
        WinActivate
        return
    }

    Run AppArray[1]
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
}

; Abort this AutoHotkey script globally
Esc:: ExitApp

; CapsLock to Escape
SetCapsLockState("AlwaysOff")
CapsLock::Escape

; Activate Apps
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