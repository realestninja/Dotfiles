# Nerd Fonts

* [Origin of Fonts](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Meslo/M)

All patched Versions are bugged and not recognized as monospacing but as proportional fonts. `gnome-terminal` doesn't allow non-monospacing fonts. Need repatching. I'm too lazy. Patching can be bypassed by using `dconf-editor` and typing the font at:
`/org/gnome/terminal/legay/profiles:`

#### tl:dr; gnome-terminal fix
Use `dconf-editor`
to edit `/org/gnome/terminal/legay/profiles:`
