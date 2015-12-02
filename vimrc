" Modeline and Notes {
" vim: set sw=4 ts=4 sts=4 et tw=78 foldmarker={,} foldlevel=0 foldmethod=marker spell:
"
"                              _
"                      __   __(_)_ __ ___
"                      \ \ / /| | '_ ` _ \
"                       \ V / | | | | | | |
"                        \_/  |_|_| |_| |_|
"
"
"   This is the personal .vimrc file of Elwin.
"   While much of it is beneficial for general use, I would
"   recommend picking out the parts you want and understand.
"
"   You can find me at http://Elwin.top
"
"   Copyright 2015 Elwin
"
"   Licensed under the Apache License, Version 2.0 (the "License");
"   you may not use this file except in compliance with the License.
"   You may obtain a copy of the License at
"
"       http://www.apache.org/licenses/LICENSE-2.0
"
"   Unless required by applicable law or agreed to in writing, software
"   distributed under the License is distributed on an "AS IS" BASIS,
"   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
"   See the License for the specific language governing permissions and
"   limitations under the License.
" }

" Environment {
    " Identify platform {
        silent function! OSX()
            return has('macunix')
        endfunction
        silent function! LINUX()
            return has('unix') && !has('macunix') && !has('win32unix')
        endfunction
        silent function! WINDOWS()
            return  (has('win32') || has('win64'))
        endfunction
    " }

    " Arrow Key Fix {
        " https://github.com/spf13/spf13-vim/issues/780
        if &term[:4] == "xterm" || &term[:5] == 'screen' || &term[:3] == 'rxvt'
            inoremap <silent> <C-[>OC <RIGHT>
        endif
    " }
" }

" Vundle {
    " Start of Setup Vundle Support {
        set nocompatible    " be iMproved, required, 去除VI一致性,必须
        filetype off        " required, 必须

        " set the runtime path to include Vundle and initialize
        " 设置包括vundle和初始化相关的runtime path
        set rtp+=~/.vim/bundle/Vundle.vim
        call vundle#begin()
        " alternatively, pass a path where Vundle should install plugins
        " 另一种选择, 指定一个vundle安装插件的路径
        " call vundle#begin('~/some/path/here')

        " let Vundle manage Vundle, required
        " 使用Vundle来管理Vundle
        " 让vundle管理插件版本,必须
        Plugin 'VundleVim/Vundle.vim'
        " The following are examples of different formats supported.
        " Keep Plugin commands between vundle#begin/end.
    " }

    " Examples {
        " 以下范例用来支持不同格式的插件安装.
        " 请将安装插的命令放在vundle#begin和vundle#end之间.

        " Github上的插件
        " 格式为 Plugin '用户名/插件仓库名'
        " Plugin 'tpope/vim-fugitive'

        " 来自 http://vim-scripts.org/vim/scripts.html 的插件
        " Plugin '插件名称' 实际上是 Plugin 'vim-scripts/插件仓库名' 只是此处的用户名可以省略
        " Plugin 'L9'

        " 由Git支持但不再github上的插件仓库 Plugin 'git clone 后面的地址'
        " Plugin 'git://git.wincent.com/command-t.git'

        " 本地的Git仓库(例如自己的插件) Plugin 'file:///+本地插件仓库绝对路径'
        " Plugin 'file:///home/gmarik/path/to/plugin'

        " 插件在仓库的子目录中.
        " 正确指定路径用以设置runtimepath. 以下范例插件在sparkup/vim目录下
        " Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

        " 避免插件名冲突,例如L9已存在,则可以指定
        " Plugin 'user/L9', {'name': 'newL9'}
    " }

    " General {
        Plugin 'tpope/vim-fugitive'              " Git集成,airline的前置插件,用于显示git版本库的分支
        Plugin 'bling/vim-airline'               " 小巧美观的状态栏
        Plugin 'winmanager'                      " vim窗口管理插件, 将nerdtree和taglist放在一个“侧边栏”中
        Plugin 'scrooloose/nerdtree'             " 目录树插件：用于浏览文件或目录
        Plugin 'majutsushi/tagbar'               " 标签导航,显示名字空间、类、函数等
        Plugin 'mhinz/vim-startify'              " 更改VIM开始界面插件,启动VIM可以看到一些快捷方式
        Plugin 'powerline/fonts'                 " powerline fonts

        Plugin 'kien/ctrlp.vim'                  " 杀手级查找文件

        Plugin 'tpope/vim-surround'              " 在两端加上、修改、删除匹配的符号
        Plugin 'tpope/vim-sleuth'                " 自动调整expandtab、shiftwidth
        Plugin 'sjl/gundo.vim'                   " 像版本控制一样使用编辑中undo功能
        "Plugin 'ludovicchabant/vim-lawrencium'   " Mercurial分布式版本控制系统
        Plugin 'mhinz/vim-signify'               " 用符号来表示添加、修改和删除
        Plugin 'tyru/open-browser.vim'           " 用浏览器打开URI
        Plugin 'justinmk/vim-sneak'              " 定位
        Plugin 'elzr/vim-json'                   " Json
        Plugin 'edsono/vim-matchit'              " 扩展了%匹配字符的范围
        "Plugin 'vim-scripts/TaskList.vim'        " 用于标记代码,任务
        Plugin 'godlygeek/tabular'               " 代码对齐
        "Plugin 'nathanaelkane/vim-indent-guides' " 可视化缩进
        Plugin 'Yggdroot/indentLine'             " 可视化缩进

        Plugin 'altercation/vim-colors-solarized' " 主题 solarized
        Plugin 'tomasr/molokai'                   " 主题 molokai
        Plugin 'flazz/vim-colorschemes'           " colorschemes
    " }

    " Writing {
        Plugin 'plasticboy/vim-markdown'         " markdown高亮
        Plugin 'bronson/vim-trailing-whitespace' " 去掉末尾无效空格
    " }

    " General Programming {
        Plugin 'scrooloose/syntastic'            " 语法检查
        Plugin 'vim-scripts/a.vim'               " cpp <-> h
        Plugin 'klen/python-mode'                " Python
        Plugin 'scrooloose/nerdcommenter'        " 批量注释与反注释
    " }

    " Snippets & AutoComplete {
        "Plugin 'honza/vim-snippets'              " 代码片段补全
        Plugin 'SirVer/ultisnips'                " 代码片段补全
        "Plugin 'Valloric/YouCompleteMe'          " 自动补全
    " }

    " Scala {
        " Plugin 'derekwyatt/vim-scala'
        " Plugin 'derekwyatt/vim-sbt'
        " Plugin 'xptemplate'
    " }

    " Go Lang {
        ""Plugin 'Blackrush/vim-gocode'
        "Plugin 'fatih/vim-go'
    " }

    " End of Setup Vundle Support {
        " All of your Plugins must be added before the following line
        " 你的所有插件需要在下面这行之前
        call vundle#end()            " required, 必须
        filetype plugin indent on    " required, 必须, 加载vim自带和插件相应的语法和文件类型相关脚本
        " To ignore plugin indent changes, instead use:
        " 忽视插件改变缩进,可以使用以下替代:
        " filetype plugin on
        "
        " Brief help
        " - 简要帮助文档
        " :PluginList       - lists configured plugins
        " - 列出所有已配置的插件
        " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
        " - 安装插件,追加 `!` 用以更新或使用 :PluginUpdate
        " :PluginSearch foo - searches for foo; append `!` to refresh local cache
        " - 搜索 foo ; 追加 `!` 清除本地缓存
        " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
        " - 清除未使用插件,需要确认; 追加 `!` 自动批准移除未使用插件
        "
        " see :h vundle for more details or wiki for FAQ
        " 查阅 :h vundle 获取更多细节和wiki以及FAQ
        " Put your non-Plugin stuff after this line
        " 将你自己对非插件片段放在这行之后
    " }
" }

" General {
    " Allow to trigger background {
    function! ToggleBG()
        let s:tbg = &background
        " Inversion
        if s:tbg == "dark"
            set background=light
        else
            set background=dark
        endif
    endfunction
    noremap <leader>bg :call ToggleBG()<cr>
    " }

    " 开启高亮
    syntax on

    " 设置编码
    set termencoding=utf-8
    set encoding=utf8
    set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030

    set history=1000                " Store a ton of history (default is 20)
" }

" Vim UI {
    " 设置光标所在行阴影高亮
    set cursorline
    " 设置光标所在列阴影高亮
    set cursorcolumn

    highlight clear SignColumn      " SignColumn should match background
    highlight clear LineNr          " Current line number row will have same background color in relative mode
    " highlight clear CursorLineNr    " Remove highlight color from current line number

    set backspace=indent,eol,start  " Backspace for dummies
    set linespace=0                 " No extra spaces between rows
    set number                      " Line numbers on
    set showmatch                   " Show matching brackets/parenthesis
    set incsearch                   " Find as you type search
    set hlsearch                    " Highlight search terms
    set winminheight=0              " Windows can be 0 line high
    set ignorecase                  " Case insensitive search
    set smartcase                   " Case sensitive when uc present
    set wildmenu                    " Show list instead of just completing
    set wildmode=list:longest,full  " Command <Tab> completion, list matches, then longest common part, then all.
    set whichwrap=b,s,h,l,<,>,[,]   " Backspace and cursor keys wrap too
    set scrolljump=5                " Lines to scroll when cursor leaves screen
    set scrolloff=3                 " Minimum lines to keep above and below cursor
    set foldenable                  " Auto fold code
    " set list
    " set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace

    " Schemes Setting {
        syntax enable
        " Solarized {
            let g:solarized_termcolors=256
            let g:solarized_termtrans=1
            let g:solarized_contrast='normal'
            let g:solarized_visibility='normal'
        " }

        " Molokai {
           let g:molokai_original = 1
           " let g:rehash256 = 1
        " }

        " 配色方案 {
            set background=dark
            set t_Co=256
            let g:is_gui=0
            if g:is_gui
                colorscheme solarized
                " colorscheme molokai
                " colorscheme phd
            else
                " colorscheme solarized
                colorscheme molokai
                " colorscheme phd
            endif
        " }
    " }
" }

" Formatting {
    " set nowrap                      " Do not wrap long lines

    " 缩进
    set autoindent                  " Indent at the same level of the previous line
    set smartindent

    " Tab设置
    " 1 tab == 4 spaces
    set shiftwidth=4                " Use indents of 4 spaces
    set expandtab                   " Tabs are spaces, not tabs
    set tabstop=4                   " An indentation every four columns
    set softtabstop=4               " Let backspace delete indent
    " Be smart when using tabs ;)
    set smarttab
    " 将已存在的tab都转化为空格
    %retab!

    set nojoinspaces                " Prevents inserting two spaces after punctuation on a join (J)
    set splitright                  " Puts new vsplit windows to the right of the current
    set splitbelow                  " Puts new split windows to the bottom of the current
    " set matchpairs+=<:>             " Match, to be used with %
    set pastetoggle=<F4>            " pastetoggle (sane indentation on pastes),插入模式下按 F9进入粘贴模式
    " set comments=sl:/*,mb:*,elx:*/  " auto format comment blocks
    " Remove trailing whitespaces and ^M chars
    " To disable the stripping of whitespace, add the following to your
    " .vimrc.before.local file:
    "   let g:spf13_keep_trailing_whitespace = 1
    autocmd FileType c,cpp,java,go,php,javascript,puppet,python,rust,twig,xml,yml,perl,sql autocmd BufWritePre <buffer> if !exists('g:spf13_keep_trailing_whitespace') | call StripTrailingWhitespace() | endif

    " autocmd FileType go autocmd BufWritePre <buffer> Fmt
    autocmd BufNewFile,BufRead *.html.twig set filetype=html.twig
    autocmd FileType haskell,puppet,ruby,yml setlocal expandtab shiftwidth=2 softtabstop=2
    " preceding line best in a plugin but here for now.

    autocmd BufNewFile,BufRead *.coffee set filetype=coffee

    " Workaround vim-commentary for Haskell
    autocmd FileType haskell setlocal commentstring=--\ %s
    " Workaround broken colour highlighting in Haskell
    autocmd FileType haskell,rust setlocal nospell
" }

" Key (re)Mappings {
    let mapleader=','
    let maplocalleader = '_'
    " 映射切换buffer的键位,前一个 :bp 映射成了 [b, 后一个 :bn 映射成了 ]b
    nnoremap [b :bp<CR>
    nnoremap ]b :bn<CR>
" }

" Plugins {
    " Airline Setting {
        set t_Co=256
        set laststatus=2
        " 使用powerline打过补丁的字体
        let g:airline_powerline_fonts = 1
        " 开启tabline
        let g:airline#extensions#tabline#enabled = 1
        " tabline中当前buffer两端的分隔字符
        let g:airline#extensions#tabline#left_sep = ' '
        " tabline中未激活buffer两端的分隔字符
        let g:airline#extensions#tabline#left_alt_sep = '|'
        " tabline中buffer显示编号
        let g:airline#extensions#tabline#buffer_nr_show = 1
    " }

    " Nerdtree Setting {
        " 控制当光标移动超过一定距离时，是否自动将焦点调整到屏中心
        let NERDTreeAutoCenter=1
        " 是否默认显示文件
        let NERDTreeShowFiles=1
        " 是否默认显示隐藏文件
        " let NERDTreeShowHidden=1
        " 窗口位置（'left' or 'right'）
        " let NERDTreeWinPos='left'
        " 窗口宽
        let NERDTreeWinSize=30
        " 快捷键F2打开,q退出
        nnoremap <silent> <F2> :NERDTree<CR>
        " 关闭vim时，如果打开的文件除了NERDTree没有其他文件时，它自动关闭
        autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
        " 打开vim时自动打开NERDTree
        autocmd vimenter * NERDTree
        " 打开VIM后默认进入右侧编辑区
        wincmd w
        autocmd VimEnter * wincmd w
        " 不显示的文件
        let NERDTreeIgnore=['\.o$', '\.ko$', '\.symvers$', '\.order$', '\.mod.c$', '\.swp$', '\.bak$', '\~$']
    " }

    " Tagbar Setting {
        nnoremap <silent> <F3> :TagbarToggle<CR>
        let g:tagbar_width=30
        " 设置tagbar默认打开(大屏幕显示器可以打开)
        autocmd VimEnter * nested TagbarOpen
    " }

    " IndentLine Setting {
        let g:indentLine_char = '¦'
        let g:indentLine_color_term = 239
    " }

    " CtrlP Setting {
        map <leader>fp :CtrlPMRU<CR>             " 相当于mru功能, show recently opened files
    " }

    " Whitespace Setting {
        map <leader> <space> :FixWhitespace<cr>  " <leader> + space去掉末尾空格
    " }
" }

" GUI Settings {
" }

" Functions {
    " Strip whitespace {
    function! StripTrailingWhitespace()
        " Preparation: save last search, and cursor position.
        let _s=@/
        let l = line(".")
        let c = col(".")
        " do the business:
        %s/\s\+$//e
        " clean up: restore previous search history, and cursor position
        let @/=_s
        call cursor(l, c)
    endfunction
    " }

    " Shell command {
    function! s:RunShellCommand(cmdline)
        botright new

        setlocal buftype=nofile
        setlocal bufhidden=delete
        setlocal nobuflisted
        setlocal noswapfile
        setlocal nowrap
        setlocal filetype=shell
        setlocal syntax=shell

        call setline(1, a:cmdline)
        call setline(2, substitute(a:cmdline, '.', '=', 'g'))
        execute 'silent $read !' . escape(a:cmdline, '%#')
        setlocal nomodifiable
        1
    endfunction

    command! -complete=file -nargs=+ Shell call s:RunShellCommand(<q-args>)
    " e.g. Grep current file for <search_term>: Shell grep -Hn <search_term> %
    " }
" }

