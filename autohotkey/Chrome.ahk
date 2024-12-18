#Requires AutoHotkey >=2.0
#SingleInstance Force

#HotIf WinActive("ahk_exe chrome.exe")
;ahk_exe chrome.exe
!+]::{
  Send("^{Tab}")
}

!+[::{
  Send("^+{Tab}")
}

#HotIf
