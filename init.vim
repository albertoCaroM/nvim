let g:VIMPATH=fnamemodify(expand('<sfile>'), ':h') . "/"
let g:VIMCACHE=g:VIMPATH . "cache/"


exec "source " . g:VIMPATH ."/" . "settings.vim"
exec "source " . g:VIMPATH ."/" . "vim-plug/plugins.vim" 
exec "source " . g:VIMPATH ."/" . "keys/which-key.vim"
exec "source " . g:VIMPATH ."/" . "plug-config/start-screen.vim"
exec "source " . g:VIMPATH ."/" . "plug-config/fzf_and_vim-rooter.vim"
exec "source " . g:VIMPATH ."/" . "plug-config/git.vim"
exec "source " . g:VIMPATH ."/" . "plug-config/snippets.vim"

lua require('plug-colorizer')
lua require('plug-treesitter')
lua require('plug-autocomplete')

colorscheme gruvbox

autocmd BufEnter * lua require'completion'.on_attach()


let g:completion_enable_snippet = 'UltiSnips'

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c

