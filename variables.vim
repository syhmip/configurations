"### Identify the current system
let g:is_win = has('win32') || has('win64')
let g:is_linux = has('unix') && !has('macunix')
let g:is_mac = has('macunix')

let g:loaded_python_provider=0
let g:did_install_default_menus = 1

if executable('python')
   if g:is_win
    let g:python3_host_prog=substitute(exepath('python'), '.exe$', '', 'g')
  elseif g:is_linux || g:is_mac
    let g:python3_host_prog=exepath('python')
  endif
else
  echoerr 'Python not available, please fix!'
endif

let mapleader = ','

"### Avoid loading some plugins
let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1
let g:loaded_2html_plugin = 1
let g:loaded_zipPlugin = 1
let loaded_gzip = 1
let g:loaded_tarPlugin = 1
let g:loaded_tutor_mode_plugin = 1
let g:loaded_matchit = 1
let g:loaded_matchparen = 1