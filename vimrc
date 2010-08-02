call pathogen#runtime_append_all_bundles()

filetype off

set anti
set nocompatible
set noswapfile
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab
set ai 
set si
set sidescrolloff=2
set numberwidth=4
set equalalways
set cursorline
set hlsearch
set incsearch
set ignorecase
set smartcase
set tags=./tags;
set grepprg=ack
set background=dark 
set showcmd
set ruler
set laststatus=2
set nowrap
set linebreak
set sessionoptions=blank,buffers,curdir,folds,help,resize,tabpages,winsize
set backspace=indent,eol,start
set number
set matchpairs+=<:>
set vb t_vb=
set listchars=trail:.,tab:>-,eol:$
set nolist
set statusline=%<\ %n:%f\ %{fugitive#statusline()}\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)

syntax on

if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

function! Gui_settings()
  "some default settings for vim gui version
  set fuoptions=maxvert,maxhorz
  set columns=200
  set lines=70
  set gtl=%t gtt=%F
  colorscheme ir_black
endfunction

if has("gui_macvim")
  call Gui_settings()
  set fuoptions=maxvert,maxhorz 
  set guifont=Bitstream\ Vera\ Sans\ Mono:h14
  set guioptions-=T  
  set stal=2 
  set fullscreen
elseif has("gui_gtk")
  call Gui_settings()
  set guifont=Monaco
  set guioptions-=T
elseif has("x11")
  call Gui_settings()
elseif has("gui_win32")
  call Gui_settings()
else
  colorscheme railscasts
end

filetype plugin indent on

let mapleader = ","
let NERDTreeHijackNetrw=1
let g:AutoComplPop_IgnoreCaseOption = 0
let g:AutoComplPop_BehaviorKeywordLength = 2

function! RubyTagJumper()
  execute "set iskeyword+=:"
  execute "normal g]" 
  execute "set iskeyword-=:"
endfunction

map <Leader>v :vsp^M^W^W<CR>
map <Leader>h :split^M^W^W<CR>
map <Leader>n :NERDTreeToggle<CR>
map <Leader>i :set list!<CR>
map <Leader>j :tjump<CR>
map <F5> :!ruby %<CR>
map <Leader>t :CommandT<CR>
map <Leader>g :call RubyTagJumper()<CR>
map <Leader>co :TComment<CR>
map <Leader>b :FufBuffer<CR>

map <up> gk
map k gk
imap <up> <C-o>gk
map <down> gj
map j gj
imap <down> <C-o>gj
map E ge

autocmd FileType html :set omnifunc=htmlcomplete#CompleteTags
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete 
autocmd FileType ruby set iskeyword+=?,!
