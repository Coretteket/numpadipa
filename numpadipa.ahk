; NUMPADIPA /ˌnʊm.pəˈdaɪ.pə/
;   An IPA keyboard layout that makes use of the numpad and three new modifier keys to type the 'entire' IPA.
;   For more information, go to github.com/Coretteket/numpadipa.

#SingleInstance, force
SetKeyDelay -1
Process, Priority, , High
SetBatchLines, -1
SetNumLockState, Off

; DEADKEY
    smacron := {a: "Ā"
            ,1: "Ǣ" 
            ,b: "B̄" ;
            ,c: "C̄" ;
            ,d: "D̄" ;
            ,e: "Ē"
            ,f: "F̄" ;
            ,g: "Ḡ"
            ,h: "H̄" ;
            ,i: "Ī"
            ,j: "J̄" ;
            ,k: "K̄" ;
            ,l: "L̄" ;
            ,m: "M̄" ;
            ,n: "N̄" ;
            ,o: "Ō"
            ,p: "P̄" ;
            ,q: "Q̄" ;
            ,r: "R̄" ;
            ,s: "S̄" ;
            ,t: "T̄" ;
            ,u: "Ū"
            ,v: "V̄" ;
            ,w: "W̄" ;
            ,x: "X̄" ;
            ,y: "Ȳ"
            ,z: "Z̄"} ;
    macron := {a: "ā"
            ,1: "ǣ" 
            ,b: "b̄" ;
            ,c: "c̄" ;
            ,d: "d̄" ;
            ,e: "ē"
            ,f: "f̄" ;
            ,g: "ḡ"
            ,h: "h̄" ;
            ,i: "ī"
            ,j: "j̄" ;
            ,k: "k̄" ;
            ,l: "l̄" ;
            ,m: "m̄" ;
            ,n: "n̄" ;
            ,o: "ō"
            ,p: "p̄" ;
            ,q: "q̄" ;
            ,r: "r̄" ;
            ,s: "s̄" ;
            ,t: "t̄" ;
            ,u: "ū"
            ,v: "v̄" ;
            ,w: "w̄" ;
            ,x: "x̄" ;
            ,y: "ȳ"
            ,z: "z̄"} ;
    caron := {a: "ǎ"
            ,c: "č"
            ,d: "ď"
            ,e: "ě"
            ,f: "f̌" ;
            ,g: "ǧ"
            ,h: "ȟ"
            ,i: "ǐ"
            ,j: "ǰ"
            ,k: "ǩ"
            ,l: "ľ"
            ,m: "m̌" ;
            ,n: "ň"
            ,o: "ǒ"
            ,p: "p̌" ;
            ,q: "q̌" ;
            ,r: "ř"
            ,s: "š"
            ,t: "ť"
            ,u: "ǔ"
            ,v: "v̌" ;
            ,w: "w̌" ;
            ,x: "x̌" ;
            ,y: "y̌" ;
            ,z: "ž"
            ,1: "æ̌" ;
            ,2: "ǯ"}
    scaron := {a: "Ǎ"
            ,c: "Č"
            ,d: "Ď"
            ,e: "Ě"
            ,f: "F̌" ;
            ,g: "Ǧ"
            ,h: "Ȟ"
            ,i: "Ǐ"
            ,j: "ǰ"
            ,k: "Ǩ"
            ,l: "Ľ"
            ,m: "M̌" ;
            ,n: "Ň"
            ,o: "Ǒ"
            ,p: "P̌" ;
            ,q: "Q̌" ;
            ,r: "Ř"
            ,s: "Š"
            ,t: "Ť"
            ,u: "Ǔ"
            ,v: "V̌" ;
            ,w: "W̌" ;
            ,x: "X̌" ;
            ,y: "Y̌" ;
            ,z: "Ž"
            ,1: "Æ̌" ;
            ,2: "Ǯ"} ;
    ogonek := {a: "ą"
            ,e: "ę"
            ,i: "į"
            ,o: "ǫ" 
            ,u: "ų"
            ,w: "w̨"} ; 
    sogonek := {a: "Ą" 
            ,e: "Ę"
            ,i: "Į"
            ,o: "Ǫ" 
            ,u: "Ų"
            ,w: "W̨" ;
            ,1: "Æ̨"} ;
    dot := {a: "ạ"
        ,b: "ḅ"
        ,c: "c̣" ;
        ,d: "ḍ"
        ,e: "ẹ"
        ,f: "f̣" ;
        ,g: "g̣" ;
        ,h: "ḥ"
        ,i: "ị"
        ,j: "j̣" ;
        ,k: "ḳ"
        ,l: "ḷ"
        ,m: "ṃ"
        ,n: "ṇ"
        ,o: "ọ"
        ,p: "p̣" ;
        ,q: "q̣" ;
        ,r: "ṛ"
        ,s: "ṣ"
        ,t: "ṭ"
        ,u: "ụ"
        ,v: "ṿ"
        ,w: "ẉ"
        ,x: "x̣" ;
        ,y: "ỵ"
        ,z: "ẓ"
        ,1: "æ̣"} ;
    sdot := {a: "Ạ"
        ,b: "Ḅ"
        ,c: "C̣" ;
        ,d: "Ḍ"
        ,e: "Ẹ"
        ,f: "F̣" ;
        ,g: "g̣" ;
        ,h: "Ḥ"
        ,i: "Ị"
        ,j: "J̣" ;
        ,k: "Ḳ"
        ,l: "Ḷ"
        ,m: "Ṃ"
        ,n: "Ṇ"
        ,o: "Ọ"
        ,p: "p̣" ;
        ,q: "Q̣" ;
        ,r: "Ṛ"
        ,s: "Ṣ"
        ,t: "Ṭ"
        ,u: "Ụ"
        ,v: "Ṿ"
        ,w: "Ẉ"
        ,x: "X̣" ;
        ,y: "Ỵ"
        ,z: "Ẓ"
        ,1: "Æ̣"} ;
    sub := {a: "ₐ"
        ,e: "ₑ"
        ,h: "ₕ"
        ,i: "ᵢ"
        ,j: "ⱼ"
        ,k: "ₖ"
        ,l: "ₗ"
        ,m: "ₘ"
        ,n: "ₙ"
        ,o: "ₒ"
        ,p: "ₚ"
        ,r: "ᵣ"
        ,s: "ₛ"
        ,t: "ₜ"
        ,u: "ᵤ"
        ,v: "ᵥ"
        ,x: "ₓ"
        ,0: "₀"
        ,1: "₁"
        ,2: "₂"
        ,3: "₃"
        ,4: "₄"
        ,5: "₅"
        ,6: "₆"
        ,7: "₇"
        ,8: "₈"
        ,9: "₉"
        ,"=": "₊"
        ,"-": "₋"
        ,"[": "₍" 
        ,"]": "₎"
        ,"\": "₌"}
    super := {a: "ᵃ"
        ,b: "ᵇ"
        ,c: "ᶜ"
        ,d: "ᵈ"
        ,e: "ᵉ"
        ,f: "ᶠ"
        ,g: "ᵍ"
        ,h: "ʰ"
        ,i: "ⁱ"
        ,j: "ʲ"
        ,k: "ᵏ"
        ,l: "ˡ"
        ,m: "ᵐ"
        ,n: "ⁿ"
        ,o: "ᵒ"
        ,p: "ᵖ"
        ,r: "ʳ"
        ,s: "ˢ"
        ,t: "ᵗ"
        ,u: "ᵘ"
        ,v: "ᵛ"
        ,w: "ʷ"
        ,x: "ˣ"
        ,y: "ʸ"
        ,z: "ᶻ"
        ,0: "⁰"
        ,1: "¹"
        ,2: "²"
        ,3: "³"
        ,4: "⁴"
        ,5: "⁵"
        ,6: "⁶"
        ,7: "⁷"
        ,8: "⁸"
        ,9: "⁹"
        ,"=": "⁺"
        ,"-": "⁻"
        ,"[": "⁽" 
        ,"]": "⁾"
        ,"\": "⁼"
        ,"ɐ": "ᵄ"
        ,"ɑ": "ᵅ"
        ,"ɒ": "ᶛ"
        ,"ɔ": "ᵓ"
        ,"ɕ": "ᶝ"
        ,"ð": "ᶞ"
        ,"ə": "ᵊ"
        ,"ɜ": "ᶟ"
        ,"ɛ": "ᵋ"
        ,"ɟ": "ᶡ"
        ,"ɡ": "ᶢ"
        ,"ɦ": "ʱ"
        ,"ɥ": "ᶣ"
        ,"ɨ": "ᶤ"
        ,"ɪ": "ᶥ"
        ,"ʝ": "ᶨ"
        ,"ɭ": "ᶩ"
        ,"ɱ": "ᶬ"
        ,"ɯ": "ᵚ"
        ,"ɰ": "ᶭ"
        ,"ŋ": "ᵑ"
        ,"ɲ": "ᶮ"
        ,"ɳ": "ᶯ"
        ,"ɵ": "ᶱ"
        ,"œ": "ꟹ"
        ,"ɹ": "ʴ"
        ,"ɻ": "ʵ"
        ,"ʁ": "ʶ"
        ,"ʂ": "ᶳ"
        ,"ʃ": "ᶴ"
        ,"ʉ": "ᶶ"
        ,"ʊ": "ᶷ"
        ,"ʋ": "ᶹ"
        ,"ʌ": "ᶺ"
        ,"ɣ": "ˠ"
        ,"ʐ": "ᶼ"
        ,"ʑ": "ᶽ"
        ,"ʒ": "ᶾ"
        ,"ɸ": "ᶲ"
        ,"ʔ": "ˀ"
        ,"ʕ": "ˁ"}

; MODIFIER
;   QWERTY
    NumpadAdd & a::Send ɐ
    NumpadEnter & a::Send ɑ
    NumpadIns & a::Send æ
    
    ^!a::Send æ
    ^!+a::Send Æ

    NumpadAdd & b::Send ʙ
    NumpadEnter & b::Send β
    NumpadIns & b::Send ɓ

    NumpadAdd & c::Send ɟ
    NumpadEnter & c::Send ç
    NumpadIns & c::Send ʛ

    NumpadAdd & d::Send ɖ
    NumpadEnter & d::Send ð
    NumpadIns & d::Send ɗ

    NumpadAdd & e::Send ɛ
    NumpadEnter & e::Send ə
    NumpadIns & e::Send {ALTDOWN}{Numpad1}{Numpad5}{Numpad5}{ALTUP} 

    NumpadAdd & f::Send ʋ
    NumpadEnter & f::Send ɸ
    NumpadIns & f::Send ɶ

    NumpadAdd & g::Send ɡ
    NumpadEnter & g::Send ɢ
    NumpadIns & g::Send ɠ

    NumpadAdd & h::Send ɦ
    NumpadEnter & h::Send ħ
    NumpadIns & h::Send ʜ

    NumpadAdd & i::Send ɨ
    NumpadEnter & i::Send ɪ
    NumpadIns & i::Send ɘ

    NumpadAdd & j::Send ʎ
    NumpadEnter & j::Send ʝ
    NumpadIns & j::Send ʟ

    NumpadAdd & k::Send ʔ
    NumpadEnter & k::Send ʡ
    NumpadIns & k::Send ʢ

    NumpadAdd & l::Send ɬ
    NumpadEnter & l::Send ɮ
    NumpadIns & l::Send ɭ

    NumpadAdd & m::Send ɜ
    NumpadEnter & m::Send ɞ
    NumpadIns & m::Send ɱ

    NumpadAdd & n::Send ŋ
    NumpadEnter & n::Send ɲ
    NumpadIns & n::Send ɳ

    NumpadAdd & o::Send ɒ
    NumpadEnter & o::Send ɔ
    NumpadIns & o::Send ɵ

    NumpadAdd & p::Send ɽ
    NumpadEnter & p::Send ɻ
    NumpadIns & p::Send ˈ

    NumpadAdd & q::Send ʀ
    NumpadEnter & q::Send ʁ
    NumpadIns & q::Send ɴ

    NumpadAdd & r::Send ɾ
    NumpadEnter & r::Send ɹ
    NumpadIns & r::Send ɺ

    NumpadAdd & s::Send ʃ
    NumpadEnter & s::Send ʂ
    NumpadIns & s::Send ɕ

    NumpadAdd & t::Send ʈ
    NumpadEnter & t::Send θ
    NumpadIns & t::Send þ

    NumpadAdd & u::Send ʉ
    NumpadEnter & u::Send ʊ
    NumpadIns & u::Send ɯ

    NumpadAdd & v::Send ⱱ
    NumpadEnter & v::Send ɥ
    NumpadIns & v::Send ʌ

    NumpadAdd & w::Send ɰ
    NumpadEnter & w::Send ʍ
    NumpadIns & w::Send ɧ

    NumpadAdd & x::Send ɣ
    NumpadEnter & x::Send χ
    NumpadIns & x::Send ʕ

    NumpadAdd & y::Send œ
    NumpadEnter & y::Send ʏ
    NumpadIns & y::Send ɤ

    NumpadAdd & z::Send ʒ
    NumpadEnter & z::Send ʐ
    NumpadIns & z::Send ʑ

    NumpadAdd & 1::Send ̏
    NumpadEnter & 1::Send ˩
    NumpadIns & 1::Send ¹

    NumpadAdd & 2::Send ̀
    NumpadEnter & 2::Send ˨
    NumpadIns & 2::Send ²

    NumpadAdd & 3::Send ̄
    NumpadEnter & 3::Send ˧
    NumpadIns & 3::Send ³

    NumpadAdd & 4::Send ́
    NumpadEnter & 4::Send ˦
    NumpadIns & 4::Send ⁴

    NumpadAdd & 5::Send ̋
    NumpadEnter & 5::Send ˥
    NumpadIns & 5::Send ⁵

    NumpadAdd & 6::Send ̌
    NumpadEnter & 6::Send ̂
    NumpadIns & 6::Send ⁶

    NumpadAdd & 7::Send ᷄
    NumpadEnter & 7::Send ᷅
    NumpadIns & 7::Send ⁷

    NumpadAdd & 8::Send ᷇
    NumpadEnter & 8::Send ᷆
    NumpadIns & 8::Send ⁸

    NumpadAdd & 9::Send ᷈
    NumpadEnter & 9::Send ᷉
    NumpadIns & 9::Send ⁹

    NumpadAdd & 0::Send ꜛ
    NumpadEnter & 0::Send ꜜ
    NumpadIns & 0::Send ⁰

;   NUMPAD
    NumpadDel::Send ʘ 
    NumpadAdd & NumpadDel::Send ǂ
    NumpadEnter & NumpadDel::Send ǁ
    NumpadIns & NumpadDel::Send ʄ

    NumpadMult::Send ˈ
    NumpadAdd & NumpadMult::Send ↗︎
    NumpadEnter & NumpadMult::Send ↘︎
    NumpadIns & NumpadMult::Send ˌ

    NumpadSub::Send ‿
    NumpadAdd & NumpadSub::Send ‖
    NumpadEnter & NumpadSub::Send |
    NumpadIns & NumpadSub::Send ◌

    NumpadHome::Send ː
    NumpadAdd & NumpadHome::Send ːː
    NumpadEnter & NumpadHome::Send ̆
    NumpadIns & NumpadHome::Send ˑ

    NumpadUp::Send ͡
    NumpadAdd & NumpadUp::Send ͜
    NumpadEnter & NumpadUp::Send ͝
    NumpadIns & NumpadUp::Send ͠

    Shift & NumpadPgup::Send {Numpad9}
    Shift & NumpadIns::Send {NumpadIns}
    NumpadPgup::Send ̥
    Numpad9::Send ̊
    NumpadAdd & NumpadPgup::
        loop
        {
        If GetKeyState("LShift", "P") {
            SendInput ̍
            break
        } else { 
            SendInput ̩
            break
        }
        }
        return
    NumpadEnter & NumpadPgup::
        loop
        {
        If GetKeyState("LShift", "P") {
            SendInput ̑
            break
        } else { 
            SendInput ̯
            break
        }
        }
        return
    NumpadIns & NumpadPgup::
        loop
        {
        If GetKeyState("LShift", "P") {
            SendInput ̌
            break
        } else { 
            SendInput ̬
            break
        }
        }
        return
    ;
    NumpadLeft::Send ̈
    NumpadAdd & NumpadLeft::Send ̽
    NumpadEnter & NumpadLeft::Send ˞
    NumpadIns & NumpadLeft::Send ̼
    
    NumpadRight::Send ̃
    NumpadAdd & NumpadRight::Send ̰
    NumpadEnter & NumpadRight::Send ̤
    NumpadIns & NumpadRight::Send ̴
    
    Shift & NumpadEnd::Send {Numpad1}
    NumpadEnd::Send ̝
    Numpad1::Send ˔
    NumpadAdd & NumpadEnd::
        loop
        {
        If GetKeyState("LShift", "P") {
            SendInput ˕
            break
        } else { 
            SendInput ̞
            break
        }
        }
        return
    NumpadEnter & NumpadEnd::Send ̘
    NumpadIns & NumpadEnd::Send ̙

    Shift & NumpadDown::Send {Numpad2}
    NumpadDown::Send ̪
    Numpad2::Send ͆
    NumpadAdd & NumpadDown::Send ̺
    NumpadEnter & NumpadDown::Send ̻
    NumpadIns & NumpadDown::Send ̚

    Shift & NumpadPgdn::Send {Numpad3}
    NumpadPgdn::Send ̜
    Numpad3::Send ͑
    NumpadAdd & NumpadPgdn::
        loop
        {
        If GetKeyState("LShift", "P") {
            SendInput ͗
            break
        } else { 
            SendInput ̹
            break
        }
        }
        return
    NumpadEnter & NumpadPgdn::
        loop
        {
        If GetKeyState("LShift", "P") {
            SendInput ˗
            break
        } else { 
            SendInput ̱
            break
        }
        }
        return
    NumpadIns & NumpadPgdn::
        loop
        {
        If GetKeyState("LShift", "P") {
            SendInput ˖
            break
        } else { 
            SendInput ̟
            break
        }
        }
        return

; PRECOMPOSED 
    LShift & NumpadClear::Send {NumpadClear}
    LShift & NumpadEnter::Send {Help}
    LShift & NumpadAdd::Send {Help}

    NumpadClear::
    loop
    {
    If GetKeyState("LShift", "P") {
        Input, key, L1, {LControl}{RControl}{LAlt}{RAlt}{LWin}{RWin}{F1}{F2}{F3}{F4}{F5}{F6}{F7}{F8}{F9}{F10}{F11}{F12}{Left}{Right}{Up}{Down}{Home}{End}{PgUp}{PgDn}{Del}{Ins}{BS}{CapsLock}{NumLock}{PrintScreen}{Space}{LShift}{RShift}{NumpadDiv}{NumpadMult}{NumpadSub}{NumpadHome}{Numpad7}{NumpadUp}{Numpad8}{NumpadPgup}{Numpad9}{NumpadLeft}{Numpad4}{NumpadClear}{Numpad5}{NumpadRight}{Numpad6}{NumpadEnd}{Numpad1}{NumpadDown}{Numpad2}{NumpadPgdn}{Numpad3}{NumpadAdd}{NumpadEnter}{NumpadIns}{Numpad0}{NumpadDot}{NumpadDel}
        SendInput % smacron[key]
        break
    } else { 
        Input, key, L1, {LControl}{RControl}{LAlt}{RAlt}{LWin}{RWin}{F1}{F2}{F3}{F4}{F5}{F6}{F7}{F8}{F9}{F10}{F11}{F12}{Left}{Right}{Up}{Down}{Home}{End}{PgUp}{PgDn}{Del}{Ins}{BS}{CapsLock}{NumLock}{PrintScreen}{Space}{LShift}{RShift}{NumpadDiv}{NumpadMult}{NumpadSub}{NumpadHome}{Numpad7}{NumpadUp}{Numpad8}{NumpadPgup}{Numpad9}{NumpadLeft}{Numpad4}{NumpadClear}{Numpad5}{NumpadRight}{Numpad6}{NumpadEnd}{Numpad1}{NumpadDown}{Numpad2}{NumpadPgdn}{Numpad3}{NumpadAdd}{NumpadEnter}{NumpadIns}{Numpad0}{NumpadDot}{NumpadDel}
        SendInput % macron[key]
        break
    }
    }
    return
    NumpadAdd & NumpadClear::
    loop
    {
    If GetKeyState("LShift", "P") {
        Input, key, L1, {LControl}{RControl}{LAlt}{RAlt}{LWin}{RWin}{F1}{F2}{F3}{F4}{F5}{F6}{F7}{F8}{F9}{F10}{F11}{F12}{Left}{Right}{Up}{Down}{Home}{End}{PgUp}{PgDn}{Del}{Ins}{BS}{CapsLock}{NumLock}{PrintScreen}{Space}{LShift}{RShift}{NumpadDiv}{NumpadMult}{NumpadSub}{NumpadHome}{Numpad7}{NumpadUp}{Numpad8}{NumpadPgup}{Numpad9}{NumpadLeft}{Numpad4}{NumpadClear}{Numpad5}{NumpadRight}{Numpad6}{NumpadEnd}{Numpad1}{NumpadDown}{Numpad2}{NumpadPgdn}{Numpad3}{NumpadAdd}{NumpadEnter}{NumpadIns}{Numpad0}{NumpadDot}{NumpadDel}
        SendInput % scaron[key]
        break
    } else { 
        Input, key, L1, {LControl}{RControl}{LAlt}{RAlt}{LWin}{RWin}{F1}{F2}{F3}{F4}{F5}{F6}{F7}{F8}{F9}{F10}{F11}{F12}{Left}{Right}{Up}{Down}{Home}{End}{PgUp}{PgDn}{Del}{Ins}{BS}{CapsLock}{NumLock}{PrintScreen}{Space}{LShift}{RShift}{NumpadDiv}{NumpadMult}{NumpadSub}{NumpadHome}{Numpad7}{NumpadUp}{Numpad8}{NumpadPgup}{Numpad9}{NumpadLeft}{Numpad4}{NumpadClear}{Numpad5}{NumpadRight}{Numpad6}{NumpadEnd}{Numpad1}{NumpadDown}{Numpad2}{NumpadPgdn}{Numpad3}{NumpadAdd}{NumpadEnter}{NumpadIns}{Numpad0}{NumpadDot}{NumpadDel}
        SendInput % caron[key]
        break
    }
    }
    return 
    NumpadEnter & NumpadClear::
    loop 
    {
    If GetKeyState("LShift", "P") {
        Input, key, L1, {LControl}{RControl}{LAlt}{RAlt}{LWin}{RWin}{F1}{F2}{F3}{F4}{F5}{F6}{F7}{F8}{F9}{F10}{F11}{F12}{Left}{Right}{Up}{Down}{Home}{End}{PgUp}{PgDn}{Del}{Ins}{BS}{CapsLock}{NumLock}{PrintScreen}{Space}{LShift}{RShift}{NumpadDiv}{NumpadMult}{NumpadSub}{NumpadHome}{Numpad7}{NumpadUp}{Numpad8}{NumpadPgup}{Numpad9}{NumpadLeft}{Numpad4}{NumpadClear}{Numpad5}{NumpadRight}{Numpad6}{NumpadEnd}{Numpad1}{NumpadDown}{Numpad2}{NumpadPgdn}{Numpad3}{NumpadAdd}{NumpadEnter}{NumpadIns}{Numpad0}{NumpadDot}{NumpadDel}
        SendInput % sogonek[key]
        break
    } else { 
        Input, key, L1, {LControl}{RControl}{LAlt}{RAlt}{LWin}{RWin}{F1}{F2}{F3}{F4}{F5}{F6}{F7}{F8}{F9}{F10}{F11}{F12}{Left}{Right}{Up}{Down}{Home}{End}{PgUp}{PgDn}{Del}{Ins}{BS}{CapsLock}{NumLock}{PrintScreen}{Space}{LShift}{RShift}{NumpadDiv}{NumpadMult}{NumpadSub}{NumpadHome}{Numpad7}{NumpadUp}{Numpad8}{NumpadPgup}{Numpad9}{NumpadLeft}{Numpad4}{NumpadClear}{Numpad5}{NumpadRight}{Numpad6}{NumpadEnd}{Numpad1}{NumpadDown}{Numpad2}{NumpadPgdn}{Numpad3}{NumpadAdd}{NumpadEnter}{NumpadIns}{Numpad0}{NumpadDot}{NumpadDel}
        SendInput % ogonek[key]
        break
    }
    }
    return
    NumpadIns & NumpadClear::
    loop
    {
    If GetKeyState("LShift", "P") {
        Input, key, L1, {LControl}{RControl}{LAlt}{RAlt}{LWin}{RWin}{F1}{F2}{F3}{F4}{F5}{F6}{F7}{F8}{F9}{F10}{F11}{F12}{Left}{Right}{Up}{Down}{Home}{End}{PgUp}{PgDn}{Del}{Ins}{BS}{CapsLock}{NumLock}{PrintScreen}{Space}{LShift}{RShift}{NumpadDiv}{NumpadMult}{NumpadSub}{NumpadHome}{Numpad7}{NumpadUp}{Numpad8}{NumpadPgup}{Numpad9}{NumpadLeft}{Numpad4}{NumpadClear}{Numpad5}{NumpadRight}{Numpad6}{NumpadEnd}{Numpad1}{NumpadDown}{Numpad2}{NumpadPgdn}{Numpad3}{NumpadAdd}{NumpadEnter}{NumpadIns}{Numpad0}{NumpadDot}{NumpadDel}
        SendInput % sdot[key]
        break
    } else { 
        Input, key, L1, {LControl}{RControl}{LAlt}{RAlt}{LWin}{RWin}{F1}{F2}{F3}{F4}{F5}{F6}{F7}{F8}{F9}{F10}{F11}{F12}{Left}{Right}{Up}{Down}{Home}{End}{PgUp}{PgDn}{Del}{Ins}{BS}{CapsLock}{NumLock}{PrintScreen}{Space}{LShift}{RShift}{NumpadDiv}{NumpadMult}{NumpadSub}{NumpadHome}{Numpad7}{NumpadUp}{Numpad8}{NumpadPgup}{Numpad9}{NumpadLeft}{Numpad4}{NumpadClear}{Numpad5}{NumpadRight}{Numpad6}{NumpadEnd}{Numpad1}{NumpadDown}{Numpad2}{NumpadPgdn}{Numpad3}{NumpadAdd}{NumpadEnter}{NumpadIns}{Numpad0}{NumpadDot}{NumpadDel}
        SendInput % dot[key]
        break
    }
    }
    return

; SUPERSUB
    NumpadDiv::
        Input, key, L1, {LControl}{RControl}{LAlt}{RAlt}{LWin}{RWin}{F1}{F2}{F3}{F4}{F5}{F6}{F7}{F8}{F9}{F10}{F11}{F12}{Left}{Right}{Up}{Down}{Home}{End}{PgUp}{PgDn}{Del}{Ins}{BS}{CapsLock}{NumLock}{PrintScreen}{Space}{LShift}{RShift}{NumpadDiv}{NumpadMult}{NumpadSub}{NumpadHome}{Numpad7}{NumpadUp}{Numpad8}{NumpadPgup}{Numpad9}{NumpadLeft}{Numpad4}{NumpadClear}{Numpad5}{NumpadRight}{Numpad6}{NumpadEnd}{Numpad1}{NumpadDown}{Numpad2}{NumpadPgdn}{Numpad3}{NumpadAdd}{NumpadEnter}{NumpadIns}{Numpad0}{NumpadDot}{NumpadDel}
        SendInput % super[key]
        return
    NumpadIns & NumpadDiv::
        Input, key, L1, {LControl}{RControl}{LAlt}{RAlt}{LWin}{RWin}{F1}{F2}{F3}{F4}{F5}{F6}{F7}{F8}{F9}{F10}{F11}{F12}{Left}{Right}{Up}{Down}{Home}{End}{PgUp}{PgDn}{Del}{Ins}{BS}{CapsLock}{NumLock}{PrintScreen}{Space}{LShift}{RShift}{NumpadDiv}{NumpadMult}{NumpadSub}{NumpadHome}{Numpad7}{NumpadUp}{Numpad8}{NumpadPgup}{Numpad9}{NumpadLeft}{Numpad4}{NumpadClear}{Numpad5}{NumpadRight}{Numpad6}{NumpadEnd}{Numpad1}{NumpadDown}{Numpad2}{NumpadPgdn}{Numpad3}{NumpadAdd}{NumpadEnter}{NumpadIns}{Numpad0}{NumpadDot}{NumpadDel}
        SendInput % sub[key]
        return