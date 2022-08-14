" PLUGGINS --------------------------------------- {{{

call plug#begin()
 " Language packs
 Plug 'sheerun/vim-polyglot'

 " Themes 
 Plug 'dracula/vim'
 Plug 'kyoz/purify', { 'rtp': 'vim' }
 Plug 'rakr/vim-one'

 " NERD Tree - tree explorer
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
 
 " Installation of language servers required
 Plug 'neoclide/coc.nvim', {'branch': 'release'}

 " IDE
 Plug 'mhinz/vim-signify'
 " FzF require installation of Ag. Windows -> Choco install ag; Linux -> pacman -S the_silver_searcher
 Plug 'junegunn/fzf'
 Plug 'junegunn/fzf.vim'
 Plug 'yggdroot/indentline'
 Plug 'scrooloose/nerdcommenter'

 call plug#end()

" }}}
