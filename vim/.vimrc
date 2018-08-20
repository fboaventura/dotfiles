" .vimrc
" Author: Frederico Freire Boaventura
"
" Load pathogen so it will autoload all extensions inside ~/.vim/bundle
call pathogen#infect()

set showmatch


set nocompatible
set ruler
set number
set incsearch

set expandtab
set tabstop=4
set shiftwidth=4

filetype on
filetype plugin indent on
set autoindent
set title
set smartindent

set encoding=utf8
set tenc=utf8
set fileencoding=utf8

syntax on
set background=dark
set t_Co=256 " Make use of 256 terminal colors
" colorscheme summerfruit256
" colorscheme solarized

" Code folding
if version >= 600
    set foldenable
    set foldmethod=marker
endif

" Dealing with tabs
" Moving around
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
" Changing tabs position
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>

" Treating Exceptions
autocmd FileType make set noexpandtab
autocmd FileType text setlocal textwidth=78

" Insert timestamp
nmap <F3> a<C-R>=strftime("(%Y-%m-%d %a %H:%M)")<CR><Esc>
imap <F3> <C-R>=strftime("(%Y-%m-%d %a %H:%M)")<CR>

" Append modeline after last line in buffer.
" Use substitute() instead of printf() to handle '%%s' modeline in LaTeX
" files.
function! AppendModeline()
  let l:modeline = printf(" vim: set ts=%d sw=%d tw=%d %set :",
          \ &tabstop, &shiftwidth, &textwidth, &expandtab ? '' : 'no')
  let l:modeline = substitute(&commentstring, "%s", l:modeline,"")
  call append(line("$"), l:modeline)
endfunction
nnoremap <silent> <Leader>ml :call AppendModeline()<CR>

" Enable tabs on vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_powerline_symbols = 1
let g:airline_theme='molokai'
set laststatus=2
