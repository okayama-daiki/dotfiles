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
