
so ~/.config/nvim/plugins.vim
so ~/.config/nvim/maps.vim

" Plugins conf
source ~/.config/nvim/plug-conf/lualine.vim
source ~/.config/nvim/plug-conf/nerdtree.vim
source ~/.config/nvim/plug-conf/closetag.vim

" GENERAL SETTINGS ------------------------------------ {{{

" color schemes
if (has('termguicolors'))
   set termguicolors
endif
syntax enable

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" hybrid line numbers
set number relativenumber

" no wrap lines
set nowrap

" encoding for files
set fileencoding=utf-8

" encodign for terminal
set encoding=utf-8

" enable mouse click
set mouse=a

" Using system clipboard
set clipboard=unnamedplus

" Background dark
set background=dark

" Disable compatibilty with Vi.
set nocompatible

" Allow plugins to be used.
filetype plugin on

" Use syntax highlighting.
syntax enable

" Highlight line with cursor.
set cursorline

" Split window to open a pane in the bottom.
set splitbelow

" Split window to open a pane to the right.
set splitright

" Always leave a number of rows below cursor.
set scrolloff=15

" Set shift width to 2 spaces.
set shiftwidth=2

" Set tab stop to 2 spaces.
set tabstop=2

" Indent automatically.
set autoindent

" Smart indent
set smartindent

" Use the appropriate number of spaces to insert a tap in insert mode.
set expandtab

" remove tabs or spaces smart 
set smarttab

" Show command in the last line of the screen.
set showcmd

" Show the line and column position of cursor.
set ruler

" Set the number of lines to save in history.
set history=80

" Check to see if an file has changed by another text editor.
set autoread

" Switch to another buffer without saving.
set hidden

" Greatly enhance command line tab completion.
set wildmenu

" Set wildmode.
set wildmode=list:longest

" Ignore files.
set wildignore=*.jpg,*.mp4,*.zip,*.iso,*.pdf,*.pyc,*.odt,*.png,*.gif,*.tar,*.gz,*.xz,*.bz2,*.tgz,*.db,*.exe,*.odt,*.xlsx,*.docx,*.tar,*.rar,*.img,*.odt,*.m4a,*.bmp,*.ogg,*.mp3,*.gzip,*.flv,*.deb,*.rpm

" }}}


