if $TERM ==# 'xterm-256color'
  set termguicolors
endif

"### Set background to dark
set background=dark

"### Check if nord theme is installed
if utils#HasColorscheme('nord')
  let g:nord_italic = 1
  let g:nord_bold = 1
  let g:nord_italic_comments = 1
  let g:nord_cursor_line_number_background = 1
  let g:nord_bold_vertical_split_line = 1
  let g:nord_underline = 1
  colorscheme nord
else
    colorscheme desert
endif