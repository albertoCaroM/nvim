" vim: syntax=vim fdm=marker ts=2 sts=2 sw=2 fdl=0

" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif




call plug#begin('~/.config/nvim/autoload/plugged')

" Better Syntax Support
Plug 'sheerun/vim-polyglot'
" File Explorer
Plug 'scrooloose/NERDTree'
" Auto pairs for '(' '[' '{'
Plug 'jiangmiao/auto-pairs'
" Rainbow Parentheses Improved
Plug 'frazrepo/vim-rainbow'

" The fancy start screen for vim
Plug 'mhinz/vim-startify'
" smart commenter
Plug 'tomtom/tcomment_vim' 

" fzf and rooter
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'

" git integration 
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'


call plug#end()

source ~/.config/nvim/plug-config/start-screen.vim
source ~/.config/nvim/plug-config/fzf_and_vim-rooter.vim
source ~/.config/nvim/plug-config/git.vim

