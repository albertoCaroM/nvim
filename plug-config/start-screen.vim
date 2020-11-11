let g:startify_session_dir = '~/.config/nvim/session'
let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]


let g:startify_bookmarks = [
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'm': '~/.machinerc' },
            \ ]


" You can automatically restart a session like this
let g:startify_session_autoload = 1
" Let Startify take care of buffers
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
" If you want Unicode
let g:startify_fortune_use_unicode = 1
" Automatically Update Sessions
let g:startify_session_persistence = 1
" Get rid of empy buffer and quit
let g:startify_enable_special = 0
" My custom header
let g:ascii = [
                        \'     ____             __       _                           _____       ',
                        \'    / __ )_______  __/ /_____ ( )_____   _________  ____  / __(_)___ _ ',
                        \'   / __  / ___/ / / / __/ __ \|// ___/  / ___/ __ \/ __ \/ /_/ / __ `/ ',
                        \'  / /_/ / /  / /_/ / /_/ /_/ / (__  )  / /__/ /_/ / / / / __/ / /_/ /  ',
                        \' /_____/_/   \__,_/\__/\____/ /____/   \___/\____/_/ /_/_/ /_/\__, /   ',
                        \'                                                             /____/    ',
        \]
let g:startify_custom_header =  startify#pad(g:ascii + startify#fortune#boxed())




