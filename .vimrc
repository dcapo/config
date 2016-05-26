"------------------------------ GENERAL CONFIG ------------------------------"

"Use the latest Vim"
"set nocompatible

"Enable syntax highlighting"
syntax enable

"Plugin management can be found here"
so ~/.vim/plugins.vim

"Tim Pope's recommended starting point for all .vimrc files"
so ~/.vim/sensible.vim

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

"Jellybeans color scheme config"
let g:jellybeans_overrides = {
\    'background': {
\           'guibg': '1c1c1c',
\           'ctermbg': 'Black' },
\    'CursorLine': {
\           'guibg': 'ffffff',
\           'ctermbg': 'None'},
\}
colorscheme jellybeans

"MacVim line height"
set linespace=10

"Change font"
set guifont=Fira_Code:h14

"Hide left and right scrollbars"
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

"Search pattern for the tag command is remembered for 'n' command"
set formatoptions-=t

"Change the colors of the window divider"
hi vertsplit guifg=bg guibg=bg
hi statusline guifg=fg guibg=bg

"Show operator commands (e.g. 'c', 'd', 'y') on the command line as you type them
set showcmd

"------------------------------ MAPPINGS ------------------------------"

"Use Space as the Leader key"
map <Space> <Leader>

nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader>ep :tabedit ~/.vim/plugins.vim<cr>
nmap <Leader>pi :so ~/.vim/plugins.vim<cr>:PluginInstall<cr>
nmap <Leader>s :w!<cr>

"Pressing ESC removes search highlighting"
nnoremap <silent> <esc> :nohlsearch<cr>

nmap <D-1> :NERDTreeToggle<cr>
nmap <Leader>f :tag<space>

"Move Lines Around"
nnoremap <Leader>j :m .+1<CR>==
nnoremap <Leader>k :m .-2<CR>==
vnoremap <Leader>j :m '>+1<CR>gv=gv
vnoremap <Leader>k :m '<-2<CR>gv=gv

"Resizing Windows"
nmap <C-v> :vertical resize +5<cr>
nnoremap <silent> + :vertical resize +5<cr>
nnoremap <silent> - :vertical resize -5<cr>

"Move up and down by virtual lines, not physical lines"
nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'

"Map CTRL+d to delete in insert mode"
inoremap <C-d> <Del>

"Moving between windows"
nmap <Leader>wh <C-w>h
nmap <Leader>wj <C-w>j
nmap <Leader>wk <C-w>k
nmap <Leader>wl <C-w>l
nmap <Leader>ww <C-w>w

"Open a line below/above the current line without leaving normal mode"
set <F15>=[27~
map <F15> <S-CR>
map! <F15> <S-CR>
nmap <CR> m`o<esc>``
nmap <S-CR> m`O<esc>``;

"Add a semicolon to the end of the line"
nmap \; g_a;<esc>;

"------------------------------ MACROS ------------------------------"

"Assigns a PHP constructor parameter to $this, and adds the corresponding protected variable to the class.
let @a="yiw/}O$this->pa = $pa;?__construct?^$oprotected $pa;€ýb€ýa/\"€ýb€ýa€ýb€ýa"

"------------------------------ AUTO COMMANDS ------------------------------"

"Source the .vimrc file on write"
augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END

"------------------------------ PLUGINS ------------------------------"

"===== Startify ====="
let g:startify_change_to_vcs_root = 1
let g:startify_session_autoload = 0
let g:startify_session_persistence = 0
let g:startify_custom_header = ['Welcome to Vim!']

"Make Startify play nicely with CtrlP and NERDtree"
autocmd User Startified setlocal buftype=

"Get NERDtree and Startify working at startup"
autocmd VimEnter *
\   if !argc()
\ |   Startify
\ |   NERDTree
\ |   wincmd w
\ | endif

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

"===== BufSurf ====="
nmap <Leader>bp :BufSurfBack<cr>
nmap <Leader>bn :BufSurfForward<cr>

"===== CtrlP ====="
let g:ctrlp_custom_ignore = 'node_modules\DS_Store\|git'
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results,2'
nmap <D-e> :CtrlPBufTag<cr>
nmap <D-r> :CtrlPMRUFiles<cr>
nmap <D-t> :CtrlP<cr>

"===== Smooth Scroll ====="
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

"===== PeepOpen ====="
nmap <D-p> <Plug>PeepOpen

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
nmap <Leader>es :e ~/.vim/UltiSnips/
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

"===== Vim Airline ====="
let g:airline_powerline_fonts = 1

"Disable whitespace detection"
let g:airline#extensions#whitespace#enabled = 0

"A weird bug prevents the normal airline_theme variable assignment here..."
au VimEnter * AirlineTheme jellybeans

"===== CamelCase Motion ====="
call camelcasemotion#CreateMotionMappings('\')

"===== Vim Surround ====="
"Use 's' instead of 'S' in visual mode"
xmap s S

"===== DelimitMate ====="
let g:delimitMate_expand_cr = 1
"------------------------------ NOTES AND TIPS ------------------------------"

"Press ctrl + ] to jump to definition using ctags"
"Press ',' + 'u' to insert a use statement for the class under the cursor"
"Press ',' + 'nf' to expand the class to its fully-qualified version"

