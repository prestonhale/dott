" =============================================================
" =	   	             Reminders for Dummies 		              =
" =============================================================
" <M-*> Meta key = Apple option not recommended
" <D-*> Command key
" <c-*> Note: lower case = control key


" =============================================================
" =	   	            	General Settings 		              =
" =============================================================

set nocompatible              " be iMproved, required
set autoindent
set backspace=indent,eol,start
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
set wrap linebreak
set mouse=a
set autoread

let mapleader = ","

filetype off                  " required
syntax on


" =============================================================
" =			               Plugins 			                  =
" =============================================================
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'scrooloose/nerdtree'
call plug#end()

" =============================================================
" =			                  Keymaps 			              =
" =============================================================
" ESC is a terrible key for leaving edit mode, make it 'j' followed by 'k'
:imap jk <Esc>

