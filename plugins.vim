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
"Quick file/buffer/tag search"
Plugin 'ctrlpvim/ctrlp.vim'
"An alternative to grep for find/replace"
Plugin 'rking/ag.vim'
"Find and replace in project"
Plugin 'skwp/greplace.vim'
"Create, edit, and delete surrounding braces"
Plugin 'tpope/vim-surround'
"git enhancements"
Plugin 'tpope/vim-fugitive'
"Repeat plugin commands using the '.' operator"
Plugin 'tpope/vim-repeat'
"Dependency for vim-php-namespace"
Plugin 'MarcWeber/vim-addon-mw-utils'
"Dependency for vim-php-namespace"
Plugin 'tomtom/tlib_vim'
"Insert 'use' statements automatically in PHP"
Plugin 'arnaud-lb/vim-php-namespace'
"Get Neocomplete to play nicely with UltiSnips regarding tab autocompletion"
Plugin 'ervandew/supertab'
"Dependency for pdv"
Plugin 'tobyS/vmustache'
"Documentation generation for PHP"
Plugin 'tobyS/pdv'
"Snippet engine"
Plugin 'SirVer/ultisnips'
"A fancy status bar"
Plugin 'vim-airline/vim-airline'
"Themes for the Airline status bar"
Plugin 'vim-airline/vim-airline-themes'
"Autocompletion"
Plugin 'Shougo/neocomplete.vim'
"A huge reference collection of snippets for many languages"
Plugin 'honza/vim-snippets'
"Quickly comment/uncomment lines"
Plugin 'scrooloose/nerdcommenter'
"Navigate through camelcase/snakecase words"
Plugin 'bkad/CamelCaseMotion'
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
"Enhanced syntax highlighting for javascript"
Plugin 'jelera/vim-javascript-syntax'
"Enhanced syntax highlighting for php"
Plugin 'StanAngeloff/php.vim'
"Enhanced syntax highlighting for Vue.js"
Plugin 'posva/vim-vue'
"Brings the % functionality to HTML tags"
Plugin 'edsono/vim-matchit'
"Automatically update ctags on save--requires Python"
Plugin 'craigemery/vim-autotag'
"A large library of language syntax improvements"
Plugin 'sheerun/vim-polyglot'
"My color scheme"
Plugin 'dcapo/friendly-colors'

call vundle#end()
filetype plugin indent on
