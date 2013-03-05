set nocompatible
set laststatus=2
set encoding=utf-8
set fileencoding=utf-8
set history=10000
set softtabstop=4
set shiftwidth=4
set tabstop=4
set autoindent
set expandtab
set ruler
set noswapfile
set nohls
set number
set t_ti= t_te=
set splitright splitbelow
set scrolloff=3
let mapleader=","
syntax on
set t_Co=256
set background=light
color jellybeans
set cursorline
hi cursorline ctermfg=NONE
set incsearch
set hlsearch
" clear highlight on carriage return
nnoremap <cr> :nohlsearch<cr>
" make regexes perl style
set magic
set ignorecase
set smartcase
set whichwrap+=<,>,h,l,[,]
set wrap linebreak nolist
set wildignore+=*.pyc
set wildmenu
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l
map <leader>w :w<cr>
map <leader>q :q<cr>
map <leader><leader> :b#<cr>
nmap <leader><cr> o<esc>
nmap <leader><cr> O<esc>
function! InsertTabWrapper()
	let col = col('.') - 1
	if !col || getline('.')[col - 1] !~ '\k'
		return "\<tab>"
	else
		return "\<c-p>"
	endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>
imap <C-c> <Esc>
" In Makefiles, don't expand tabs to spaces, since we need the actual tabs
autocmd FileType make set noexpandtab
