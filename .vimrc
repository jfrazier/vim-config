" Global Settings
set nocompatible
filetype off
syntax off
set number
set list
set lcs=tab:\|\ ,eol:\_,trail:.,nbsp:%,extends:>,precedes:<
" Make backspace behave like other editors
set backspace=indent,eol,start
" Automatically indent on new lines
set autoindent
" Copy the indentation of the previous line if auto indent doesn't know what to do
set copyindent
" Highlight matching braces/tags
set showmatch
" Ignore case when searching
set ignorecase
" ...unless there's a capital letter in the query
set smartcase
" Indent to correct location with tab
set smarttab
" Highlight search matches
set hlsearch
" Vim can set the title of the terminal window
set title
" Use a visual indicator instead of a beep
set visualbell
"set foldmethod=manual

"use non-working dir for swp files
set backupdir=~/.swp_backup,/tmp
set directory=~/.swp_backup,/tmp

colorscheme blueGreenFantasee2
"colorscheme molokai
"colorscheme distinguished
" colorscheme corporation
"colorscheme Tomorrow-Night-Bright
"colorscheme Tomorrow-Night-Eighties
"colorscheme breeze
"colorscheme darkslategray
"colorscheme darktango
"colorscheme hhteal
"colorscheme kolorz
syntax enable
syntax on
set grepprg=ack
set wildignore+=*/target/*,*/target/build/*,*/.svn/*,*/node_modules/*,*/out/*,*/out/files/*,*/public/javascripts/lib/*,*/public/stylesheets/*


let mapleader = ","

" Ctrl-P configuration
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_by_filename = 0
let g:ctrlp_show_hidden = 0
let g:ctrlp_match_window = 'bottom,order:btt,min:10,max:50,results:200'
let g:ctrlp_default_input = 500
"let g:ctrlp_custom_ignore = {
"    \ 'dir':  '\v[\/]\.(target|build|git|hg|svn|.svn|text-base|war|ear)$',
"    \ 'file': '\v\.(exe|so|dll|svn-base|war|ear)$',
"    \ }

" Tagbar settings
nmap <leader><SPACE> :TagbarToggle<CR>

 "Nerd commenter settings
nmap q <plug>NERDCommenterToggle
vmap q <plug>NERDCommenterToggle

" EasyGrep settings
let g:EasyGrepCommand=1
let g:EasyGrepRecursive=1
let g:EasyGrepSearchCurrentBufferDir=0

" Normal Mode Mappings
" Krack current line at cursor
nnoremap K <Esc>i<CR><Esc>
" open new tab
nnoremap <leader>t :tab new<CR>
"   open Ctrl-P, to quick open files in working dir
nnoremap <leader>p :tab new<CR>:CtrlP<CR>
"nnoremap <leader>p :CtrlP<CR>
"nnoremap <leader>p :CtrlPMixed<CR>
"   toggle NerdTree, to explore working dir
nnoremap <leader>n :NERDTreeToggle<CR>
"   change buffers, to switch between files
nnoremap <leader>b :CtrlPBuffer<CR>
" nnoremap <leader>b :BufExplorer<CR>
"   old way to grep files, now use :Grep searchTerm
" nnoremap <leader>g :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>
"   open and close the 'c' list, the result list for grepped files
nnoremap <leader>= :copen<CR>
nnoremap <leader>- :cclose<CR>
"   toggle yank buffer, using YankRing
nnoremap <silent> <leader>y :YRShow<CR>
"   use space bar to move down the document/buffer
" nmap <SPACE> M<C-d>
nmap <SPACE> 10j
"   kill buffers and exit vim
nnoremap <leader>X :1,1000bd <bar> q<CR>
"   flip through buffers
" nmap <C-l> :bnext<CR> 
" nmap <C-h> :bNext<CR> 
"   toggle line numbers
" nmap <C-n> :set number! number?<cr>
" Run Ant for Heart
nnoremap <leader>a :!ant<CR>
nnoremap <leader>m :!mvn -P update validate<CR>
nnoremap <leader>w :w<CR>

" Insert Mode Mappings
"   use a double 'i' to escape from Insert mode
imap ii <Esc>
"   put semicolon at end of line
" imap <C-l> <Esc>$a;<Esc>

" Visual Mode Mappings
" Cut, copy, and paste in visual mode.
vmap <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>
vmap <C-v> :r !pbpaste<CR>

" Special Map Groupings
"   Bubble single lines
nmap <C-k> ddkP
nmap <C-j> ddp
"   Bubble multiple lines
vmap <C-k> xkP`[V`]
vmap <C-j> xp`[V`]

" Source the vimrc file after saving it
if has("autocmd")
     autocmd bufwritepost .vimrc source $MYVIMRC
endif

" Open .vimrc in new tab
nmap <leader>v :tabedit $MYVIMRC<CR>

" remember buffers on exit
exec 'set viminfo=%,' . &viminfo

" CSS/HTML hightlighting
let javascript_enable_domhtmlcss = 1

" Airline
set runtimepath^=~/.vim/bundle/airline
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#syntastic#enabled = 1
let g:airline_powerline_fonts = 1

" Javascript Vim
"set runtimepath+=~/vim/bundle/vim-javascript/

" Vundle
"set rtp+=~/.vim/bundle/vundle/
"call vundle#rc()

" let Vundle manage Vundle
" " required! 
" Bundle 'gmarik/vundle'
"
" " My bundles here:
"Bundle ""pangloss/vim-javascript"
" Bundle 'syntastic'
" "
" " original repos on GitHub
" Bundle 'tpope/vim-fugitive'
" Bundle 'Lokaltog/vim-easymotion'
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" Bundle 'tpope/vim-rails.git'
" " vim-scripts repos
" Bundle 'L9'
" Bundle 'FuzzyFinder'
" " non-GitHub repos
" Bundle 'git://git.wincent.com/command-t.git'
" " Git repos on your local machine (i.e. when working on your own plugin)
" Bundle 'file:///Users/gmarik/path/to/plugin'
" " ...
"
" filetype plugin indent on     " required!
" "
" " Brief help
" " :BundleList          - list configured bundles
" " :BundleInstall(!)    - install (update) bundles
" " :BundleSearch(!) foo - search (or refresh cache first) for foo
" " :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
" "
" " see :h vundle for more details or wiki for FAQ
" " NOTE: comments after Bundle commands are not allowed.
filetype plugin indent on

set ai
set ts=4
set sts=4
set sw=4
set textwidth=0
"set textwidth=79

" HTML (tab width 2 chr, no wrapping)
autocmd FileType html set sw=2
autocmd FileType html set ts=2
autocmd FileType html set sts=2
autocmd FileType html set textwidth=0
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

" CSS (tab width 2 chr, wrap at 79th char)
 autocmd FileType css set sw=2
 autocmd FileType css set ts=2
 autocmd FileType css set sts=2
 autocmd FileType css set textwidth=0
" autocmd FileType css set textwidth=79
 autocmd FileType css set omnifunc=csscomplete#CompleteCSS

" JavaScript (tab width 4 chr, wrap at 79th)
 autocmd FileType javascript set sw=4
 autocmd FileType javascript set ts=4
 autocmd FileType javascript set sts=4
 autocmd FileType javascript set textwidth=0
" autocmd FileType javascript set textwidth=79
 autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
