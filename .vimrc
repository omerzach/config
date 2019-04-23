
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
set noexpandtab
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
