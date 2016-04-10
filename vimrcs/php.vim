"PHP相关插件配置
Plugin 'vim-scripts/PDV--phpDocumentor-for-Vim'

inoremap <C-m> <ESC>:call PhpDocSingle()<CR>i
nnoremap <C-m> :call PhpDocSingle()<CR>
vnoremap <C-m> :call PhpDocRange()<CR>
