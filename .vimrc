
execute pathogen#infect()

" Keep cursor centered vertically on screen
:set scrolloff=999

" Disable backups, swap files, and undo files
set nobackup
set nowritebackup
set noswapfile
set noundofile

" Configure search
set wrapscan
set hlsearch
set incsearch
set ignorecase
set smartcase

" Configure tabs and indentation
" TODO: See if these need tweaking; they were copied from https://github.com/bkase/dotfiles/blob/master/.vimrc
set tabstop=2
set softtabstop=2
set expandtab
set smarttab
set shiftwidth=2
set backspace=indent,eol,start
set autoindent
set smartindent
set hidden
set wildmenu
set wildmode=list:longest
set ttyfast
set cursorline
set relativenumber
set undofile
set nopaste
set number " Show line numbers
set ruler " Show line and column position of cursor
filetype plugin indent on

" Configure status bar
set statusline=\ \%f%m%r%h%w\ ::\ %y\ [%{&ff}]\%=\ [%p%%:\ %c,%l/%L]\
set laststatus=2
set cmdheight=1

" Show commands
set showcmd

" Set formatting options
set formatoptions=c,q,r,t

" Enable syntax highlighting
filetype plugin on
syntax on

" Automatically remove trailing whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" Use solarized dark color scheme
set background=dark
colorscheme solarized

" Add vertical line at column 120
set colorcolumn=120

" Install vim-lug if it's not available yet
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'reasonml-editor/vim-reason-plus'

  Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'

call plug#end()

let g:deoplete#enable_at_startup = 1

let g:LanguageClient_serverCommands = {
  \ 'reason': ['/Users/omerzach/reason-language-server.exe']
  \ }

nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
nnoremap <silent> <cr> :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> gf :call LanguageClient#textDocument_formatting()<CR>
