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
nnoremap <leader>pdv :call pdv#DocumentWithSnip()<CR>
