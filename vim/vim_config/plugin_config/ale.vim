let g:ale_linters = {'javascript': ['eslint']}

let g:ale_lint_on_text_changed = 1
let g:ale_lint_delay = 300
let g:ale_sign_column_always = 1
let b:ale_fixers = {'javascript': ['prettier', 'eslint']}
let g:ale_lint_on_enter = 1
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1
" Set this flag so that other plugins can use it, like airline.
let g:loaded_ale = 1

let g:ale_filetype_blacklist = ['nerdtree']

let g:ale_cache_executable_check_failures = 1

nnoremap <leader>ef :ALEFix eslint<Enter>

"let g:ale_sign_error = '•'
"let g:ale_sign_warning = '•'

let g:ale_sign_error = "◉"
let g:ale_sign_warning = "◉"

"still need to be done v 
"highlight clear SpellBad
"highlight SpellBad ctermfg=1 ctermbg=2 cterm=undercurl

"still need to be done v
highlight clear ALEErrorSign
highlight ALEErrorSign ctermfg=21 ctermbg=22 guifg=#ED6237 guibg=#F5F5F5
"highlight ALEWarningSign ctermfg=11 ctermbg=15 guifg=#ED6237 guibg=#F5F5F5

"hi link ALEErrorSign    Error
"hi link ALEWarningSign  Warning

"let g:ale_sign_error = '💣'
"let g:ale_sign_warning = '⚠'
"highlight clear ALEErrorSign
"highlight clear ALEWarningSign
