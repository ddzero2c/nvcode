" Be IMproved
if &compatible
  set nocompatible
endif
" Gives vim abilty to recognize filetypes
filetype plugin indent on
" Enables syntax highlighing
syntax enable
" display long lines as just one line
set nowrap
" The encoding displayed
set encoding=utf-8
" The encoding written to file
set fileencoding=utf-8
" Enable your mouse
set mouse=a
" Horizontal splits will automatically be below
set splitbelow
" Vertical splits will automatically be to the right
set splitright
" Support 256 colors
set t_Co=256
" Your working directory will always be the same as your working directory
set autochdir
" Insert 4 spaces for a tab
set tabstop=4
" Change the number of space characters inserted for indentation
set shiftwidth=4
" Makes tabbing smarter will realize you have 2 vs 4
set smarttab
" Converts tabs to spaces
set expandtab
" Makes indenting smart
""set smartindent
" Good auto indent
""set autoindent
" Always display the status line
set laststatus=2
" Line numbers
set number
" Enable highlighting of the current line
set cursorline
" Get rid of annoying red highlights"
let g:python_highlight_all = 0
" Disable arrows"
let g:elite_mode=1
" Disable arrow movement, resize splits instead.
if get(g:, 'elite_mode')
    nnoremap <Up>    :resize -2<CR>
    nnoremap <Down>  :resize +2<CR>
    nnoremap <Left>  :vertical resize -2<CR>
    nnoremap <Right> :vertical resize +2<CR>
endif
" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
" Open terminal with F1
nnoremap <silent> <F1> :10split term://bash<CR>
" insert mode for terminal
autocmd BufWinEnter,WinEnter term://* startinsert
autocmd BufLeave term://* stopinsert
" Toggle tagbar
nnoremap <silent> <F2> :tagbar<CR>
" Toggle Line numbers
nnoremap <silent> <F4> :set nonumber!<CR>
" Toggle NERDTree
nnoremap <silent> <F5> :NERDTreeToggle<CR>
" Startify
nnoremap <silent> <F6> :Startify<CR>
" Get rid of highlights after search
nnoremap <silent> <F7> :nohlsearch<CR><F7>
" Toggle open buffers
nnoremap <silent> <F8> :BuffergatorToggle<CR>
" For fuzzy finder
nnoremap <silent> <F9> :Files<CR>
" F10 split vertical
nnoremap <silent> <F10> :vsplit<CR>
" F11 split horizontal
nnoremap <silent> <F11> :split<CR>
" Make current buffer only buffer
nnoremap <silent> <F12> :only<CR>
" Remap window switch
" Switch to rename for LSP to do add leader
""nnoremap <F4> :SearchTasks *<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Remap terminal switch
tnoremap <C-[> <C-\><C-n>
tnoremap <C-c><Esc> <Esc>
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l
" TAB in general mode will mov to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>
" Map leader switch to whatever you want
let mapleader = ","
