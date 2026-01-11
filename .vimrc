call plug#begin()

" List your plugins here
Plug 'ayu-theme/ayu-vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

set termguicolors     " enable true colors support
let ayucolor="dark"
colorscheme ayu

augroup AyuTransparent
  autocmd!
  autocmd ColorScheme ayu highlight Normal      guibg=NONE ctermbg=NONE
"  autocmd ColorScheme ayu highlight LineNr      guibg=NONE ctermbg=NONE
"  autocmd ColorScheme ayu highlight SignColumn  guibg=NONE ctermbg=NONE
"  autocmd ColorScheme ayu highlight EndOfBuffer guibg=NONE ctermbg=NONE
augroup END

" move on display lines
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k
inoremap <Up> <C-o>gk
inoremap <Down> <C-o>gj

" move from line last to next line first and ...
set whichwrap=b,s,h,l,<,>,[,],~

" Enable syntax hightlighting
if has('syntax')
  syntax on
endif

nnoremap Y y$

" tab size
set tabstop=2
set number
set relativenumber
