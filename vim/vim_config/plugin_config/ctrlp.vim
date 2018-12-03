let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|vendor'

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

let g:ctrlp_cmd = 'CtrlPMRU'
