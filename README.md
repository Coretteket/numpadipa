https://github.com/Coretteket/numpadipa/blob/master/archive/v0.1.zip
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
The answer was simple: [modifier keys](https://en.wikipedia.org/wiki/Modifier_key). These are keys that, when pressed and held essentially enable another "layer" of the keyboard. I quickly decided on three modifiers: <kbd>Num Add</kbd>, <kbd>Num Enter</kbd> and <kbd>Num Ins</kbd>, which are the three larger keys on [most numpad sections](https://github.com/Coretteket/numpadipa/blob/master/img/numpadexample.png?raw=true). 

This meant my keyboard now had four layers, and I could use 26 keys of the alphanumeric section of the keyboard to create *<sup>(26\*3=)</sup>* 78 new keys, almost enough to fit in the consonants and vowels. For the rest of the symbols required, I used the 0-9 keys of the alphanumeric section, leaving them the same in the primary layer, and 13 remaining keys of the numpad sections to create *<sup>(10\*3+13\*4=)</sup>* 82 new keys. For a total of 160 keys, it was more than I needed initially.

## Installation
...
## Unicode
Once you have the layout installed and running, it is time to use it. Before you can, though, it is important to understand that not all programs and fonts support [Unicode](https://en.wikipedia.org/wiki/Unicode). If you are editing a file, make sure it is encoded in either UTF-8 or UTF-16, or you'll find your file all garbled up once you open it.

As for fonts, you have to find a font that has all (or many) IPA characters supported. The creator of the font has to make a seperate glyph for each character in the IPA, and it therefore gets skipped often in smaller fonts. Many recommend the [Doulos](https://software.sil.org/doulos/) font by SIL International, however most main-stream fonts like Arial and Times New Roman support many IPA characters out of the box as well.

For use in LaTeX, the package [tipa](https://www.ctan.org/pkg/tipa) is recommended by the International Phonetic Association. However, when using XeLaTeX, the font can simply be changed to one supporting IPA characters using [fontspec](https://www.ctan.org/pkg/fontspec).

## Usage
> There are a *lot* of shortcuts to learn. Get over it.

### Definitions
As has been said, NumpadIPA makes use of your numpad. Three keys in particular are of real importance. These are <kbd>Num Add</kbd>, <kbd>Num Enter</kbd>, and <kbd>Num Ins</kbd>, which are used as *modifier keys*. You hold these keys and then press another to produce a character from the International Phonetic Alphabet.

I have tried to create *some form* of logic behind all this, but your perception of logic might differ, and sometimes it was simply impossible to create a logical shortcut. That being said, the <kbd>Num Add</kbd> key (abbreviated <kbd>Add</kbd>) is used, generally, for fortition of the original glyph; the <kbd>Num Enter</kbd> key (abbreviated <kbd>Ent</kbd>) is used for lenition; and the <kbd>Num Ins</kbd> key (abbreviated <kbd>Ins</kbd>) is used for an alternate version of the original glyph, but this definition should be taken very lightly.

### Qwerty
The following is a comprehensive list of all the glyphs that can be produced by simply pressing one of the three modifier keys. Some more glyphs can be created using the A-Z section of your keyboard, but those will be introduced further down the document. Note: if some or all characters below are not displaying, you do not have a IPA-compatible font on your device. Please consult [this page](https://github.com/Coretteket/numpadipa/wiki/Installation#unicode).

Actually using these shortcuts is simple. If you want to type /ɐ/, simply press and hold <kbd>Add</kbd> and then press <kbd>a</kbd> before releasing <kbd>Add</kbd> again. This is comparable to how you would use the <kbd>Shift</kbd> and <kbd>Control</kbd> buttons.

|-           |<kbd>Add</kbd>|<kbd>Enter</kbd>|<kbd>Ins</kbd>|
|:----------:|:------------:|:--------------:|:------------:|
|<kbd>a</kbd>|ɐ             |ɑ               |æ             |
|<kbd>b</kbd>|ʙ             |β               |ɓ             |
|<kbd>c</kbd>|ɟ             |ç               |ʛ             |
|<kbd>d</kbd>|ɖ             |ð               |ɗ             |
|<kbd>e</kbd>|ɛ             |ə               |ø             |
|<kbd>f</kbd>|ʋ             |ɸ               |ɶ             |
|<kbd>g</kbd>|ɡ             |ɢ               |ɠ             |
|<kbd>h</kbd>|ɦ             |ħ               |ʜ             |
|<kbd>i</kbd>|ɨ             |ɪ               |ɘ             |
|<kbd>j</kbd>|ʎ             |ʝ               |ʟ             |
|<kbd>k</kbd>|ʔ             |ʡ               |ʢ             |
|<kbd>l</kbd>|ɬ             |ɮ               |ɭ             |
|<kbd>m</kbd>|ɜ             |ɞ               |ɱ             |
|<kbd>n</kbd>|ŋ             |ɲ               |ɳ             |
|<kbd>o</kbd>|ɒ             |ɔ               |ɵ             |
|<kbd>p</kbd>|ɽ             |ɻ               |ˈ             |
|<kbd>q</kbd>|ʀ             |ʁ               |ɴ             |
|<kbd>r</kbd>|ɾ             |ɹ               |ɺ             |
|<kbd>s</kbd>|ʃ             |ʂ               |ɕ             |
|<kbd>t</kbd>|ʈ             |θ               |þ             |
|<kbd>u</kbd>|ʉ             |ʊ               |ɯ             |
|<kbd>v</kbd>|ⱱ             |ɥ               |ʌ             |
|<kbd>w</kbd>|ɰ             |ʍ               |ɧ             |
|<kbd>x</kbd>|ɣ             |χ               |ʕ             |
|<kbd>y</kbd>|œ             |ʏ               |ɤ             |
|<kbd>z</kbd>|ʒ             |ʐ               |ʑ             |

#### Vowels
You'll notice the vowels are not nicely spread out over all IPA vowels, namely: <kbd>a</kbd>, <kbd>e</kbd>, <kbd>i</kbd>, <kbd>o</kbd>, <kbd>u</kbd>, and <kbd>y</kbd>. This is because these six keys combined with the four layers do not provide enough vowels. *<sup>(6\*4 = 24 < 28)</sup>* Therefore, the four vowels /ɶ ʌ ɜ ɞ/ are spread out over <kbd>Ins</kbd><kbd>f</kbd>, <kbd>Ins</kbd><kbd>v</kbd>, <kbd>Add</kbd><kbd>m</kbd>, and <kbd>Ent</kbd><kbd>m</kbd> respectively.
#### Other
There are some certainly some oddities. Things like /ʛ/ being <kbd>Ins</kbd><kbd>c</kbd>, although unrelated to /c/. Some characters, like /ɧ/, were just to odd to fit in any spot logical, so <kbd>Ins</kbd><kbd>w</kbd> it is. Other than those oddities, one "special" glyph is added. This is <kbd>Ins</kbd><kbd>p</kbd>, one of the shortcuts for the stress marking character /ˈ/ - the other being <kbd>Num Mult</kbd> as explained in the numpad section.
#### Missed
I am currently not aware of any IPA characters, other than outdated and extended ones, that are not included in this keyboard layout. The (unofficial) capital characters have not been added, although it is on my to-do list. Please [reach out to me](https://github.com/Coretteket/numpadipa/wiki/Contact), if I have missed something and you want it added.
### Numpad
When referring to <kbd>Dot</kbd>, the Numpad key <kbd>Num Del</kbd> otherwise known as <kbd>Num Dot</kbd> is meant, not the actual <kbd>.</kbd> key.

The dental and alveolar click were not added seperately as I deem them too similar to undergo the hassle of finding a logical system to fit them in. Might be added in a far future.

### Overview
Some might find it easier to learn this keyboard layout from the perspective of the actual phonetic charts. These tables below are an attempt to help with that. The actual symbols are not listed, as these can be easily found [elsewhere](https://upload.wikimedia.org/wikipedia/commons/8/8e/IPA_chart_2018.pdf) and would only complicate these tables. Voiceless and voiced consonants, and rounded and unrounded vowels are put in separate columns.

#### Pulmonic consonants
|                |           Bilab.           |           Labio.           |           Dental           |           Alveo.           |           Postal.          |           Retrof.          |           Palat.           |            Velar           |           Uvular           |           Pharyn.          |           Glottal          |
|----------------|:--------------------------:|:--------------------------:|:--------------------------:|:--------------------------:|:--------------------------:|:--------------------------:|:--------------------------:|:--------------------------:|:--------------------------:|:--------------------------:|:--------------------------:|
| **Plosive**    |        <kbd>p</kbd>        |                            |                            |        <kbd>t</kbd>        |                            | <kbd>Add</kbd><kbd>t</kbd> |        <kbd>c</kbd>        |        <kbd>k</kbd>        |        <kbd>q</kbd>        |                            | <kbd>Add</kbd><kbd>k</kbd> |
|                |        <kbd>b</kbd>        |                            |                            |        <kbd>d</kbd>        |                            | <kbd>Add</kbd><kbd>d</kbd> | <kbd>Add</kbd><kbd>c</kbd> | <kbd>Add</kbd><kbd>g</kbd> | <kbd>Ent</kbd><kbd>g</kbd> |                            |                            |
| **Nasal**      |        <kbd>m</kbd>        | <kbd>Ins</kbd><kbd>m</kbd> |                            |        <kbd>n</kbd>        |                            | <kbd>Ins</kbd><kbd>n</kbd> | <kbd>Ent</kbd><kbd>n</kbd> | <kbd>Add</kbd><kbd>n</kbd> | <kbd>Ins</kbd><kbd>q</kbd> |                            |                            |
| **Trill**      | <kbd>Add</kbd><kbd>b</kbd> |                            |                            |        <kbd>r</kbd>        |                            |                            |                            |                            | <kbd>Add</kbd><kbd>q</kbd> |                            |                            |
| **Tap**        |                            | <kbd>Add</kbd><kbd>v</kbd> |                            | <kbd>Add</kbd><kbd>r</kbd> |                            | <kbd>Add</kbd><kbd>p</kbd> |                            |                            |                            |                            |                            |
| **Fricative**  | <kbd>Ent</kbd><kbd>f</kbd> |        <kbd>f</kbd>        | <kbd>Ent</kbd><kbd>t</kbd> |        <kbd>s</kbd>        | <kbd>Add</kbd><kbd>s</kbd> | <kbd>Len</kbd><kbd>s</kbd> | <kbd>Len</kbd><kbd>c</kbd> |        <kbd>x</kbd>        | <kbd>Len</kbd><kbd>x</kbd> | <kbd>Len</kbd><kbd>h</kbd> |        <kbd>h</kbd>        |
|                | <kbd>Ent</kbd><kbd>v</kbd> |        <kbd>v</kbd>        | <kbd>Ent</kbd><kbd>d</kbd> |        <kbd>z</kbd>        | <kbd>Add</kbd><kbd>z</kbd> | <kbd>Len</kbd><kbd>z</kbd> | <kbd>Len</kbd><kbd>j</kbd> | <kbd>Add</kbd><kbd>x</kbd> | <kbd>Len</kbd><kbd>q</kbd> | <kbd>Ins</kbd><kbd>x</kbd> | <kbd>Add</kbd><kbd>h</kbd> |
| **Lat. Fric.** |                            |                            |                            | <kbd>Add</kbd><kbd>l</kbd> |                            |                            |                            |                            |                            |                            |                            |
|                |                            |                            |                            | <kbd>Ent</kbd><kbd>l</kbd> |                            |                            |                            |                            |                            |                            |                            |
| **Approxim.**  |                            | <kbd>Add</kbd><kbd>f</kbd> |                            | <kbd>Ent</kbd><kbd>r</kbd> | <kbd>Ent</kbd><kbd>p</kbd> |        <kbd>j</kbd>        | <kbd>Add</kbd><kbd>w</kbd> |                            |                            |                            |                            |
| **Lat. Appr.** |                            |                            |                            |        <kbd>l</kbd>        | <kbd>Ins</kbd><kbd>l</kbd> | <kbd>Add</kbd><kbd>j</kbd> | <kbd>Ins</kbd><kbd>j</kbd> |                            |                            |                            |                            |

#### Non-pulmonic consonants

|                   |            Clicks            |          Implosives          |
|:------------------|:----------------------------:|:----------------------------:|
|**Bilabial**       |        <kbd>Dot</kbd>        |  <kbd>Ins</kbd><kbd>b</kbd>  |     
|**Dental**         |        (<kbd>\|</kbd>)       |  <kbd>Ins</kbd><kbd>d</kbd>  |    
|**(Post)alveolar** |        (<kbd>!</kbd>)        | <kbd>Ins</kbd><kbd>Dot</kbd> |     
|**Palatoalveolar** | <kbd>Add</kbd><kbd>Dot</kbd> |  <kbd>Ins</kbd><kbd>g</kbd>  |      
|**Alveolar lat.**  | <kbd>Ent</kbd><kbd>Dot</kbd> |  <kbd>Ins</kbd><kbd>c</kbd>  |      

#### Other consonants
|   |                            |
|---|----------------------------|
| ʍ | <kbd>Ent</kbd><kbd>w</kbd> |
| w |        <kbd>w</kbd>        |
| ɥ | <kbd>Ent</kbd><kbd>v</kbd> |
| ʜ | <kbd>Ins</kbd><kbd>h</kbd> |
| ʢ | <kbd>Ins</kbd><kbd>k</kbd> |
| ʡ | <kbd>Ent</kbd><kbd>k</kbd> |
| ɕ | <kbd>Ins</kbd><kbd>s</kbd> |
| ʑ | <kbd>Ins</kbd><kbd>z</kbd> |
| ɺ | <kbd>Ins</kbd><kbd>r</kbd> |
| ɧ | <kbd>Ins</kbd><kbd>w</kbd> |

#### Vowels
|           |            Front           |                            |           Central          |                            | Back                       |                            |
|:---------:|:--------------------------:|:--------------------------:|:--------------------------:|:--------------------------:| :------------------------: |:--------------------------:|
| **Close** |        <kbd>i</kbd>        |        <kbd>y</kbd>        | <kbd>Add</kbd><kbd>i</kbd> | <kbd>Add</kbd><kbd>u</kbd> | <kbd>Ins</kbd><kbd>u</kbd> |        <kbd>u</kbd>        |
|           | <kbd>Ent</kbd><kbd>i</kbd> | <kbd>Ent</kbd><kbd>y</kbd> |                            |                            |                            | <kbd>Ent</kbd><kbd>u</kbd> |
|           |        <kbd>e</kbd>        | <kbd>Ins</kbd><kbd>e</kbd> | <kbd>Ins</kbd><kbd>i</kbd> | <kbd>Ins</kbd><kbd>o</kbd> | <kbd>Ins</kbd><kbd>y</kbd> |        <kbd>o</kbd>        |
|  **Mid**  |                            |                            | <kbd>Ent</kbd><kbd>e</kbd> |                            |                            |                            |
|           | <kbd>Add</kbd><kbd>e</kbd> | <kbd>Add</kbd><kbd>y</kbd> | <kbd>Add</kbd><kbd>m</kbd> | <kbd>Ent</kbd><kbd>m</kbd> | <kbd>Ins</kbd><kbd>v</kbd> | <kbd>Ent</kbd><kbd>o</kbd> |
|           | <kbd>Ins</kbd><kbd>a</kbd> |                            | <kbd>Add</kbd><kbd>a</kbd> |                            |                            |                            |
|  **Open** |        <kbd>a</kbd>        | <kbd>Ins</kbd><kbd>f</kbd> |                            |                            | <kbd>Ent</kbd><kbd>a</kbd> | <kbd>Add</kbd><kbd>o</kbd> |
## Contact

## Changelog
**v0.1 - Pre-release**
- Most of the 122 characters in the IPA mapped
- Diacritics, tonal markers and suprasegmental markers mapped
- Precomposed macron, caron, ogonek, and dot below mapped
- Unicode super- and subscript characters, including IPA, mapped
- Features tons of bugs

~ *coretteket*