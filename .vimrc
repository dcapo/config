"------------------------------ GENERAL CONFIG ------------------------------"

"Use the latest Vim"
set nocompatible

"Enable syntax highlighting"
syntax enable

"Enable filetype plugins"
filetype plugin on

"Plugin management can be found here"
so ~/.vim/plugins.vim

"Tim Pope's recommended starting point for all .vimrc files"
so ~/.vim/sensible.vim

"Configure tab labels to show tab number, filename, and edit status"
so ~/.vim/tabline.vim

"Get the backspace key to move from one line to the previous line"
set backspace=indent,eol,start

"Include line numbers"
set number

"Line numbers are displayed relative to the current line"
set relativenumber

"No bells!
set noerrorbells visualbell t_vb=

"Automatically write files when switching buffers"
set autowriteall

"Set our desired autocompletion matching"
set complete=.,w,b,u

"Tab width"
set tabstop=4

"Use spaces instead of tabs"
set expandtab

"Tab width in insert mode"
set softtabstop=4

"Tab width in normal mode"
set shiftwidth=4

"Perform case-insensitive search"
set ignorecase

"Turn off word-wrapping"
set nowrap

"Makes the wildmenu autocompletion behavior more like Bash
set wildmode=longest:full,full

"Store all swap, backup, and undo files in one place"
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

"Do not store options or folds in sessions"
set ssop-=options
set ssop-=folds

"Open a file read only if a swap file exists"
autocmd SwapExists * let v:swapchoice = "o"

"------------------------------ SEARCH ------------------------------"

"Highlight searches"
set hlsearch

"Search incrementally with each new keystroke"
set incsearch

"Checks the current directory for the tags file and keeps going all the way to the root."
set tags=tags;/

"------------------------------ SPLITS ------------------------------"

"Open new splits below and to the right of the current window"
set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

"------------------------------ VISUALS ------------------------------"

colorscheme friendly

"MacVim line height"
set linespace=8

"Change font"
set guifont=Fira_Code:h14

"Show the cursor line with a different color"
set cursorline

"Do not show the mode on the bottom line. This is redundant with vim airline."
set noshowmode

"Hide left and right scrollbars"
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

"Use non-native tabs"
set guioptions-=e
set showtabline=1
set guitablabel=%N\ \ %t
"set tabline=%N\ %t

"Change the vertical separator character to space"
:set fillchars+=vert:\ 

"Show operator commands (e.g. 'c', 'd', 'y') on the command line as you type them
set showcmd

map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

"------------------------------ MAPPINGS ------------------------------"

"Use Space as the Leader key"
map <Space> <Leader>

nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader>ebp :tabedit ~/.bash_profile<cr>
nmap <Leader>ep :tabedit ~/.vim/plugins.vim<cr>
nmap <Leader>ec :tabedit ~/developer/friendly/colors/friendly.vim<cr>
nmap <Leader>es :UltiSnipsEdit<cr>
nmap <Leader>pi :so ~/.vim/plugins.vim<cr>:PluginInstall<cr>
nmap <Leader>pu :so ~/.vim/plugins.vim<cr>:PluginUpdate<cr>
nmap <Leader>w :w!<cr>
nmap <Leader>q :q<cr>
nmap <Leader>r :%s/

"===== Buffer Management ====="

"Buffer Previous"
nmap <Leader>bp :BufSurfBack<cr>
"Buffer Next"
nmap <Leader>bn :BufSurfForward<cr>
"Buffer Back"
nmap <Leader>bb :b#<cr>
"Buffer Find"
nmap <Leader>bf :CtrlPBufTag<cr>
"Buffer List"
nmap <Leader>bl :CtrlPBuffer<cr>
"Buffer Delete"
nmap <Leader>bd :bd<cr>
"Moving between buffers"
nmap <Leader>bh <C-w>h
nmap <Leader>bj <C-w>j
nmap <Leader>bk <C-w>k
nmap <Leader>bl <C-w>l
nmap <Leader>bw <C-w>w
nmap <Leader>bo <C-w>o
nmap <Leader>b= <C-w>=


"Pressing ENTER removes search highlighting"
nnoremap <silent> <CR> :noh<CR>

"Open / Close NERDTree"
nmap <Leader>nt :NERDTreeToggle<cr>

"Reveal the current file in NERDTree"
nmap <Leader>nf :NERDTreeFind<cr>

"(O)pen files/buffers in the project"
nmap <Leader>o :CtrlP<cr>

"Search for (t)ags in the project"
nmap <Leader>t :CtrlPTag<cr>

"Move (L)ines Around"
nnoremap <Leader>lj :m .+1<CR>==
nnoremap <Leader>lk :m .-2<CR>==
vnoremap <Leader>lj :m '>+1<CR>gv=gv
vnoremap <Leader>lk :m '<-2<CR>gv=gv

"Resizing Windows"
nnoremap <silent> + :vertical resize +5<cr>
nnoremap <silent> _ :vertical resize -5<cr>

"Move up and down by virtual lines, not physical lines"
nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'

"Map CTRL+d to delete in insert mode"
inoremap <C-d> <Del>

"Set a custom escape sequence so shift + enter can be used for mappings"
set <F15>=[27~
map <F15> <S-CR>
map! <F15> <S-CR>

"Add a semicolon to the end of the line"
nmap <Leader>; g_a;<esc>

"Add a comma to the end of the line"
nmap <Leader>, g_a,<esc>

"------------------------------ AUTO COMMANDS ------------------------------"

"Source the .vimrc file on write"
augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END


"Execute this command for editing prose; handles proper line wrapping settings."
command! Prose inoremap <buffer> . .<C-G>u|
            \ inoremap <buffer> ! !<C-G>u|
            \ inoremap <buffer> ? ?<C-G>u|
            \ setlocal textwidth=90 formatoptions=want2 whichwrap=b,s,h,l,<,>,[,] nojoinspaces noautoindent nocindent nosmartindent|

command! Code silent! iunmap <buffer> .|
            \ silent! iunmap <buffer> !|
            \ silent! iunmap <buffer> ?|
            \ setlocal textwidth=80 formatoptions=crql whichwrap=b,s autoindent cindent smartindent|
            \ silent! autocmd! PROSE * <buffer>

"Default to the 'Code' settings"
au VimEnter * Code
set autoindent cindent smartindent
set formatoptions=crql
set textwidth=80

"Convert text from hard-wrapped to soft-wrapped"
command! -range=% SoftWrap
            \ <line2>put _ |
            \ <line1>,<line2>g/.\+/ .;-/^$/ join |normal $x

"------------------------------ FUNCTIONS ------------------------------"
nnoremap <Leader>R :call RefreshAll()<cr>
function! RefreshAll()
    CtrlPClearCache
    if g:NERDTree.IsOpen()
        call g:NERDTree.CursorToTreeWin()
        call g:NERDTreeKeyMap.Invoke('R')
        " Go back to previous window.
        wincmd p
    endif
    echom 'Refreshed!'
endfunction

"------------------------------ PLUGINS ------------------------------"

"===== Startify ====="
let g:startify_change_to_vcs_root = 1
let g:startify_session_autoload = 0
let g:startify_session_persistence = 0
let g:startify_custom_header = ['  Welcome to Vim!']

"Make Startify play nicely with CtrlP and NERDtree"
autocmd User Startified setlocal buftype=

let g:startify_list_order = [
\ ['   Sessions'],
\ 'sessions',
\ ['   Recent Files'],
\ 'files',
\ ['   Recent Files in the Current Directory'],
\ 'dir',
\ ['   Bookmarks'],
\ 'bookmarks',
\ ]

"===== NERDCommenter ====="
let g:NERDComToggleComment="<Leader>cc"

"===== DelimitMate ====="
let g:delimitMate_expand_cr=1
"Fixes a conflict bug with vim-closetag involving a trailing '>'"
au FileType xml,html,phtml,php,xhtml,js,vue let b:delimitMate_matchpairs = "(:),[:],{:}"

"===== Vim Close Tag ====="

"Fixes a conflict bug with delimitMate involving a trailing '>'"
let g:closetag_filenames = "*.xml,*.html,*.xhtml,*.phtml,*.php,*.vue"

"===== Vim Toggle Cursor ====="
let g:togglecursor_leave="line"

"===== CtrlP ====="
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|log\|tmp\|\v[\/]\.(git|hg|svn)$'
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results,2'
let g:ctrlp_show_hidden = 1
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'

nmap <D-e> :CtrlPBufTag<cr>
nmap <D-r> :CtrlPMRUFiles<cr>

"===== Smooth Scroll ====="
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 4)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 4)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

"===== NERDTree ====="
let NERDTreeHijackNetrw = 0

"===== GReplace ====="
set grepprg=ag						"We want to use Ag for searching"
let g:grep_cmd_opts = '--line-numbers --noheading'

"===== PHP Namespace ====="
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>

function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>nf <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>nf :call PhpExpandClass()<CR>

"===== PHP-CS-Fixer ====="
let g:php_cs_fixer_level = 'psr2'

"Disable the mapping by default (<leader>pcd)"
let g:php_cs_fixer_enable_default_mapping = 0

nnoremap <silent><leader>pf :call PhpCsFixerFixFile()<CR>

"===== PDV ====="
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates"
nnoremap <leader>d :call pdv#DocumentWithSnip()<CR>

"===== UltiSnips ====="
let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

"===== You Complete Me ====="
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']

"===== Super Tab ====="
"Super Tab is being used to get YCM and UltiSnips to play nicely with each other regarding <tab>."
let g:SuperTabDefaultCompletionType = '<C-n>'

"===== Airline ====="
let g:airline_powerline_fonts = 1
"let g:airline_left_sep=''
"let g:airline_right_sep=''
"let g:airline_left_alt_sep = ''
"let g:airline_right_alt_sep = ''
let g:airline_section_y = ''

"Disable whitespace detection"
let g:airline#extensions#whitespace#enabled = 0

"A weird bug prevents the normal airline_theme variable assignment here..."
au VimEnter * AirlineTheme friendly

"===== CamelCase Motion ====="
call camelcasemotion#CreateMotionMappings('<Leader>c')

"===== Vim Surround ====="
"Use 's' instead of 'S' in visual mode"
xmap s S

"------------------------------ NOTES AND TIPS ------------------------------"

"Press ctrl + ] to jump to definition using ctags"
"Press ',' + 'u' to insert a use statement for the class under the cursor"
"Press ',' + 'nf' to expand the class to its fully-qualified version"

