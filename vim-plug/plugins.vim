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
"Auto pairs for '(' '[' '{'
Plug 'jiangmiao/auto-pairs'

" Rainbow Parentheses Improved
Plug 'frazrepo/vim-rainbow'

" The fancy start screen for vim
Plug 'mhinz/vim-startify'
" smart commenter
Plug 'tomtom/tcomment_vim' 

" fzf and rooter
Plug 'junegunn/fzf', { 'tag': '61c4b6d1ed30287edcbfd3dbaed4e43b5c251c93', 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'

" git integration 
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
Plug 'rhysd/git-messenger.vim' ":GitMessenger or <Leader>gm

" port emac's which-key 
Plug 'liuchengxu/vim-which-key'






" allow write vim configuration variables in lua
Plug 'svermeulen/vimpeccable'


Plug 'tpope/vim-surround' "mappings to easily delete, change and add such surroundings in pairs.
Plug 'tpope/vim-repeat'

Plug 'vim-scripts/matchit.zip' " % to match more than just single characters.


Plug 'tpope/vim-endwise'
Plug 'albertoCaroM/toggleSplitMaximize'

Plug 'alvan/vim-closetag' " close tags

Plug 'svermeulen/vimpeccable' "Vimpeccable is a plugin for Neovim that allows you to easily replace your vimscript-based


Plug 'junegunn/goyo.vim'


Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'




" lsp config {{{
Plug 'neovim/nvim-lspconfig',{ 'tag': 'ba75ea5faeab8cf12ad1a738092e132a7278c9d2'}
Plug 'nvim-lua/completion-nvim'
Plug 'nvim-lua/diagnostic-nvim'
Plug 'steelsojka/completion-buffers'
Plug 'nvim-treesitter/completion-treesitter'
Plug 'kristijanhusak/completion-tags'
Plug 'nvim-treesitter/completion-treesitter'
Plug 'albertoCaroM/completion-tmux'
" }}}


let g:completion_chain_complete_list = {'default': {'comment': [], 'default': [{'complete_items': [ 'lsp', 'snippet','buffers', 'tags','ts','tmux' ]}, {'mode': '<c-p>'}, {'mode': '<c-n>'}]}}

Plug 'KabbAmine/zeavim.vim'

Plug 'junegunn/rainbow_parentheses.vim'

" Rainbow Parentheses 
" Plug 'junegunn/rainbow_parentheses.vim'
" "{{{
" let g:rainbow#max_level = 16
" let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]
"
" autocmd FileType * RainbowParentheses
"}}}

Plug 'noahfrederick/vim-skeleton' "{{{
let g:skeleton_template_dir = g:VIMPATH . "/templates"
let g:skeleton_replacements = {}
function! g:skeleton_replacements.CHEADERNAME()
  let s:inc = toupper(fnamemodify(expand("%"), ':p:.:r:gs?/?_?'))
  return s:inc."_H_"
endfunction
"}}}
Plug  'turbio/bracey.vim' "plugin for live html, css, and javascript editing in vim
Plug 'vim-scripts/doxygen-support.vim'

Plug 'AndrewRadev/tagalong.vim' "automatically rename closing HTML/XML tags when editing opening one
Plug 'moll/vim-bbye' "Bbye allows you to do delete buffers (close files) without closing your windows or messing up your layout.
Plug 'szw/vim-maximizer' "Maximizer lets you maximize split windows and restore them automatically. It is very useful if you like to have many split windows per tab
Plug 'tpope/vim-endwise' " helps to end certain structures automatically. In Ruby, this means adding end after if, do, def and several other keywords. I

Plug 'terryma/vim-expand-region' "{{{
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)
"}}}

Plug 'terryma/vim-multiple-cursors' "{{{
let g:multi_cursor_exit_from_insert_mode = 0
"}}}

Plug 'nathanaelkane/vim-indent-guides' "{{{
let g:indent_guides_start_level=1
let g:indent_guides_guide_size=1
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_color_change_percent=3
" let g:indent_guides_auto_colors=0
" function! s:indent_set_console_colors()
"   hi IndentGuidesOdd ctermbg=235
"   hi IndentGuidesEven ctermbg=236
" endfunction
" autocmd MyAutoCmd VimEnter,Colorscheme * call s:indent_set_console_colors()
"}}}


Plug 'hail2u/vim-css3-syntax' "CSS3 syntax (and syntax defined in some foreign specifications) 
Plug 'jelera/vim-javascript-syntax' "Enhanced JavaScript Syntax for Vim
Plug 'cespare/vim-toml',{'for': 'toml'} "Vim syntax for TOML.
Plug 'elzr/vim-json',{'for': 'json'} "Better JSON for VIM
Plug 'tpope/vim-sleuth' "This plugin automatically adjusts 'shiftwidth' and 'expandtab' heuristically based on the current file, or, in the case the current file is new, blank, or otherwise insufficient, by looking at other files of the same type in the current and parent directories.

Plug 'mbbill/undotree' "{{{
"autocmd MyAutoCmd VimEnter * UndotreeToggle
let g:undotree_WindowLayout='botright'
let g:undotree_SetFocusWhenToggle=1
nnoremap <silent> <F5> :UndotreeToggle<CR>
"}}}

Plug 'aklt/plantuml-syntax' "{{{
let g:plantuml_executable_script='java -jar /opt/plantuml/plantuml.jar'
"let g:plantuml_executable_script='java -jar c:\utils\plantuml\plantuml.jar'
au FileType * execute 'setlocal dict+='.g:VIMPATH .'/words/' .&filetype.'.adoc'
"}}}


Plug 'vim-scripts/a.vim' , { 'for' : ['c' , 'cpp'] }
Plug 'liuchengxu/vista.vim' " replace tagbar
Plug 'mattn/emmet-vim'

Plug 'tmux-plugins/vim-tmux-focus-events' " FocusGained and FocusLost autocommand events are not working in terminal vim. This plugin restores them when using vim inside Tmux.
" Enable that by installing tmux-sensible plugin, or by setting this line in tmux.conf:
" set -g focus-events on




"
"
"
" Plug 'ryanoasis/vim-devicons'   "{{{
" set encoding=utf8
" let g:webdevicons_enable = 1
" let g:webdevicons_enable_nerdtree = 1
" let g:webdevicons_enable_ctrlp = 1
" let g:WebDevIconsUnicodeDecorateFileNodes = 1
" let g:airline_powerline_fonts = 1
" "}}}




Plug 'embear/vim-localvimrc'

Plug 'vim-airline/vim-airline'  "{{{
let g:airline#extensions#tabline#enabled = 1
let g:airline_exclude_preview = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '¦'
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#tabline#buffer_nr_format = '%s: '
let g:airline#extensions#tabline#fnamemod = ':p:'
let g:airline#extensions#tabline#fnamecollapse = 1
let g:airline#extensions#tabline#fnametruncate = 0
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
"}}}


Plug 'chrisbra/NrrwRgn'
"The fancy start screen for vim

" always-on highlight for a unique character in every word on a line to help you use f, F and family.
Plug 'unblevable/quick-scope'
"{{{
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
"
" augroup qs_colors
"   autocmd!
"   autocmd ColorScheme * highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
"   autocmd ColorScheme * highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
" augroup END


"highlight QuickScopePrimary guifg='#00C7DF' gui=underline ctermfg=155 cterm=underline
"highlight QuickScopeSecondary guifg='#afff5f' gui=underline ctermfg=81 cterm=underline
let g:qs_buftype_blacklist = ['terminal', 'nofile']
let g:qs_max_chars=150
"}}}

Plug 'godlygeek/tabular'   "aligning things by hand quickly becomes unpleasan
Plug 'plasticboy/vim-markdown' "Syntax highlighting, matching rules and mappings for the original Markdown and extensions.

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }  "Markdown Preview for (Neo)vim sparkles 
" If you don't have nodejs and yarn
" use pre build, add 'vim-plug' to the filetype list so vim-plug can update this plugin
" see: https://github.com/iamcco/markdown-preview.nvim/issues/50
"Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}


Plug 'editorconfig/editorconfig-vim'
Plug 'rhysd/vim-clang-format' "{{{
autocmd FileType c ClangFormatAutoEnable
autocmd FileType cpp ClangFormatAutoEnable
"}}}


Plug 'vimwiki/vimwiki'
let g:vimwiki_list = [{'path': '~/.vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

Plug 'Valloric/MatchTagAlways' " Always highlights the XML/HTML tags that enclose your cursor locationhk

Plug 'easymotion/vim-easymotion'"{{{
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)
"}}}







if exists('+termguicolors')
set termguicolors
Plug 'norcalli/nvim-colorizer.lua'
endif 
Plug 'nvim-treesitter/nvim-treesitter'

" better navegation among  vim and tmux
Plug 'christoomey/vim-tmux-navigator'

Plug 'wellle/tmux-complete.vim' "<C-X><C-U>  insert mode completion of words in adjacent tmux panes

" neo)vim terminal in the floating/popup window.
Plug 'voldikss/vim-floaterm'

" colorschemes
Plug 'morhetz/gruvbox'
Plug 'mhartington/oceanic-next'
Plug 'vim-scripts/wombat256.vim'
call plug#end()


" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
