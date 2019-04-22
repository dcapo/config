filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Package manager"
Plugin 'VundleVim/Vundle.vim'
"An improved netrw"
Plugin 'tpope/vim-vinegar'
"Left project drawer"
Plugin 'scrooloose/nerdtree'
"Create, edit, and delete surrounding braces"
Plugin 'tpope/vim-surround'
"git enhancements"
Plugin 'tpope/vim-fugitive'
"Repeat plugin commands using the '.' operator"
Plugin 'tpope/vim-repeat'
"Get Neocomplete to play nicely with UltiSnips regarding tab autocompletion"
Plugin 'ervandew/supertab'
"Snippet engine"
Plugin 'SirVer/ultisnips'
"A fancy status bar"
Plugin 'vim-airline/vim-airline'
"Autocompletion"
Plugin 'Shougo/neocomplete.vim'
"A huge reference collection of snippets for many languages"
Plugin 'honza/vim-snippets'
"Quickly comment/uncomment lines"
Plugin 'scrooloose/nerdcommenter'
"Navigate through camelcase/snakecase words"
" Plugin 'bkad/CamelCaseMotion'
"animates page up/down so you can tell where the hell you are"
Plugin 'terryma/vim-smooth-scroll'
"Pretty welcome screen"
Plugin 'mhinz/vim-startify'
"More sensible forward/backward buffer navigation"
Plugin 'ton/vim-bufsurf'
"Toggle the cursor between block and line for Insert and Normal modes in iTerm"
Plugin 'jszakmeister/vim-togglecursor'
"Close braces automatically"
Plugin 'Raimondi/delimitMate'
"Close HTML tags automatically"
Plugin 'alvan/vim-closetag'
"Enhanced syntax highlighting for JavaScript"
Plugin 'jelera/vim-javascript-syntax'
"Enhanced syntax highlighting for php"
Plugin 'StanAngeloff/php.vim'
"Enhanced syntax highlighting for Vue.js"
Plugin 'posva/vim-vue'
"Brings the % functionality to HTML tags"
Plugin 'tmhedberg/matchit'
"Automatically update ctags on save--requires Python"
" Plugin 'craigemery/vim-autotag'
"A large library of language syntax improvements"
Plugin 'sheerun/vim-polyglot'
"My color scheme"
Plugin 'dcapo/friendly-colors'
"Create a sub mode for faster scrolling"
" Plugin 'kana/vim-submode'
"Convert between case types; handle weird english pluralization suffixes"
Plugin 'tpope/vim-abolish'
"Highlight and/or erase bad whitespace at the end of lines"
Plugin 'bitc/vim-bad-whitespace'
"Quick navigation using two character search strings"
Plugin 'justinmk/vim-sneak'
"Move selected text around sensibly"
Plugin 'zirrostig/vim-schlepp'
"Easy motion"
" Plugin 'easymotion/vim-easymotion'
"Syntax highlighting for Twig"
Plugin 'lumiliet/vim-twig'
"Ack search tool"
Plugin 'mileszs/ack.vim'
"Debugging PHP"
Plugin 'joonty/vdebug'
"Quick file launching"
Plugin 'wincent/command-t'
"Project search & replace"
Plugin 'skwp/greplace.vim'
"Asynchronous linting engine"
Plugin 'w0rp/ale'
"Complement to vim-fugitive that enables GitHub extensions like Gbrowse"
Plugin 'tpope/vim-rhubarb'
"Pasting with indentation adjusted to destination context"
Plugin 'sickill/vim-pasta'
"Prettier JS formatting"
Plugin 'prettier/vim-prettier'
"Golang formatting"
Plugin 'fatih/vim-go'

call vundle#end()
filetype plugin indent on
