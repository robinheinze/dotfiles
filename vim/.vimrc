execute pathogen#infect()
" Packages
" ctrl-p
" ag.vim (install silver searcher)
" nerdtree
" vim-fugitive
" vim-elixir
" vim-coffee-script
" bufexplorer

syntax enable
colorscheme jellybeans
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab
filetype plugin indent on
set number
autocmd FileType nerdtree cnoreabbrev <buffer> bd :NERDTreeToggle

" Pane navigation
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" NERDTree Toggle
map <F2> :NERDTreeToggle<CR>

let mapleader = ","

" Resizing stuff
nnoremap <silent> <Leader>= :exe ":vertical resize " . (winwidth(0) * 6/5)<CR>
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 6/5)<CR>
nnoremap <silent> <Leader>- :exe ":vertical resize " . (winwidth(0) * 5/6)<CR>
nnoremap <silent> <Leader>_ :exe "resize " . (winheight(0) * 5/6)<CR>


" I know, I'm a dirty rotten cheater
set mouse=a

" Clipboard copy/cut
vnoremap <C-x> "*x
vnoremap <C-c> "*y
" Paste Toggle
set pastetoggle=<F3>

" Visually show whitespace
set list listchars=tab:»·,trail:·

" Make vim background transparent so terminal settings come through
" hi Normal ctermbg=none
" hi NonText ctermbg=none
