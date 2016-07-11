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
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'arnaud-lb/vim-php-namespace'
"Required in tandem with YouCompleteMe to create proper tab autocompletion"
Plugin 'ervandew/supertab'
Plugin 'stephpy/vim-php-cs-fixer'
Plugin 'tobyS/vmustache'
Plugin 'tobyS/pdv'
"Snippet engine"
Plugin 'SirVer/ultisnips'
"A fancy status bar"
Plugin 'vim-airline/vim-airline'
"Themes for the Airline status bar"
Plugin 'vim-airline/vim-airline-themes'
"Tab autocomplete"
Plugin 'Valloric/YouCompleteMe'
"A huge reference collection of snippets for many languages"
Plugin 'honza/vim-snippets'
"Mappings to quickly comment/uncomment lines"
Plugin 'scrooloose/nerdcommenter'
"Navigate through camelcase/snakecase words"
Plugin 'bkad/CamelCaseMotion'
"git enhancements"
Plugin 'tpope/vim-fugitive'
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

call vundle#end()
filetype plugin indent on
