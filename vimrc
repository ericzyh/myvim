set runtimepath+=~/myvim
source ~/myvim/vimrcs/basic.vim
source ~/myvim/vimrcs/plugins_config.vim

if [ -f "$HOME/.myvimrc" ]; then
    source ~/.myvimrc
fi
