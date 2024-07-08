#Requires AutoHotkey >=2.0
#SingleInstance Force


!^#i:: {
    ; activate IntelliJ
    Try {
        intellijWindow := WinGetID("ahk_exe idea64.exe")
        WinActivate("ahk_id" . intellijWindow)
    } catch TargetError as err {
        ; start IntelliJ if it wasn't already started
        Run("C:\Users\dathan\AppData\Local\Programs\IntelliJ IDEA Ultimate\bin\idea64.exe")
        return
    }
}

!#^c:: {
    ; activate Chrome
    try {
        chromeWindow := WinGetID("ahk_exe chrome.exe")
        WinActivate("ahk_id" . chromeWindow)
    } catch TargetError as err {
        ; start Chrome if it wasn't already started
        Run("C:\Program Files\Google\Chrome\Application\chrome.exe")
        return
    }
}

!#^o:: {
    ; activate Obsidian
    try {
        obsidianWindow := WinGetID("ahk_exe Obsidian.exe")
        WinActivate("ahk_id" . obsidianWindow)
    } catch TargetError as err {
        ; start Chrome if it wasn't already started
        Run("C:\Users\dathan\AppData\Local\Programs\obsidian\Obsidian.exe")
        return
    }
}