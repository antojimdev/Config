" PLUGGINS --------------------------------------- {{{

call plug#begin()
 " Syntax
 Plug 'sheerun/vim-polyglot'

 " Themes 
 Plug 'dracula/vim'
 Plug 'kyoz/purify', { 'rtp': 'vim' }
 Plug 'rakr/vim-one'

 "NERD Tree - tree explorer
 Plug 'preservim/nerdtree'

 " Enhancend status line
 Plug 'nvim-lualine/lualine.nvim'

 " Icons
 Plug 'ryanoasis/vim-devicons'

 " Editor eases
 Plug 'alvan/vim-closetag'
 Plug 'jiangmiao/auto-pairs'
 Plug 'tpope/vim-surround'
 Plug 'prettier/vim-prettier', { 'do': 'yarn install' }


 " Autocomplete
 " Plug 'sirver/ultisnips'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}

 " IDE
 Plug 'mhinz/vim-signify'
 Plug 'junegunn/fzf'
 Plug 'junegunn/fzf.vim'
 Plug 'yggdroot/indentline'
 Plug 'scrooloose/nerdcommenter'

 call plug#end()

" }}}
