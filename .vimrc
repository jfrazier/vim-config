" ///// GLOBAL SETTINGS \\\\\

" / Turn off Vi compatibility
	set nocompatible

" / Don't care about filetype, for now
	filetype off

" / Turn on syntax highlighting
	syntax on
	set foldcolumn=6
	set foldlevel=99
	set foldmethod=indent
" / Show line numbers
	set number

" / Show hidden characters
	set list

" / Map hidden characters to symbols
	set lcs=tab:\|\ ,eol:$,trail:.,nbsp:%,extends:>,precedes:<

" / Configure colorscheme
	set t_Co=256
	colorscheme kolorzalt
"		colorscheme Tomorrow-Night-Bright
		" / Quicklist ;)
		" colorscheme distinguished
		" colorscheme corporation
		" colorscheme Tomorrow-Night-Eighties

" / Use ack as the grep program vim uses (instead of vimgrep)
	set grepprg=ack

" / Ignore certain directories and files, for CtrlP file searching and others
	set wildignore+=*/target/build/*,*/.svn/*


" ///// HELPFUL VIMRC AND SESSION SAVING STUFF \\\\\
" / Reload the vimrc file after saving it, without having to restart vim
	if has("autocmd")
		 autocmd bufwritepost .vimrc source $MYVIMRC
	endif

" / Remember buffers on exit, save open files for next time
	exec 'set viminfo=%,' . &viminfo


" ///// SYNTAX HIGHLIGHTING AND FILETYPES \\\\\

" / Default filetype params
	filetype plugin indent on

" / enable CSS/HTML hightlighting
	let javascript_enable_domhtmlcss = 1

" / Default for all filetypes
	" Autoindent
	set ai
	" Tab spacing
	set ts=4
	set sts=4
	" Shift width
	set sw=4
	" Width of line
	set textwidth=79

" / HTML (tab width 2 chr, no wrapping)
	autocmd FileType html set sw=2
	autocmd FileType html set ts=2
	autocmd FileType html set sts=2
	autocmd FileType html set textwidth=0
	autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

" / CSS (tab width 2 chr, wrap at 79th char)
	 autocmd FileType css set sw=2
	 autocmd FileType css set ts=2
	 autocmd FileType css set sts=2
	 autocmd FileType css set textwidth=79
	 autocmd FileType css set omnifunc=csscomplete#CompleteCSS

" / JavaScript (tab width 4 chr, wrap at 79th)
	 autocmd FileType javascript set sw=4
	 autocmd FileType javascript set ts=4
	 autocmd FileType javascript set sts=4
	 autocmd FileType javascript set textwidth=79
	 autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS


" ///// PLUGIN CONFIGURATIONS \\\\\

" / Ctrl-P configuration
	set runtimepath^=~/.vim/bundle/ctrlp.vim
	let g:ctrlp_map = '<c-p>'
	let g:ctrlp_cmd = 'CtrlP'
	let g:ctrlp_working_path_mode = 'r'
	let g:ctrlp_by_filename = 0
	let g:ctrlp_show_hidden = 0
	let g:ctrlp_match_window = 'bottom,order:btt,min:10,max:30,results:100'
	let g:ctrlp_user_command = 'find %s -type f'

	let g:ctrlp_lazy_update = 331

" / EasyGrep settings
	let g:EasyGrepCommand=1
	let g:EasyGrepRecursive=1
	let g:EasyGrepSearchCurrentBufferDir=0

" / Airline
	set runtimepath^=~/.vim/bundle/airline
	set laststatus=2
	let g:airline#extensions#tabline#enabled = 1
		" let g:airline#extensions#syntastic#enabled = 1
	let g:airline_powerline_fonts = 1


" ///// KEY MAPPINGS \\\\\

" / Set map leader. First press map leader key, then follow with secondary key
" (see key maps below)
	let mapleader = ","

" / Leader Key Mappings
"	/ Normal Mode Mappings for Leader Keys
"		/ open new tab
		nnoremap <leader>t :tab new<CR>
"		/ open Ctrl-P, to quick open files in working dir
		nnoremap <leader>p :tab new<CR>:CtrlP<CR>
"			nnoremap <leader>p :CtrlPMixed<CR>
"		/ toggle NerdTree, to explore working dir
		nnoremap <leader>n :NERDTreeToggle<CR>
"		/ change buffers, to switch between files
		nnoremap <leader>b :CtrlPBuffer<CR>
"			/ old way to grep files, now use :Grep searchTerm
"			nnoremap <leader>g :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>
"		/ open and close the 'c' list, the result list for grepped files
		nnoremap <leader>= :copen<CR>
		nnoremap <leader>- :cclose<CR>
"		/ toggle yank buffer, using YankRing
		nnoremap <silent> <leader>y :YRShow<CR>
"		/ Open .vimrc in new tab
		nmap <leader>v :tabedit $MYVIMRC<CR>

" / Normal Mode Mappings - use when in Normal mode.
"	/ use space bar to move down the document/buffer
	nnoremap <SPACE> 10j
"		nmap <SPACE> M<C-d>
"		/ flip through buffers
"		nmap <C-l> :bnext<CR> 
"		nmap <C-h> :bNext<CR> 
"		/ toggle line numbers
"		nmap <C-n> :set number! number?<cr>

" / Insert Mode Mappings - use when in Insert mode.
"	/ use a double 'i' to escape from Insert mode
	imap ii <Esc>
"	/ put semicolon at end of line from anywhere in the line by double ;;
	imap ;; <Esc>$a;<Esc>

" / Visual Mode Mappings - use when in Visual mode with something selected.
"	/ Cut, copy, and paste in visual mode.
"	/ use Ctrl-x, c, or v to cut, copy, and paste text to and from the system
"	/ clipboard. Use Visual mode to select a block of text, then cut or copy it.
"	/ Paste works best in Insert Mode. YMMV
	vmap <C-x> :!pbcopy<CR>
	vmap <C-c> :w !pbcopy<CR><CR>
	imap <C-v> :r !pbpaste<CR>

" / Special Map Groupings
"	/ Line Bubbling - Move a line or block up or down using Ctrl plus the vim
"	/ standard direction movements (j and k).
"	/ Bubble single lines
	nmap <C-k> ddkP
	nmap <C-j> ddp
"	/ Bubble multiple lines
	vmap <C-k> xkP`[V`]
	vmap <C-j> xp`[V`]
