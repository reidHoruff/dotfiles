"just in case
set shell=/bin/bash

"vundle shit
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'ludovicchabant/vim-lawrencium'
Plugin 'Valloric/YouCompleteMe', {'pinned': 1}
Plugin 'wting/rust.vim'
Plugin 'mbbill/undotree'
Plugin 'FelikZ/ctrlp-py-matcher'
Plugin 'vim-scripts/a.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'solarnz/thrift.vim'
" Plugin 'MattesGroeger/vim-bookmarks'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'ihacklog/HiCursorWords'
Plugin 'vim-scripts/Conque-Shell'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-commentary'
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'
Plugin 'keith/tmux.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'powerline/powerline'
Plugin 'wincent/Command-T'
Plugin 'jscappini/material.vim'
Plugin 'mhumeSF/one-dark.vim'
"Plugin 'xolox/vim-session'
"Plugin 'xolox/vim-misc'

call vundle#end()
filetype plugin indent on

"facebook stuff
source $ADMIN_SCRIPTS/master.vimrc
source /mnt/vol/engshare/admin/scripts/vim/fbvim.vim
source /home/engshare/admin/scripts/vim/biggrep.vim
let g:hack#enable = 0

" cpp syntax stuff
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1

" bookmarks stuff
" let g:bookmark_no_default_key_mappings = 1
" let g:bookmark_auto_save = 1
" let g:bookmark_manage_per_buffer = 1
" map mm :BookmarkToggle<CR>
" map mn :BookmarkNext<CR>
" map gj :BookmarkShowAll<CR>

"nerd tree stuff
let g:NERDTreeWinSize = 35

"highlight current word after 300ms
let g:HiCursorWords_delay = 300

"always show status bar
set laststatus=2

" don't show seperators
let g:airline_left_sep=''
let g:airline_right_sep=''

"command t stuff
let g:CommandTMaxFiles=350000
let g:CommandTFileScanner = 'watchman'
let g:CommandTInputDebounce = 200
let g:CommandTMaxHeight = 20
let g:CommandTSmartCase = 1

"pane navigation
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>

noremap <Up> ""
noremap! <Up> <Esc>
noremap <Down> ""
noremap! <Down> <Esc>
noremap <Left> ""
noremap! <Left> <Esc>
noremap <Right> ""
noremap! <Right> <Esc>

"some useful shortcuts
map gt :TagbarToggle<CR><c-w>=
map gl :CtrlPLine<CR>
map gk :CtrlPBuffer<CR>
map gh <Leader>bej
map gs :w<CR>
map ga :A<CR>
map gn :NERDTreeToggle<CR><c-w>=
map ge :IH<CR>
map qq :q!<CR>
map cc ciw
map G Gzz
map gp gh<CR>
map gr :%s/\<<C-r><C-w>\>/
map gU gUiwe
map gu guiwe
map * <C-]>zz
map U :redo<CR>
map gv :e ~/.vimrc<CR>

if getcwd() =~ "fbcode"
  map gf :FBGW<CR>
else
  map gf :TBGW<CR>
endif

" map go :CtrlPRoot<CR>
" map go :FBVimMuralSearch<CR>
map go :CommandT<CR>

"allows hidden bufers (dont have to save before hiding)
set hidden

"syntax coloring
syntax enable
"set background=dark
colorscheme Tomorrow-Night
"colorscheme mustang
"colorscheme codeschool
"colorscheme 256-grayvim
"colorscheme Monokai
"colorscheme jellybeans
"colorscheme jelleybeans
"colorscheme solarized
"colorscheme material

hi VertSplit ctermbg=NONE guibg=NONE

"ignore search/replace case
set ignorecase
set smartcase
set hlsearch
set incsearch

"all things relating to tabs
set expandtab
set softtabstop=2
set shiftwidth=2
set autoindent
set smartindent

"ctrl+p stuff
let g:ctrlp_by_filename = 1
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
let g:ctrlp_max_files = 1000
let g:ctrlp_working_path_mode = 'c'

"easymotion activated via space
map <SPACE> <Plug>(easymotion-s2)

"fuck swap files
set noswapfile

"highlight line after 80 chars
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

"highlight search results
highlight Search ctermbg=yellow ctermfg=black

"creates a session
function! MakeSession()
  mksession! ~/.mysession.vim
endfunction

"leads a session file
function! LoadSession()
  source ~/.mysession.vim
  highlight Search ctermbg=yellow ctermfg=black
  hi VertSplit ctermbg=NONE guibg=NONE
endfunction

"load session on vim open if no file specified
"save session on vim exit if no file specified
au VimEnter * nested if argc() == 0 | call LoadSession() | endif
au VimLeave * if argc() == 0 | call MakeSession() | endif
let g:session_autosave = 'no'

"show numers
set number

"tab cycles through windows
map <Tab> <C-W><C-W>

"term coloring shit
set t_Co=256

"allow use of mouse
set mouse=a
set modifiable
map <2-LeftMouse> gd
set cursorline
set ttymouse=sgr

"you complete me stuff
" let g:ycm_min_num_identifier_candidate_chars = 2
" let g:ycm_min_num_of_chars_for_completion = 2
" let g:ycm_filetype_specific_completion_to_disable = { 'php':1, 'javascript':1, 'python':1, 'cpp':1}
" let g:ycm_global_ycm_extra_conf="~/.vim/bundle/YouCompleteMe/ycm_extra_conf.py"

"makes shifting easier
noremap < <<
noremap > >>

"buff explorer stuff
let g:bufExplorerShowDirectories=0
let g:bufExplorerShowRelativePath=0
let g:bufExplorerSortBy='mru'

"remember cursor position
set nosol

"persistent undo history
set undofile
set undodir=~/.vim/undodir

"use system clipboard as default reg
set clipboard=unnamed

"remove trailing whitespace on write
autocmd BufWritePre * :%s/\s\+$//e

" YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_min_num_identifier_candidate_chars = 4
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_error_symbol = 'x'
let g:ycm_warning_symbol = '!'
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
nnoremap <leader>pg :YcmCompleter GoToDefinitionElseDeclaration<CR>
map * :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>pd :YcmCompleter GoToDefinition<CR>
nnoremap <leader>pc :YcmCompleter GoToDeclaration<CR>
