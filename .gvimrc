" OS Specific *****************************************************************
if has("gui_macvim")

  set fuoptions=maxvert,maxhorz " fullscreen options (MacVim only), resized window when changed to fullscreen
  set guifont=Bitstream\ Vera\ Sans\ Mono:h14
  set guioptions-=T  " remove toolbar
  set stal=2 " turn on tabs by default

elseif has("gui_gtk2")

  set guifont=Monaco
  set guioptions-=T  " remove toolbar

elseif has("x11")
elseif has("gui_win32")
end

" General *********************************************************************
set anti " Antialias font

"set transparency=0

" Default size of window
set columns=200 
set lines=70

" Tab headings 
set gtl=%t gtt=%F

" Ruby Interpreter
map <D-r> :!ruby %<cr>
map <D-t> :FuzzyFinderTextMate<cr>
