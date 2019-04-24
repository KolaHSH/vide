""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"安装vim-plug
"neovim
"curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"vim
"curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.cache/plugins')

" 代码补全
Plug 'Valloric/YouCompleteMe'
" 这个需要yarn和nodejs?
" Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}

" python 补全
"Plug 'davidhalter/jedi-vim'
" c++ 代码颜色增强
Plug 'octol/vim-cpp-enhanced-highlight'

" 代码检查 ale
Plug 'w0rp/ale'

" 代码注释
Plug 'scrooloose/nerdcommenter'

" 函数注释
Plug 'vim-scripts/DoxygenToolkit.vim'

" 快速检索
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
" Plug 'Shougo/denite.nvim'

" 目录导航
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }

" 状态栏
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'enricobacis/vim-airline-clock'

" 代码缩进线
Plug 'Yggdroot/indentLine'

" 彩虹括号
Plug 'luochen1990/rainbow'

" 括号补全
Plug 'jiangmiao/auto-pairs'

" 包围
Plug 'tpope/vim-surround'

" goyo
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

" 去除空白
Plug 'ntpeters/vim-better-whitespace'

" ultisnips
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"Plug 'andys8/vscode-jest-snippets'

" 开始
Plug 'mhinz/vim-startify'

" 窗口切换
Plug 't9md/vim-choosewin'

" 图标
Plug 'ryanoasis/vim-devicons'

" 平滑滚动
Plug 'terryma/vim-smooth-scroll'

" 二进制查看
Plug 'Shougo/vinarise.vim'

" 快速移动
Plug 'easymotion/vim-easymotion'

" 标签栏
Plug 'majutsushi/tagbar'

" 格式化代码
Plug 'Chiel92/vim-autoformat'

" vim中文文档
Plug 'yianwillis/vimcdoc'

call plug#end()
