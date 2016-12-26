"------------------------------ GENERAL CONFIG ------------------------------"

"Use the latest Vim"
set nocompatible

"Enable syntax highlighting"
syntax enable

"Enable filetype plugins"
filetype plugin on

"Enable filetype plugin indentation"
filetype plugin indent on

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

"The :substitute flag 'g' is on by default"
set gdefault

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

"Fast terminal connection"
set ttyfast

"Lazy redraw"
set lazyredraw

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
set guifont=Fira_Code:h13

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

"Scroll one column when the cursor is moved off the screen horizontally."
set sidescroll=1

"Keep at least two columns visible on both sides of the cursor at all times."
set sidescrolloff=2

"Change the vertical separator character to space"
:set fillchars+=vert:\

"Show operator commands (e.g. 'c', 'd', 'y') on the command line as you type them"
set showcmd

"Press F10 to reveal syntax highlighting rules for the word under the cursor"
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

"------------------------------ MAPPINGS ------------------------------"

"Use Space as the Leader key"
map <Space> <Leader>

"Edit important config files"
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader>ebp :tabedit ~/.bash_profile<cr>
nmap <Leader>ep :tabedit ~/.vim/plugins.vim<cr>
nmap <Leader>ec :tabedit ~/developer/friendly-colors/colors/friendly.vim<cr>
nmap <Leader>es :UltiSnipsEdit<cr>

"Install/Update plugins"
nmap <Leader>pi :so ~/.vim/plugins.vim<cr>:PluginInstall<cr>
nmap <Leader>pu :so ~/.vim/plugins.vim<cr>:PluginUpdate<cr>

"Quicker save/quit"
nmap <Leader>w :w!<cr>
nmap <Leader>q :q<cr>

"Auto indent on paste"
:nnoremap p p=`]
:nnoremap <c-p> p

"(r)eplace in file"
nmap <Leader>r :%s/

"Preserve visual mode selection when doing indents / yanks"
vnoremap < <gv
vnoremap > >gv
vnoremap y ygv

"Ack"
nnoremap <Leader>a :Ack!<Space>

"----- Quick Fix -----"
nmap <Leader>cn :cnext<cr>
nmap <Leader>cp :cprevious<cr>
nmap <Leader>cf :cfirst<cr>
nmap <Leader>cl :clast<cr>
nmap <Leader>co :copen<cr>
nmap <Leader>cq :cclose<cr>

"----- Scrolling -----"
nmap H zhzhzh
nmap J <c-d>
nmap K <c-u>
nmap L zlzlzl

"Remap the (J)oin lines command to (M)erge
nnoremap M J

"===== Buffer Management ====="

"Buffer Previous"
nmap <Leader>bp :BufSurfBack<cr>
"Buffer Next"
nmap <Leader>bn :BufSurfForward<cr>
"Buffer Back"
nmap <Leader>bb :b#<cr>
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

"Pressing ESC removes search highlighting"
if has('gui_running')
  nnoremap <silent> <esc> :nohlsearch<return><esc>
else
  augroup no_highlight
    autocmd TermResponse * nnoremap <esc> :noh<return><esc>
  augroup END
end

"Open / Close NERDTree"
nmap <Leader>nt :NERDTreeToggle<cr>

"Reveal the current file in NERDTree"
nmap <Leader>nf :NERDTreeFind<cr>

"(O)pen files/buffers in the project"
nmap <Leader>o :CommandT<cr>

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

"===== Fugitive Git ====="
nnoremap <Leader>gaa :Git add --all<cr>
nnoremap <Leader>gs :Gstatus<cr>
nnoremap <Leader>gc :Gcommit<cr>
nnoremap <Leader>gd :Gdiff<cr>

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
            \ setlocal textwidth=80 formatoptions=want2 whichwrap=b,s,h,l,<,>,[,] nojoinspaces noautoindent nocindent nosmartindent|

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
nnoremap <silent> <Leader>R :call RefreshAll()<cr>
function! RefreshAll()
    CommandTFlush
    if g:NERDTree.IsOpen()
        call g:NERDTree.CursorToTreeWin()
        silent call g:NERDTreeKeyMap.Invoke('R')
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

"Make Startify play nicely with NERDtree"
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
let g:NERDCreateDefaultMappings=0
map <Leader>cc <plug>NERDCommenterToggle
map <Leader>c$ <plug>NERDCommenterToEOL
map <Leader>cs <plug>NERDCommenterSexy

"===== DelimitMate ====="
let g:delimitMate_expand_cr=1

"===== Vim Close Tag ====="

"Fixes a conflict bug with delimitMate involving a trailing '>'"
let g:closetag_filenames = "*.xml,*.html,*.xhtml,*.phtml,*.php,*.vue"
au FileType xml,html,phtml,php,xhtml,js,vue,htmldjango let b:delimitMate_matchpairs = "(:),[:],{:}"

"===== Vim Vue ====="

"Use HTML indentation rules for .vue files"
au BufRead,BufNewFile *.vue set filetype=html

"===== Vim Toggle Cursor ====="
let g:togglecursor_leave="line"

"===== CommandT ====="
let g:CommandTFileScanner = 'git'
let g:CommandTMaxFiles=100000

"===== Smooth Scroll ====="
noremap <silent> <C-u> :call smooth_scroll#up(&scroll, 0, 4)<CR>
noremap <silent> <C-d> :call smooth_scroll#down(&scroll, 0, 4)<CR>

noremap <silent> <C-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <C-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

"===== Vim Submode (Scroll Mode) ====="
let g:submode_always_show_submode = 1
let g:submode_timeout = 0

function! LoadScrollMode()
	call submode#enter_with('Scroll', 'n', '', 's')
	call submode#map('Scroll', 'n', 's', 'K', ':call smooth_scroll#up(&scroll, 0, 4)<CR>')
    call submode#map('Scroll', 'n', 's', 'J', ':call smooth_scroll#down(&scroll, 0, 4)<CR>')
    call submode#map('Scroll', 'n', 's', 'j', '<C-e><C-e><C-e>')
    call submode#map('Scroll', 'n', 's', 'k', '<C-y><C-y><C-y>')
    call submode#map('Scroll', 'n', 's', 'e', '<C-e>')
    call submode#map('Scroll', 'n', 's', 'y', '<C-y>')
    call submode#map('Scroll', 'n', 's', 'l', 'zlzlzl')
    call submode#map('Scroll', 'n', 's', 'h', 'zhzhzh')
endfunction

call LoadScrollMode()

"===== NERDTree ====="
let NERDTreeHijackNetrw = 0
let NERDTreeShowHidden = 1
let NERDTreeMapJumpLastChild = '<Leader>j'
let NERDTreeMapJumpFirstChild = '<Leader>k'

"===== UltiSnips ====="
let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

"===== Neocomplete ====="
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#max_list = 10

"===== Super Tab ====="
"Super Tab is being used to get YCM and UltiSnips to play nicely with each other regarding <tab>."
let g:SuperTabDefaultCompletionType = '<C-n>'

"===== Airline ====="
let g:airline_powerline_fonts = 1
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

"===== Vim Bad Whitespace ====="

"(e)rase (b)ad (w)hitespace"
nmap <silent> <Leader>ebw :EraseBadWhitespace<cr>

"(t)oggle (b)ad (w)hitespace"

nmap <silent> <Leader>tbw :ToggleBadWhitespace<cr>

"===== Vim Schlepp ====="
vmap <up> <Plug>SchleppUp
vmap <down> <Plug>SchleppDown
vmap <left> <Plug>SchleppLeft
vmap <right> <Plug>SchleppRight

"===== Ag ====="
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

"===== Vim Easy Motion ====="

"Replace 'f' and 't' with bidirectional 1-character search"
nmap f <Plug>(easymotion-bd-fl)
vmap f <Plug>(easymotion-bd-fl)
omap f <Plug>(easymotion-bd-fl)
nmap t <Plug>(easymotion-bd-tl)
vmap t <Plug>(easymotion-bd-tl)
omap t <Plug>(easymotion-bd-tl)

"Replace 'F' and 'T' with bidirectional 2-character search"
nmap F <Plug>(easymotion-bd-f2)
xmap F <Plug>(easymotion-bd-f2)
omap F <Plug>(easymotion-bd-f2)
nmap T <Plug>(easymotion-bd-t2)
xmap T <Plug>(easymotion-bd-t2)
omap T <Plug>(easymotion-bd-t2)

"------------------------------ THUMBTACK ------------------------------"
so ~/.vim/thumbtack.vim

"===== Vdebug ====="
let g:vdebug_options = {"path_maps" : {"/srv/thumbtack/code/": "/Users/dcapo/Thumbtack/website/"}}
nmap <Leader>dr <F5> "(d)ebugger (r)un"
nmap <Leader>dc <F5> "(d)ebugger (c)ontinue"
nmap <Leader>dso <F2> "(d)ebugger (s)tep (o)ver"
nmap <Leader>dsi <F3> "(d)ebugger (s)tep (i)nto"
nmap <Leader>dso <F4> "(d)ebugger (s)tep (o)ut"
nmap <Leader>dq <F6> "(d)ebugger (q)uit"
nmap <Leader>dt <F10> "(d)ebugger (t)oggle breakpoint"
nmap <silent> <Leader>db :Breakpoint<cr>
nmap <Leader>de :VdebugEval<Space>

"------------------------------ NOTES AND TIPS ------------------------------"

"Press ctrl + ] to jump to definition using ctags"
"Press <Leader> + 'u' to insert a use statement for the class under the cursor"
"Press <Leader> + 'nf' to expand the class to its fully-qualified version"
