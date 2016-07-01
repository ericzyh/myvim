"设置Vundle插件配置
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'mattn/emmet-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ctrlp-funky'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'majutsushi/tagbar'
"NERD出品的快速给代码加注释插件
",cs 在改行添加/**/注释
"",cA 在行末添加// 注释
",c<space> 没有注释则添加注释，有注释则删除注释
Plugin 'The-NERD-Commenter'
Plugin 'tpope/vim-surround'
Plugin 'jiangmiao/auto-pairs'
Plugin 'rizzatti/dash.vim'
Plugin 'scrooloose/syntastic'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'brookhong/DBGPavim'
Plugin 'airblade/vim-gitgutter'
Plugin 'yonchu/accelerated-smooth-scroll'

if has('mac')
Plugin 'Valloric/YouCompleteMe'
endif

source ~/myvim/vimrcs/php.vim

call vundle#end()            " required
filetype plugin indent on    " required

nmap ne :NERDTreeToggle<CR>
"按照文件扩展名显示不同的颜色
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
    exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
    exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

let g:user_emmet_mode='a'   " 在所有模式下都能使用

let g:airline#extensions#tabline#enabled = 1

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
map <leader>cpa :CtrlPMRU<CR>
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.cscope,*.tags

nnoremap <Leader>fu :CtrlPFunky<Cr>
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_matchtype = 'path'
let g:ctrlp_funky_syntax_highlight = 1

nmap tt :TagbarToggle<CR>

let g:dash_map = ['java','php','js']

"YCM
if has("mac")
    let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
endif

let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"DBGPavim
let g:dbgPavimPort = 9000
let g:dbgPavimBreakAtEntry = 0
