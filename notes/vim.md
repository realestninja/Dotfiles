# vim

## Command-line mode how-to's

### Paste register content

`<C-r><C-r>` allows pasting the content of a register.

Example: `<C-r><C-r>q` -> pastes the content of register "q".

### Edit content of a register

`let @x="abc"` will place the string "abc" into register "x".

Handy example: `:let @q="<C-r><C-r>q`

### Insert Special Character

`<C-v>`

* Example 1: `<C-v><Esc>` -> ^[
* Example 2: `<C-v><x>` -> ^X
