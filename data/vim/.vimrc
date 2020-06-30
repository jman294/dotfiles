" Vundle
set nocompatible
filetype indent off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ervandew/supertab'

" Javascript
Plugin 'sheerun/vim-polyglot'
Plugin 'dense-analysis/ale'

call vundle#end()
filetype plugin indent on
" End Vundle

" Ale
let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'css': ['prettier'],
\}
let g:ale_fix_on_save = 1

" Java
let g:JavaImpPaths = "/usr/lib/jvm/java-8-openjdk-amd64/jre/lib/rt.jar"
let g:JavaImpDataDir = $HOME . "/vim/JavaImp"

" Editing format
set cc=80
set number
set tabstop=2 softtabstop=0 expandtab shiftwidth=2

" Remaps
noremap <leader>` :Autoformat<CR>
noremap <space> :tabn<CR>
noremap <c-@> :tabp<CR>

" Vim Airline
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

" Vim and vimrc
nnoremap <S-t> :so ~/.vimrc<CR>:echo "Reloaded vimrc"<CR>
nnoremap <S-e> :e ~/.vimrc<CR>:echo ""<CR>

" File Formats
autocmd BufNewFile,BufRead *.ts  set filetype=typescript
autocmd BufNewFile,BufRead *.tsx setfiletype typescript
autocmd BufNewFile,BufRead *.dart  set filetype=dart
autocmd BufNewFile,BufRead meson.build set filetype=meson
autocmd BufNewFile,BufRead meson_options.txt set filetype=meson
