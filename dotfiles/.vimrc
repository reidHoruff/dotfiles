"just in case
set shell=/bin/bash

"vundle shit
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle'
"Plugin 'Lokaltog/vim-easymotion'
"Plugin 'ludovicchabant/vim-lawrencium'
"Plugin 'Valloric/YouCompleteMe',
" Plugin 'mbbill/undotree'
Plugin 'vim-scripts/a.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'kien/ctrlp.vim'
"Plugin 'scrooloose/nerdtree'
"Plugin 'jlanzarotta/bufexplorer'
"Plugin 'solarnz/thrift.vim'
"Plugin 'MattesGroeger/vim-bookmarks'
Plugin 'octol/vim-cpp-enhanced-highlight'
"Plugin 'majutsushi/tagbar'
"Plugin 'tpope/vim-commentary'
Plugin 'Raimondi/delimitMate'
"Plugin 'wincent/Command-T'
"Plugin 'terryma/vim-expand-region'
"Plugin 'ihacklog/HiCursorWords'
Plugin 'xolox/vim-misc'
" Plugin 'xolox/vim-notes'
Plugin 'xolox/vim-session'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'reidHoruff/tagless'
Plugin 'christoomey/vim-tmux-navigator'
"Plugin 'tpope/vim-fugitive'
Plugin 'ntpeters/vim-better-whitespace'

call vundle#end()
filetype plugin indent on

"facebook stuff
"source $ADMIN_SCRIPTS/master.vimrc
"source /mnt/vol/engshare/admin/scripts/vim/fbvim.vim
"source /home/engshare/admin/scripts/vim/biggrep.vim
let g:hack#enable = 0
let g:fb_kill_whitespace = 0

" cpp syntax stuff
" let g:cpp_class_scope_highlight = 1
" let g:cpp_experimental_template_highlight = 1

"bookmarks stuff
"let g:bookmark_no_default_key_mappings = 1
"let g:bookmark_auto_save = 1
"let g:bookmark_manage_per_buffer = 1
"let g:bookmark_auto_close = 1
"let g:bookmark_sign = '~'
"let g:bookmark_highlight_lines = 0
"map mm :BookmarkToggle<CR>
"map mn :BookmarkNext<CR>
"map gj :BookmarkShowAll<CR>

"nerd tree stuff
"let g:NERDTreeWinSize = 35

"highlight current word after 300ms
let g:HiCursorWords_delay = 200

"always show status bar
set laststatus=2
"always show col/line num in status bar
set ruler

"command t stuff
"let g:CommandTMaxFiles=350000
"let g:CommandTFileScanner = 'watchman'
"let g:CommandTInputDebounce = 200
"let g:CommandTMaxHeight = 20
"let g:CommandTSmartCase = 1

"pane navigation
"nmap <silent> <c-k> :wincmd k<CR>
"nmap <silent> <c-j> :wincmd j<CR>
"nmap <silent> <c-h> :wincmd h<CR>
"nmap <silent> <c-l> :wincmd l<CR>

"disable arrow keys
noremap <Up> ""
noremap! <Up> <Esc>
noremap <Down> ""
noremap! <Down> <Esc>
noremap <Left> "
noremap! <Left> <Esc>
noremap <Right> ""
noremap! <Right> <Esc>

"some useful shortcuts
map gt :TagbarToggle<CR><c-w>=
map gl :CtrlPLine<CR>
map <C-f> :CtrlPBuffer<CR>
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
"map <BS> viB
map K <Plug>(expand_region_expand)
map gN :NERDTreeFind<CR><c-w>=
map gy :OpenSession<CR>

" select search engine depending on repo
if getcwd() =~ "fbcode"
  map gf :FBGW<CR>
else
  map gf :TBGW<CR>
endif

" fuzzy file opener... there are many
map go :CtrlPRoot<CR>
let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:20,results:20'
" map go :FBVimMuralSearch<CR>
" map go :CommandT<CR>

"allows hidden bufers (dont have to save before hiding)
set hidden

"syntax coloring
syntax enable
set background=dark
"colorscheme Tomorrow-Night
colorscheme 256-grayvim
"colorscheme Monokai
"colorscheme jellybeans
"colorscheme jelleybeans
"colorscheme solarized
"colorscheme material
"colorscheme badwolf

"set cursorline
set nocursorline

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
let g:ctrlp_max_files = 0
let g:ctrlp_working_path_mode = 'c'

"easymotion activated via space
"map <SPACE> <Plug>(easymotion-s2)
"map <SPACE> :bn<CR>
"map <SPACE> :BookmarkShowAll<CR>

"fuck swap files
set noswapfile

"highlight line after 80 chars, this shit never works
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

" session stuff
let g:session_autoload = 'no'
let g:session_autosave = 'yes'

"show numers
set number

"tab cycles through windows
"map <Tab> <C-W><C-W>

"term coloring shit
set t_Co=256

"allow use of mouse
set mouse=a
set modifiable
"double clicking on word will highlight all instances
map <2-LeftMouse> gd
"when highlighting all instance of current word under cursor
"make sure cursor stays in pos
map gd gd``
"mouse escape codes or some shit
set ttymouse=sgr

"you complete me stuff
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_filetype_specific_completion_to_disable = {'php':1, 'javascript':1, 'python':1, 'cpp':1}

"makes shifting easier
noremap < <<
noremap > >>

"remember cursor position
set nosol

"persistent undo history. not worth...
"set undofile
"set undodir=~/.vim/undodir

"use system clipboard as default reg. only works locally
set clipboard=unnamed

"remove trailing whitespace on write
"autocmd BufWritePre * :%s/\s\+$//e

"hi VertSplit ctermbg=NONE guibg=NONE

"removes | on vert splits
set fillchars+=vert:\ "trailing whitespace

"start scrolling 8 lines from top/bottom of pane
set scrolloff=8

nnoremap // :noh<CR>

au BufReadPost TARGETS set syntax=python
au BufReadPost *.cconf set syntax=python
au BufReadPost *.test set filetype=sql
au BufReadPost *.result set filetype=sql

let g:tagless_context_lines=2
let g:tagless_highlight_result=1
let g:tagless_window_height=30
let g:tagless_enable_shitty_syntax_highlighting=1
let g:tagless_infer_file_types=1
map gf :TaglessCW<CR>

"remember cursor positions
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" remember scroll pos when switching between buffers
if v:version >= 700
  au BufLeave * let b:winview = winsaveview()
  au BufEnter * if(exists('b:winview')) | call winrestview(b:winview) | endif
endif

" recursively find tags files
set tags=tags;/

