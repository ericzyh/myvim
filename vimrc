set runtimepath+=~/myvim
source ~/myvim/vimrcs/basic.vim
source ~/myvim/vimrcs/plugins_config.vim

if exists("~/.myvimrc")
    source ~/.myvimrc
endif

au FileType php call PHPFuncList()
function PHPFuncList()
    set dictionary+=/home/zhaoyuhao/.vim/php_functionlist.txt
    set complete-=k complete+=k
endfunction
