; NUMPADIPA /ˌnʊm.pəˈdaɪ.pə/
;   An IPA keyboard layout that makes use of the numpad and three new deadkeys to type the 'entire' IPA.
;
; KNOWN BUGS
;   "ø" is not supported natively for some reason; alt-code used
;   Numpad keys do not support the three deadkeys, need to be held
;   Combo is Shift + Numpad8 + vowel instead of natural Numpad8 + Shift + vowel
;   Numlock might be useless, go to Control Panel > Accesibility > Mouse... and turn it off
;   Caps ogonek sends "Help" key to avoid hitting Enter

#SingleInstance, force
SetKeyDelay -1
Process, Priority, , High
SetBatchLines, -1
;SetNumLockState, Off

; DEADKEY
    fort := { a: "ɐ"
            , b: "ʙ"
            , c: "ɟ"
            , d: "ɖ"
            , e: "ɛ"
            , f: "ʋ"
            , g: "ɠ"
            , h: "ɦ"
            , i: "ɨ"
            , j: "ʎ"
            , k: "ʔ"
            , l: "ɬ"
            , m: "ɜ"
            , n: "ŋ"
            , o: "ɒ"
            , p: "ɽ"
            , q: "ʀ"
            , r: "ɾ"
            , s: "ʃ"
            , t: "ʈ"
            , u: "ʉ"
            , v: "ⱱ"
            , w: "ɰ"
            , x: "ɣ"
            , y: "œ"
            , z: "ʒ"
            , 1: "̏"
            , 2: "̀"
            , 3: "̄"
            , 4: "́"
            , 5: "̋"
            , 6: "̌"
            , 7: "᷄"
            , 8: "᷇"
            , 9: "᷈"
            , 0: "ꜛ"}

    len := {  a: "ɑ"
            , b: "β"
            , c: "ç"
            , d: "ð"
            , e: "ə"
            , f: "ɸ"
            , g: "ʛ"
            , h: "ħ"
            , i: "ɪ"
            , j: "ʝ"
            , k: "ʡ"
            , l: "ɮ"
            , m: "ɞ"
            , n: "ɲ"
            , o: "ɔ"
            , p: "ɻ"
            , q: "ʁ"
            , r: "ɹ"
            , s: "ʂ"
            , t: "θ"
            , u: "ʊ"
            , v: "ɥ"
            , w: "ʍ"
            , x: "χ"
            , y: "ʏ"
            , z: "ʐ"
            , 1: "˩"
            , 2: "˨"
            , 3: "˧"
            , 4: "˦"
            , 5: "˥"
            , 6: "̂"
            , 7: "᷅"
            , 8: "᷆"
            , 9: "᷉"
            , 0: "ꜜ"}


    alter := { a: "æ"
            , b: "ɓ"
            , c: "→"
            , d: "ɗ"
            , e: "{ALTDOWN}{Numpad1}{Numpad5}{Numpad5}{ALTUP}"
            , f: "ɶ"
            , g: "ɡ"
            , h: "ʜ"
            , i: "ɘ"
            , j: "ʟ"
            , k: "ʢ"
            , l: "ɭ"
            , m: "ɱ"
            , n: "ɳ"
            , o: "ɵ"
            , p: "∅"
            , q: "ɴ"
            , r: "ʁ"
            , s: "ɕ"
            , t: "þ"
            , u: "ɯ"
            , v: "ʌ"
            , w: "ɧ"
            , x: "ʕ"
            , y: "ɤ"
            , z: "ʑ"
            , 1: "¹"
            , 2: "²" 
            , 3: "³"
            , 4: "⁴"
            , 5: "⁵"
            , 6: "⁶"
            , 7: "⁷"
            , 8: "⁸"
            , 9: "⁹"
            , 0: "⁰"}
    smacron := {a: "Ā"
            ,q: "Ǣ"
            ,e: "Ē"
            ,g: "Ḡ"
            ,i: "Ī"
            ,o: "Ō"
            ,u: "Ū"
            ,y: "Ȳ"}
    macron := {a: "ā"
            ,q: "ǣ"
            ,e: "ē"
            ,g: "ḡ"
            ,i: "ī"
            ,o: "ō"
            ,u: "ū"
            ,y: "ȳ"}
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
            ,z: "ž"}
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
        ,z: "ẓ"}
    dot := {a: "Ạ"
        ,b: "Ḅ"
        ,c: "c̣" ;
        ,d: "Ḍ"
        ,e: "Ẹ"
        ,f: "f̣" ;
        ,g: "g̣" ;
        ,h: "Ḥ"
        ,i: "Ị"
        ,j: "j̣" ;
        ,k: "Ḳ"
        ,l: "Ḷ"
        ,m: "Ṃ"
        ,n: "Ṇ"
        ,o: "Ọ"
        ,p: "p̣" ;
        ,q: "q̣" ;
        ,r: "Ṛ"
        ,s: "Ṣ"
        ,t: "Ṭ"
        ,u: "Ụ"
        ,v: "Ṿ"
        ,w: "Ẉ"
        ,x: "x̣" ;
        ,y: "Ỵ"
        ,z: "Ẓ"}



; HOLDKEY
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
    NumpadIns & c::Send ◌

    NumpadAdd & d::Send ɖ
    NumpadEnter & d::Send ð
    NumpadIns & d::Send ɗ

    NumpadAdd & e::Send ɛ
    NumpadEnter & e::Send ə
    NumpadIns & e::Send {ALTDOWN}{Numpad1}{Numpad5}{Numpad5}{ALTUP} 

    NumpadAdd & f::Send ʋ
    NumpadEnter & f::Send ɸ
    NumpadIns & f::Send ɶ

    NumpadAdd & g::Send ɠ
    NumpadEnter & g::Send ʛ
    NumpadIns & g::Send ɡ

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
    NumpadIns & p::Send ∅

    NumpadAdd & q::Send ʀ
    NumpadEnter & q::Send ʁ
    NumpadIns & q::Send ɴ

    NumpadAdd & r::Send ɾ
    NumpadEnter & r::Send ɹ
    NumpadIns & r::Send ʁ

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
    NumpadIns & NumpadSub::Send .

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
    :*:l̴::ɫ
; PRECOMPOSED 
    LShift & NumpadClear::Send {NumpadClear}
    LShift & NumpadEnter::Send {Help}
    LShift & NumpadAdd::Send {Help}
    
    NumpadClear::
    loop
    {
    If GetKeyState("LShift", "P") {
        Input, key, L1, {LControl}{RControl}{LAlt}{RAlt}{LWin}{RWin}{F1}{F2}{F3}{F4}{F5}{F6}{F7}{F8}{F9}{F10}{F11}{F12}{Left}{Right}{Up}{Down}{Home}{End}{PgUp}{PgDn}{Del}{Ins}{BS}{CapsLock}{NumLock}{PrintScreen}{Space}{LShift}{RShift}
        SendInput % smacron[key]
        break
    } else { 
        Input, key, L1, {LControl}{RControl}{LAlt}{RAlt}{LWin}{RWin}{F1}{F2}{F3}{F4}{F5}{F6}{F7}{F8}{F9}{F10}{F11}{F12}{Left}{Right}{Up}{Down}{Home}{End}{PgUp}{PgDn}{Del}{Ins}{BS}{CapsLock}{NumLock}{PrintScreen}{Space}{LShift}{RShift}
        SendInput % macron[key]
        break
    }
    }
    return
    NumpadAdd & NumpadClear::
    loop
    {
    If GetKeyState("LShift", "P") {
        Input, key, L1, {LControl}{RControl}{LAlt}{RAlt}{LWin}{RWin}{F1}{F2}{F3}{F4}{F5}{F6}{F7}{F8}{F9}{F10}{F11}{F12}{Left}{Right}{Up}{Down}{Home}{End}{PgUp}{PgDn}{Del}{Ins}{BS}{CapsLock}{NumLock}{PrintScreen}{Space}{LShift}{RShift}}
        SendInput % scaron[key]
        break
    } else { 
        Input, key, L1, {LControl}{RControl}{LAlt}{RAlt}{LWin}{RWin}{F1}{F2}{F3}{F4}{F5}{F6}{F7}{F8}{F9}{F10}{F11}{F12}{Left}{Right}{Up}{Down}{Home}{End}{PgUp}{PgDn}{Del}{Ins}{BS}{CapsLock}{NumLock}{PrintScreen}{Space}{LShift}{RShift}}
        SendInput % caron[key]
        break
    }
    }
    return 
    NumpadEnter & NumpadClear::
    loop
    {
    If GetKeyState("LShift", "P") {
        Input, key, L1, {LControl}{RControl}{LAlt}{RAlt}{LWin}{RWin}{F1}{F2}{F3}{F4}{F5}{F6}{F7}{F8}{F9}{F10}{F11}{F12}{Left}{Right}{Up}{Down}{Home}{End}{PgUp}{PgDn}{Del}{Ins}{BS}{CapsLock}{NumLock}{PrintScreen}{Space}{LShift}{RShift}}
        SendInput % sogonek[key]
        break
    } else { 
        Input, key, L1, {LControl}{RControl}{LAlt}{RAlt}{LWin}{RWin}{F1}{F2}{F3}{F4}{F5}{F6}{F7}{F8}{F9}{F10}{F11}{F12}{Left}{Right}{Up}{Down}{Home}{End}{PgUp}{PgDn}{Del}{Ins}{BS}{CapsLock}{NumLock}{PrintScreen}{Space}{LShift}{RShift}}
        SendInput % ogonek[key]
        break
    }
    }
    NumpadIns & NumpadClear::
    loop
    {
    If GetKeyState("LShift", "P") {
        Input, key, L1, {LControl}{RControl}{LAlt}{RAlt}{LWin}{RWin}{F1}{F2}{F3}{F4}{F5}{F6}{F7}{F8}{F9}{F10}{F11}{F12}{Left}{Right}{Up}{Down}{Home}{End}{PgUp}{PgDn}{Del}{Ins}{BS}{CapsLock}{NumLock}{PrintScreen}{Space}{LShift}{RShift}}
        SendInput % sdot[key]
        break
    } else { 
        Input, key, L1, {LControl}{RControl}{LAlt}{RAlt}{LWin}{RWin}{F1}{F2}{F3}{F4}{F5}{F6}{F7}{F8}{F9}{F10}{F11}{F12}{Left}{Right}{Up}{Down}{Home}{End}{PgUp}{PgDn}{Del}{Ins}{BS}{CapsLock}{NumLock}{PrintScreen}{Space}{LShift}{RShift}}
        SendInput % dot[key]
        break
    }
    }
    return