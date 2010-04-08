call pathogen#runtime_append_all_bundles()

filetype off

set nocompatible
set noswapfile

" Tabs ************************************************************************
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab

" Indenting *******************************************************************
set ai " Automatically set the indent of a new line (local to buffer)
set si " smartindent	(local to buffer)

" Scrollbars ******************************************************************
set sidescrolloff=2
set numberwidth=4

" Windows *********************************************************************
set equalalways " Multiple windows, when created, are equal in size
set splitbelow splitright

"Vertical split then hop to new buffer
:noremap ,v :vsp^M^W^W<cr>
:noremap ,h :split^M^W^W<cr>

" Cursor highlights ***********************************************************
set cursorline
"set cursorcolumn

" Searching *******************************************************************
set hlsearch  " highlight search
set incsearch  " incremental search, search as you type
set ignorecase " Ignore case when searching 
set smartcase " Ignore case when searching lowercase

" Colors **********************************************************************
"set t_Co=256 " 256 colors
set background=dark 
syntax on " syntax highlighting
colorscheme ir_black

" Status Line *****************************************************************
set showcmd
set ruler " Show ruler
"set ch=2 " Make command line two lines high
match LongLineWarning '\%120v.*' " Error format when a line is longer than 120
set laststatus=2

" Line Wrapping ***************************************************************
set nowrap
set linebreak  " Wrap at word

" File Stuff ******************************************************************
filetype plugin indent on
" To show current filetype use: set filetype

" Sessions ********************************************************************
" Sets what is saved when you save a session
set sessionoptions=blank,buffers,curdir,folds,help,resize,tabpages,winsize

" Misc ************************************************************************
set backspace=indent,eol,start
set number " Show line numbers
set matchpairs+=<:>
set vb t_vb= " Turn off bell, this could be more annoying, but I'm not sure how

" Invisible characters *********************************************************
set listchars=trail:.,tab:>-,eol:$
set nolist
:noremap ,i :set list!<CR> " Toggle invisible chars

" Cursor Movement *************************************************************
" Make cursor move by visual lines instead of file lines (when wrapping)
map <up> gk
map k gk
imap <up> <C-o>gk
map <down> gj
map j gj
imap <down> <C-o>gj
map E ge

" Ruby stuff ******************************************************************
"compiler ruby         " Enable compiler support for ruby
map <F5> :!ruby %<CR>

" Omni Completion *************************************************************
autocmd FileType html :set omnifunc=htmlcomplete#CompleteTags
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
" May require ruby compiled in
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete 

" iskeyword
autocmd FileType ruby set iskeyword+=?,!

" NERDTree ********************************************************************
:noremap ,n :NERDTreeToggle<CR>

let NERDTreeHijackNetrw=1

" Command-T
map ,t :CommandT<CR>

" fuzzyfinder_textmate ********************************************************
map ,f :FuzzyFinderTextMate<CR>
map ,b :FuzzyFinderBuffer<CR>
"let g:fuzzy_ignore = '.o;.obj;.bak;.exe;.pyc;.pyo;.DS_Store;.db'

" autocomplpop ***************************************************************
" complete option
"set complete=.,w,b,u,t,k
"let g:AutoComplPop_CompleteOption = '.,w,b,u,t,k'
"set complete=.
let g:AutoComplPop_IgnoreCaseOption = 0
let g:AutoComplPop_BehaviorKeywordLength = 2

" ctags, set the tag file search order ****************************************
set tags=./tags;

" ack, use Ack instead of grep ************************************************
set grepprg=ack
