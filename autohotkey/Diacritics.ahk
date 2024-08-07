#Requires AutoHotkey >=2.0
#SingleInstance Force

DiacriticInProgress := 0

emitDiacritic(code) {
    global DiacriticInProgress
    DiacriticInProgress := 0
    Send("{U+" . code . "}")
}


RAlt & ':: {
    global DiacriticInProgress
    DiacriticInProgress := 1
}

#HotIf DiacriticInProgress
:c*:A:: {
    emitDiacritic("00C1")
}
:c*:a:: {
    emitDiacritic("00E1")
}
:c*:E:: {
    emitDiacritic("00C9")
}
:c*:e:: {
    emitDiacritic("00E9")
}
:c*:I:: {
    emitDiacritic("00CD")
}
:c*:i:: {
    emitDiacritic("00ED")
}
:c*:O:: {
    emitDiacritic("00D3")
}
:c*:o:: {
    emitDiacritic("00F3")
}
:c*:U:: {
    emitDiacritic("00DA")
}
:c*:u:: {
    emitDiacritic("00FA")
}
#HotIf
