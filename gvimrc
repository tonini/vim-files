if has("gui_macvim")

  set fuoptions=maxvert,maxhorz 
  set guifont=Bitstream\ Vera\ Sans\ Mono:h12
  set guioptions-=T  
  set stal=2 

elseif has("gui_gtk2")

  set guifont=Monaco
  set guioptions-=T  

elseif has("x11")
elseif has("gui_win32")
end

set anti 

set columns=200 
set lines=70

set gtl=%t gtt=%F
