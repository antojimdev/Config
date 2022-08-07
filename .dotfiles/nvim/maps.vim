" MAPPINGS -------------------------------------- {{{

" Set leader key 
let mapleader=" " 
let maplocalleader=","

" Remap escape
inoremap jk <Esc>
inoremap kj <Esc>

" Turn of highlighting after search
nnoremap <silent> <localleader>, :nohlsearch<cr>

" Yank (copy) from cursor to end of line
nnoremap Y y$

" Select all text in buffer
nnoremap <C-c> ggVG

" Insert line without insert mode
nnoremap <leader>o o<esc>
nnoremap <leader>O O<esc>

" Use shift + alt + hjkl to resize windows
nnoremap <C-M-j> :resize -10<CR>
nnoremap <C-M-k> :resize +10<CR>
nnoremap <C-M-h> :vertical resize -10<CR>
nnoremap <C-M-l> :vertical resize +10<CR>

" move line or visually selected block - alt+j/k
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" move split panes to left/bottom/top/right
nnoremap <A-h> <C-W>H
nnoremap <A-j> <C-W>J
nnoremap <A-k> <C-W>K
nnoremap <A-l> <C-W>L

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Alternate way to save
nnoremap <C-s> :w<CR>
nnoremap <C-w> :wq<CR>
nnoremap <C-q> :q!<CR>

" Move tabs
nnoremap <TAB> :bnext<cr>
nnoremap <S-TAB> :bprevious<cr>

" Better inline tabbing
vnoremap < <gv
vnoremap > >gv


" COC MAPPING
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" NERDTree MAPPING
nnoremap <S-n> :NERDTreeToggle<CR>
nnoremap <S-f> :NERDTreeFind<cr>

" FZF aliases
" Start searching from $HOME path
nnoremap <leader>f :Files ~/<cr>
nnoremap <leader>l :Ag<cr>

"  }}}
