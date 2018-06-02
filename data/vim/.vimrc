" Vundle
set nocompatible
filetype indent off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'Chiel92/vim-autoformat'
Plugin 'VundleVim/Vundle.vim'
Plugin 'wikitopian/hardmode'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ervandew/supertab'
"Plugin 'flazz/vim-colorschemes'
"Plugin 'felixhummel/setcolors.vim'
"Plugin 'rust-lang/rust.vim'
Plugin 'dart-lang/dart-vim-plugin'
Plugin 'leafgarland/typescript-vim'
Plugin 'thaerkh/vim-workspace'

call vundle#end()
filetype plugin indent on
" End Vundle

" Java
let g:JavaImpPaths = "/usr/lib/jvm/java-8-openjdk-amd64/jre/lib/rt.jar"
let g:JavaImpDataDir = $HOME . "/vim/JavaImp"

" Productivity
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode() " Call Vim Hardmode when Vim starts

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

" Hide status bar
let s:hidden_all = 1
function! ToggleHiddenAll ()
  if s:hidden_all  == 0
    let s:hidden_all = 1
    set noruler
    set laststatus=0
    set noshowcmd
    set showmode
  else
    let s:hidden_all = 0
    set noshowmode
    set showcmd
    set ruler
    set laststatus=2
  endif
endfunction

call ToggleHiddenAll()
nnoremap <S-h> :call ToggleHiddenAll()<CR>:echo ""<CR>

" Remove Semicolons
function! RemSem ()
  %s/;$//g
endfunction

nnoremap <leader>r :call RemSem()<CR>
nnoremap <leader>s :ToggleWorkspace<CR>

" Vim and vimrc
nnoremap <S-t> :so ~/.vimrc<CR>:echo "Reloaded vimrc"<CR>
nnoremap <S-e> :e ~/.vimrc<CR>:echo ""<CR>

" Macros
let @c = 'f''r`F''r`'

" File Formats
autocmd BufNewFile,BufRead *.ts  set filetype=typescript
autocmd BufNewFile,BufRead *.tsx setfiletype typescript
autocmd BufNewFile,BufRead *.dart  set filetype=dart
