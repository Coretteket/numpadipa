; NUMPADIPA /nʊm.pəˈdaɪ.pə/
;   An IPA keyboard layout that makes use of the numpad and three new deadkeys to type the 'entire' IPA.
;
; KNOWN BUGS
;   "ø" is not supported natively for... some reason
;   Numpad keys do not support the three deadkeys, need to be held

SetNumLockState, Off

; DEADKEY
fort := {  a: "ɐ"
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

len := {   a: "ɑ"
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

; HOLDKEY
;   QWERTY
NumpadAdd & a::Send ɐ
NumpadEnter & a::Send ɑ
NumpadIns & a::Send æ

NumpadAdd & b::Send ʙ
NumpadEnter & b::Send β
NumpadIns & b::Send ɓ

NumpadAdd & c::Send ɟ
NumpadEnter & c::Send ç
NumpadIns & c::Send →

NumpadAdd & d::Send ɖ
NumpadEnter & d::Send ð
NumpadIns & d::Send ɗ

NumpadAdd & e::Send ɛ
NumpadEnter & e::Send ə
NumpadIns & e::Send ø

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

NumpadAdd::
 Input, key, C L1 M I, {LControl}{RControl}{LAlt}{RAlt}{LShift}{RShift}{LWin}{RWin}{F1}{F2}{F3}{F4}{F5}{F6}{F7}{F8}{F9}{F10}{F11}{F12}{Left}{Right}{Up}{Down}{Home}{End}{PgUp}{PgDn}{Del}{Ins}{BS}{CapsLock}{NumLock}{PrintScreen}
 SendInput % fort[key]
return

NumpadEnter:: 
 Input, key, C L1 M I, {LControl}{RControl}{LAlt}{RAlt}{LShift}{RShift}{LWin}{RWin}{F1}{F2}{F3}{F4}{F5}{F6}{F7}{F8}{F9}{F10}{F11}{F12}{Left}{Right}{Up}{Down}{Home}{End}{PgUp}{PgDn}{Del}{Ins}{BS}{CapsLock}{NumLock}{PrintScreen}
 SendInput % len[key]
return

NumpadIns:: 
 Input, key, C L1 M I, {LControl}{RControl}{LAlt}{RAlt}{LShift}{RShift}{LWin}{RWin}{F1}{F2}{F3}{F4}{F5}{F6}{F7}{F8}{F9}{F10}{F11}{F12}{Left}{Right}{Up}{Down}{Home}{End}{PgUp}{PgDn}{Del}{Ins}{BS}{CapsLock}{NumLock}{PrintScreen}
 SendInput % alter[key]
return

; %A_ThisHotkey%



