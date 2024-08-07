#Requires AutoHotkey >=2.0
#SingleInstance Force

!`:: { ; Next window
    RotateWindow(1)
}

!+`:: { ; Last window
    RotateWindow(-1)
}

RotateWindow(direction) {
    activeClass := WinGetClass("A")
    activeWindowId := WinGetId("A")

    list := WinGetList("ahk_class" . activeClass)
    processName := WinGetProcessName("ahk_id " . activeWindowId)

    ; filter window list to only windows from the same executable
    ; So that we don't, e.g., switch to VSCode windows when trying to cycle through Chrome windows
    filteredWindowList := []
    loop list.Length {
        windowProcessName := WinGetProcessName("ahk_id " . list[A_Index])
        if (processName == windowProcessName) {
            filteredWindowList.Push(list[A_Index])
        }
    }

    SortArray(filteredWindowList)
    loop filteredWindowList.Length {
        if (filteredWindowList[A_Index] == activeWindowId) {
            targetWindowIndex := Mod(A_Index - 1 + direction + filteredWindowList.Length, filteredWindowList.Length) + 1
            targetWindowId := filteredWindowList[targetWindowIndex]
            WinActivate("ahk_id " . targetWindowId)
            return
        }
    }
}

SortArray(arr) {
    ; we're probably not sorting a lot of data, so bubble sort is fine
    loop arr.Length {
        a := A_Index
        loop arr.Length - a {
            b := A_Index
            if (arr[a] > arr[a+b]) {
                temp := arr[a+b]
                arr[a+b] := arr[a]
                arr[a] := temp
            }
        }
    }
}

DisplayArray(arr) {
    Str := ""
    For Index, Value In arr
       Str .= Value . "|"
    Str := RTrim(Str, "|") ; remove the last pipe (|)
    MsgBox(Str)
}
