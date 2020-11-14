let g:mapleader = ","
set timeoutlen=300                                  "mapping timeout , then show whichkey
set ttimeoutlen=50                                  "keycode timeout
set mouse=a                                         "enable mouse
set mousehide                                       "hide when characters are typed
set history=1000                                    "number of command lines to remember
set ttyfast                                         "assume fast terminal connection
set viewoptions=folds,options,cursor,unix,slash     "unix/windows compatibility
if exists('$TMUX')                  
  set clipboard=
else
  set clipboard=unnamed                             "sync with OS clipboard
endif
set autoread                                        "auto reload if file saved externally 
set showcmd                                         "Show (partial) command in the last line of the screen
set showfulltag  "When completing a word in insert mode from the tags file, show both the tag name and a tidied-up form of the search pattern (if there is one) as possible matches.
set showmatch                                       "automatically highlight matching braces/brackets/etc.
set matchtime=2                                     "tens of a second to show matching parentheses
set number                              " Line numbers
set lazyredraw " the screen will not be redrawn while executing macros, registers and other commands that have not been typed.  Also, updating the window title is postponed.  To force an update use |:redraw|.

set laststatus=2 "the last window will have allways a status line:

set modeline "If 'modeline' is off or 'modelines' is 0 no lines are checked.
set modelines=5 "gives the number of lines that is checked for set commands.

set foldenable                                      "enable folds by default
set foldmethod=syntax                               "fold via syntax of files
set foldlevelstart=99                               "open all folds by default

set background=dark

set cursorline
autocmd WinLeave * setlocal nocursorline
autocmd WinEnter * setlocal cursorline


if has('conceal')
  set conceallevel=1
  set listchars+=conceal:Δ
endif


if has('gui_running')
  set lines=999 columns=9999 " open maximized
endif

function! EvalVimlLines(begin, end) "{{{
  let lines = getline(a:begin, a:end)
  for line in lines
    execute line
  endfor
endfunction "}}}

command EvalCurrentLine :call EvalVimlLines(line('.'), line('.'))
command EvalCurrentRegion  :call EvalVimlLines(line('v'), line('.'))

" eval vimscript by line or visual selection
autocmd FileType vim nmap <silent> <leader>e  :call EvalVimlLines(line('.'), line('.'))  <CR>
autocmd FileType vim vmap <silent> <leader>e  :call EvalVimlLines(line('v'), line('.')) <CR>





set noshelltemp                                     "use temp files for shell commands.  When off use a pipe.  When using a pipe is not possible temp files are used anyway.
" whitespace
set backspace=indent,eol,start          "allow backspacing everything in insert mode
set autoindent                          "automatically indent to match adjacent lines
set expandtab                           " Converts tabs to spaces
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set tabstop=2                           " Insert 2 spaces for a tab
let softtabstop=4                       "number of spaces per tab in insert mode
set smarttab                            "use shiftwidth to enter tabs
set list                                "highlight especials whitespaces (see :help listchars)
set listchars=tab:│\ ,trail:•,extends:❯,precedes:❮
set filetype                            "indent on: Enable indentation rules that are file-type specific.
set shiftround                          " When shifting lines, round the indentation to the nearest multiple of “shiftwidth.”
set linebreak                           "wrap long lines at a character in 'breakat' rather than at the last character that fits on the screen
let &showbreak='↪ '                     "String to put at the start of lines that have been wrapped

set scrolloff=1                                     "always show content after scroll
set scrolljump=5                                    "minimum number of lines to scroll
set display+=lastline  "When included, as much as possible of the last line in a window will be displayed.  When not included, a last line that doesn't fit is replaced with "@" lines. 
set wildmenu                            "show list for autocomplete
set wildmenu                            "Enables "enhanced mode" of command-line completion. When user hits <Tab> (or 'wildchar') to invoke completion       
set wildmode=list:full                   "When more than one match, list all matches and complete first match.
set wildignorecase                       "ignore cases when completing

set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right



" disable sounds
set noerrorbells "No ring the bell (beep or screen flash) for error messages
set novisualbell  "No use visual bell instead of beeping
set t_vb=

" searching
set hlsearch                "highlight  previuos search pattern
set incsearch               "While typing a search command, show where the patter
set ignorecase              "ignore case for searching
set smartcase               "do case-sensitive if there's a capital letter
nnoremap<leader><space> :nohlsearch<CR>  "stop the highlight for the  previuos search pattern


let g:localvimrc_persistent=1
let g:localvimrc_persistence_file= g:VIMPATH . "lvimrc_persistent"
let g:localvimrc_ask=1

set fileformats+=mac                                "add mac to auto-detection of file format line endings
syntax enable                           " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			            " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set smartindent                         " Makes indenting smart
set laststatus=0                        " Always display the status line
set number                              " Line numbers
set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
set showtabline=2                       " Always show tabs
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
"set autochdir                          " Your working directory will always be the same as your working directory
set termguicolors                       " Enable true-color terminal.



function! CreateIfNotExists(path) 
  if !isdirectory(expand(a:path))
    call mkdir(expand(a:path))
  endif
endfunction 



if executable('ack')
  set grepprg=ack\ --nogroup\ --column\ --smart-case\ --nocolor\ --follow\ $*
  set grepformat=%f:%l:%c:%m
endif
if executable('ag')
  set grepprg=ag\ --nogroup\ --column\ --smart-case\ --nocolor\ --follow
  set grepformat=%f:%l:%c:%m
endif


" persistent undo
if exists('+undofile')
  let &undodir = g:VIMCACHE.'undo'
  call CreateIfNotExists(&undodir)
  set undofile
endif

" backups
let &backupdir = g:VIMCACHE.'backup'
call CreateIfNotExists(&backupdir)
set backup

" swap files
let &directory = g:VIMCACHE.'swap'
call CreateIfNotExists(&directory)
set noswapfile



au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC


au TermOpen * setlocal nonumber norelativenumber


" Enable esc in neovim's terminal
if has('nvim')
  tnoremap <esc><esc> <C-\><C-n>
endif



" You can't stop me
"cmap w!! :term sudo tee %> /dev/null %
" Temporary workaround for: https://github.com/neovim/neovim/issues/1716
if has("nvim")
  command! W w !sudo -n tee % > /dev/null || echo "Press <leader>w to authenticate and try again"
  map <leader>w :new<cr>:term sudo true<cr>
else
  command! W w !sudo tee % > /dev/null
end

autocmd FileType vim setlocal fdm=indent keywordprg=:help
autocmd FileType vim let b:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'", '```':'```',  "'''":"'''", "`":"`"}


" remap arrow keys
nnoremap <left>   :bprev<CR>
nnoremap <right>  :bnext<CR>
nnoremap <up>     :tabnext<CR>
nnoremap <down>   :tabprev<CR>

" smash escape
inoremap jk <esc>
inoremap kj <esc>


" sane regex {{{
nnoremap / /\v
vnoremap / /\v
nnoremap ? ?\v
vnoremap ? ?\v
nnoremap :s/ :s/\v
" }}}


" folds {{{
nnoremap zr zr:echo &foldlevel<cr>
nnoremap zm zm:echo &foldlevel<cr>
nnoremap zR zR:echo &foldlevel<cr>
nnoremap zM zM:echo &foldlevel<cr>
" }}}


" screen line scroll
nnoremap <silent> j gj
nnoremap <silent> k gk

" auto center {{{
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz
nnoremap <silent> g# g#zz
nnoremap <silent> <C-o> <C-o>zz
nnoremap <silent> <C-i> <C-i>zz
"}}}


nnoremap <leader>cn :cnext <cr>
nnoremap <leader>cp :cprevious<cr>
nnoremap <leader>co :copen<cr>
nnoremap <leader>cc :cclose<cr>
nnoremap <leader>cf :cfirst<cr>
nnoremap <leader>cc :clast<cr>

if (exists('+colorcolumn'))
    set colorcolumn=80
    highlight ColorColumn ctermbg=9
endif



" go back to previous position of cursor if any
autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \  exe 'normal! g`"zvzz' |
      \ endif

autocmd FileType js,scss,css autocmd BufWritePre <buffer> call StripTrailingWhitespace()
autocmd FileType css,scss setlocal foldmethod=marker foldmarker={,}
autocmd FileType css,scss nnoremap <silent> <leader>S vi{:sort<CR>
autocmd FileType python setlocal foldmethod=indent
autocmd FileType markdown setlocal nolist
autocmd FileType vim setlocal fdm=indent keywordprg=:help
autocmd FileType lua setlocal makeprg=luacheck\ \%

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix


command! Capitalize :normal!  "_yiwvgU
