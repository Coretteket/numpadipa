# NumpadIPA
> **numpadipa** /ˌnʊm.pəˈdaɪ.pə/ *n.* - a keyboard layout that uses the numpad keys, allowing the user to type the "entire" International Phonetic Alphabet.

## Introduction
As an aspiring linguist and [conlanger](https://en.wikipedia.org/wiki/Constructed_language), I need to write [International Phonetic Alphabet](https://en.wikipedia.org/wiki/International_Phonetic_Alphabet) (IPA) symbols quite often, when describing a language's phonology, or sound system. For a long time, I simply copy-pasted the symbols from the  Wikipedia page, but this quickly became too cumbersome. Thus, my search for keyboard layouts began.

### Alternatives
First, I stumbled across the TypeIt keyboard, which is a website that has point-and-click support for many different languages, including a large portion of the IPA. It has some shortcuts as well, to allow for easier typing. Still, though, you have to type in the website's box instead of the program you want to actually have the text in.
> [TypeIt IPA](https://ipa.typeit.org/full/) - Tomasz P. Szynalski

Another keyboard, recommended and used by many, is the series of SIL keyboard layouts. These are real, installable keyboard layouts that make use of key sequences to produce many IPA characters. For example (depending on which keyboard you choose), <kbd>t</kbd><kbd>=</kbd> produces <kbd>θ</kbd>. However, it overrides keys I want to be able to use normally as well, like <kbd>:</kbd> and <kbd>$</kbd>. This means I constantly had to switch keyboard layouts while using this.
> [IPA Unicode Keyboards](https://scripts.sil.org/cms/scripts/page.php?site_id=nrsi&id=UniIPAKeyboard) - SIL International

### Concept
Both these keyboards are good, but I felt I needed something better. Something that I could use to type in every program, but did not compromise on existing keys. This inspired me to create my own keyboard layout, and I quickly realized my keyboard had an entire sixteen-key section that I had never used before: the *numpad*. Keys, all duplicates of other keys already on my regular keyboard.

These sixteen keys would not be enough, on their own, though. The International Phonetic Alphabet is *extensive*. It features 112 symbols for vowels and consonants, 86 of which are not a simple "a" to "z", and another 54 diacritics and other symbols for a total of 166 characters. Furthermore, I wanted some other special characters to be easily available, such as thorn (þ), and subscript numbers for the Proto-Indo-European's series of laryngeals (\*h₁, \*h₂, and \*h₃), among other things. 

### Implementation
The answer was simple: modifier keys. These are keys that, when pressed and held essentially enable another "layer" of the keyboard. I quickly decided on three modifiers: <kbd>Num Add</kbd>, <kbd>Num Enter</kbd> and <kbd>Num Ins</kbd>, which are the three larger keys on [most numpad sections](https://github.com/Coretteket/numpadipa/blob/master/img/numpadexample.png?raw=true). 

This meant my keyboard now had four layers, and I could use 26 keys of the alphanumeric section of the keyboard to create *<sup>(26\*3=)</sup>* 78 new keys, almost enough to fit in the consonants and vowels. For the rest of the symbols required, I used the 0-9 keys of the alphanumeric section, leaving them the same in the primary layer, and 13 remaining keys of the numpad sections to create *<sup>(10\*3+13\*4=)</sup>* 82 new keys. For a total of 160 keys, more than I needed initially.

~ *coretteket*