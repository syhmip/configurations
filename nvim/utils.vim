"### Open help in separate tab.
function! utils#HelpInNewTab()
   if &buftype == 'help'
      " convert help window to a tab
      execute "normal \<C-W>T"
   endif
endfunction

"### Add empty lines below
function! utils#AddEmptyLineBelow()
   call append(line("."), "")
endfunction

"### Check if a colorscheme exists in runtimepath.
function! utils#HasColorscheme(name) abort
  let l:pat = printf('colors/%s.vim', a:name)
  return !empty(globpath(&runtimepath, l:pat))
endfunction

"### Check if an Airline theme exists in runtimepath.
function! utils#HasAirlinetheme(name) abort
  let l:pat = printf('autoload/airline/themes/%s.vim', a:name)
  return !empty(globpath(&runtimepath, l:pat))
endfunction
