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
Plugin 'flazz/vim-colorschemes'
Plugin 'felixhummel/setcolors.vim'

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
au BufNewFile,BufRead *.ejs set filetype=html

" Remaps
noremap <leader>` :Autoformat<CR>

" Vim Airline
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts = 1
" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

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
  %s/;//g
endfunction

nnoremap <leader>r :call RemSem()<CR>

" Vim and vimrc
nnoremap <S-t> :so ~/.vimrc<CR>:echo "Reloaded vimrc"<CR>
nnoremap <S-e> :e ~/.vimrc<CR>:echo ""<CR>

" Colorscheme
colorscheme slate
