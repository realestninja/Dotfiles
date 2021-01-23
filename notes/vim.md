# vim

## Paste register content

`<C-r><C-r>` allows pasting the content of a register.

Example: `<C-r><C-r>q` -> pastes the content of register "q".

## Edit content of a register

`:let @x="abc"<Enter>` will place the string "abc" into register "x".

Examples:
* edit in command-line mode: `:let @q="<C-r><C-r>q{do edit}"<Enter>`
* edit in buffer: `i<C-r><C-r>q{do edit}<Esc>"qdd`

## Insert Special Character

`<C-v>`

* Example 1: `<C-v><Esc>` -> ^[
* Example 2: `<C-v><x>` -> ^X
