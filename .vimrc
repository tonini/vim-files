call pathogen#runtime_append_all_bundles()

filetype off

set nocompatible
set noswapfile

set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab

set ai " Automatically set the indent of a new line (local to buffer)
set si " smartindent	(local to buffer)

set sidescrolloff=2
set numberwidth=4

set equalalways " Multiple windows, when created, are equal in size
set splitbelow splitright

set cursorline
set hlsearch  " highlight search
set incsearch  " incremental search, search as you type
set ignorecase " Ignore case when searching 
set smartcase " Ignore case when searching lowercase

"Vertical split then hop to new buffer
:noremap ,v :vsp^M^W^W<CR>
:noremap ,h :split^M^W^W<CR>
:noremap ,n :NERDTreeToggle<CR>
:noremap ,i :set list!<CR> " Toggle invisible chars
map <F5> :!ruby %<CR>
map ,t :CommandT<CR>
map ,f :FuzzyFinderTextMate<CR>
map ,b :FuzzyFinderBuffer<CR>

set background=dark 
syntax on " syntax highlighting
colorscheme ir_black

set showcmd
set ruler " Show ruler
match LongLineWarning '\%120v.*' " Error format when a line is longer than 120
set laststatus=2

set nowrap
set linebreak  " Wrap at word

filetype plugin indent on

set sessionoptions=blank,buffers,curdir,folds,help,resize,tabpages,winsize

set backspace=indent,eol,start
set number " Show line numbers
set matchpairs+=<:>
set vb t_vb= " Turn off bell, this could be more annoying, but I'm not sure how

set listchars=trail:.,tab:>-,eol:$
set nolist

" Make cursor move by visual lines instead of file lines (when wrapping)
map <up> gk
map k gk
imap <up> <C-o>gk
map <down> gj
map j gj
imap <down> <C-o>gj
map E ge

" Omni Completion *************************************************************
autocmd FileType html :set omnifunc=htmlcomplete#CompleteTags
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete 

autocmd FileType ruby set iskeyword+=?,!

let NERDTreeHijackNetrw=1

let g:AutoComplPop_IgnoreCaseOption = 0
let g:AutoComplPop_BehaviorKeywordLength = 2

set tags=./tags;
set grepprg=ack
