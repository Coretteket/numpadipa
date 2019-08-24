# NumpadIPA
> **numpadipa** /ˌnʌm.pəˈdaɪ.pə/ *n.* - a keyboard layout that uses the numpad keys, allowing the user to type the "entire" International Phonetic Alphabet.

### Introduction

[NumpadIPA](https://coretteket.github.io/numpadipa) is a keyboard layout, that makes use of the least used portion of your keyboard - the <em>numpad</em> - allowing you to type characters from the [International Phonetic Alphabet](https://en.wikipedia.org/wiki/International_Phonetic_Alphabet) (IPA). The International Phonetic Alphabet is used by many linguists and speech therapists to write not how a word is supposed to be written, but how it is to be pronounced with phonetic transcription. Using three keys from your numpad as modifier keys, you can easily type one of many glyphs as defined in the IPA, without constantly needing to switch between keyboard layouts, as it doesn't interfere with your normal keyboard set-up.

The implementation is simple: [modifier keys](https://en.wikipedia.org/wiki/Modifier_key). These are keys that, when pressed and held essentially enable another “layer” of the keyboard. NumpadIPA makes use of three: <kbd>Num Add</kbd>, <kbd>Num Enter</kbd> and <kbd>Num Ins</kbd>, which are the three larger keys on [most numpad sections](https://github.com/Coretteket/numpadipa/blob/master/docs/img/numpadexample.png?raw=true).

This meant my keyboard now had four layers, and I could use 26 keys of the alphanumeric section of the keyboard to create <sup>(26\*3=)</sup> 78 new keys, almost enough to fit in the consonants and vowels. For the rest of the symbols required, I used the 0-9 keys of the alphanumeric section, leaving them the same in the primary layer, and 13 remaining keys of the numpad sections to create <sup>(10\*3+13\*4=)</sup> 82 new keys. For a total of 160 keys, it was more than I needed initially.

### Installation

Simply double-click **NumpadIPA.exe** to activate the keyboard layout. To activate the keyboard layout automatically, every time you start your computer, you need to add it to the Windows startup folder. Right click on your NumpadIPA executable and select "Create shortcut". Drag and drop the newly created shortcut file into the startup folder, and it will be executed every time you restart your PC. On Windows 10 the folder is located here:

> C:\Users\{username}\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup

Once you have the layout installed and running, it is time to use it. Before you can, though, it is important to understand that not all programs and fonts support [Unicode](https://en.wikipedia.org/wiki/Unicode). If you are editing a file, make sure it is encoded in either UTF-8 or UTF-16, or you’ll find your file all garbled up once you open it.

As for fonts, you have to find a font that has all (or many) IPA characters supported. The creator of the font has to make a separate glyph for each character in the IPA, and it therefore gets skipped often in smaller fonts. Many recommend the [Doulos](https://software.sil.org/doulos/) font by SIL International, however most main-stream fonts like Arial and Times New Roman support many IPA characters out of the box as well.

For use in LaTeX, the package [tipa](https://www.ctan.org/pkg/tipa) is recommended by the International Phonetic Association. However, when using XeLaTeX, the font can simply be changed to one supporting IPA characters using [fontspec](https://www.ctan.org/pkg/fontspec).

### Usage

I have tried to create _some form_ of logic behind all this, but your perception of logic might differ, and sometimes it was simply impossible to create a logical shortcut. That being said, the <kbd>Num Add</kbd> key (abbreviated <kbd>Add</kbd>) is used, generally, for fortition of the original glyph; the <kbd>Num Enter</kbd> key (abbreviated <kbd>Ent</kbd>) is generally used for lenition; and the <kbd>Num Ins</kbd> key (abbreviated <kbd>Ins</kbd>) is used for an alternate version of the original glyph, but this definition should be taken very lightly.

Actually using these shortcuts is simple. If you want to type /ɐ/, simply press and hold <kbd>Add</kbd> and then press <kbd>a</kbd> before releasing <kbd>Add</kbd> again. This is comparable to how you would use the <kbd>Shift</kbd> and <kbd>Control</kbd> buttons. A one-handed version is also incorporated in the layout, where you first click the modifier key, release it and _then_ click a key. This only works for the <kbd>a</kbd> to <kbd>z</kbd> and <kbd>0</kbd> to <kbd>9</kbd> keys, however. 

For a full list of shortcuts, please go to [the website](https://coretteket.github.io/numpadipa#usage).

### Donation

If you like what you see here, please consider [donating](https://paypal.me/coretteket). What started as a small idea has grown to become a project I've worked on all summer. From coming up with a workable concept, to figuring out an entire scripting language, from testing and optimizing the layout, to documenting every shortcut online, I have spent hours creating NumpadIPA.

It is still far from done, however. There are still many features I want to incorporate, and bugs I want to fix. Every single dollar donated goes back into the program, as an excuse to invest more of my time, which as a stressed-out student I - unfortunately - don't have much of. [Donation](https://paypal.me/coretteket) is quick and easy using PayPal, supporting all major payment options. Thanks for your consideration!

### Contributing

This project is open source, meaning it is completely free-to-use. The project is hosted on [GitHub](https://github.com/Coretteket/numpadipa), where anyone can submit improvements and bug fixes. This is also where bugs should be reported, under the "Issues" tab. Contributing is simple, as everyone can submit a pull request to merge your changes into the main branch. The program is written in [AutoHotKey](https://autohotkey.com), which has really good documentation located [here](https://www.autohotkey.com/docs/AutoHotkey.htm).

If you want to get in touch with me or others using the keyboard layout, you can join the [Discord](https://discord.gg/qMySKBK) server linked to below. There, you can ask questions, suggest changes or additions, talk to others using the layout and help beta-test new features. I will be there to provide any assistance needed.

### Changelog

#### v0.1-alpha / Pre-release

*   Most of the 122 characters in the IPA mapped;
*   Diacritics, tonal markers and suprasegmental markers mapped;
*   Precomposed macron, caron, ogonek, and dot below mapped;
*   Unicode super- and subscript characters, including IPA, mapped;
*   Features tons of bugs.

#### v0.2-alpha / Pre-release

*   Everything included in v0.1-alpha;
*   Adding one-handed shortcuts by adding deadkey support (see documentation);
*   Changed the <kbd>Num Ins</kbd><kbd>Num Sub</kbd> shortcut from the full stop to the diacritics holder "◌";
*   Moved website from modified Jekyll to full HTML;
*   Finished documentation.