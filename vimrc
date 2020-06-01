"-----------------------------
"键位修改
let mapleader=" "
"inoremap <c-l>  <Esc>lxi
inoremap jj <Esc>`^
inoremap <c-o> <Esc>o
inoremap <c-l> <Esc>la
inoremap zz <Esc>zza

nnoremap <leader>n :nohlsearch<CR>
nnoremap R :source $MYVIMRC<CR>
nnoremap <leader>l :Autoformat<CR> nnoremap Q :q<CR>
nnoremap <leader>f *
nnoremap <leader>vimrc :e ~/.vim/vimrc <CR>
nnoremap <leader>1 :colorscheme gruvbox  <CR> nnoremap
nnoremap <leader>2 :colorscheme onedark <CR>
nnoremap <leader>3 :colorscheme hybrid  <CR>
nnoremap <leader>4 :colorscheme dracula <CR>

"----------------------
"pymode 设置--------------------

let g:pymode=1
let g:pymode_trim_whitespaces = 1
let g:pymode_indent=1
let g:pymode_motion=1
nnoremap <leader>p  :PymodeLintAuto <CR>:Autoformat<CR>
nnoremap <leader>c  :PymodeLint <CR>
nnoremap <leader>m  :PymodeLintAuto <CR>:Autoformat<CR>:PymodeRun<CR>
let g:pymode_rope_goto_defintion_bind="<C-]>"

set completeopt-=preview
"------------------------------
"编码
"o set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1 set enc=utf8
set fencs=utf8,gbk,gb2312,gb18030



"彩虹（）
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle
" 打开
set number
syntax enable
syntax on
"set mouse=a
set t_Co=256
filetype indent on
set autoindent
"按下回车键后，下一行的缩进会自动跟上一行的缩进保持一致。
set tabstop=4
"按下 tab 键时，vim 显示的空格数。
set shiftwidth=4
"在文本上按下>>（增加一级缩进）、<<（取消一级缩进）或者==（取消全部缩进）时，每一级的字符数。
set expandtab
"由于 tab 键在不同的编辑器缩进不一致，该设置自动将 tab 转为空格。
set softtabstop=4
"Tab 转为多少个空格。
set number
"显示行号
"set relativenumber
"显示光标所在的当前行的行号，其他行都为相对于该行的相对行号。
set cursorline
"光标所在的当前行高亮。
set textwidth=80
"设置行宽，即一行显示多少个字符。
set wrap
"自动折行，即太长的行分成几行显示。
"set nowrap "关闭自动折行
set linebreak
"只有遇到指定的符号（比如空格、连词号和其他标点符号），才发生折行。也就是说，不会在单词内部折行。
set wrapmargin=2
"指定折行处与编辑窗口的右边缘之间空出的字符数。

set scrolloff=5
"垂直滚动时，光标距离顶部/底部的位置（单位：行）。
set sidescrolloff=15
"水平滚动时，光标距离行首或行尾的位置（单位：字符）。该配置在不折行时比较有用。
set  ruler
"在状态栏显示光标的当前位置（位于哪一行哪一列）。
set showmatch
"光标遇到圆括号、方括号、大括号时，自动高亮对应的另一个圆括号、方括号和大括号。
set hlsearch
"搜索时，高亮显示匹配结果。
set incsearch
"内部部分匹配
set ignorecase
"搜索时忽略大小写。
set smartcase
"如果同时打开了ignorecase，那么对于只有一个大写字母的搜索词，将大小写敏感；其他情况都是大小写不敏感。比如，搜索Test时，将不匹配test；搜索test时，将匹配Test。
"set spell spelllang=en_us
"打开英语单词的拼写检查。

"set visualbell
"出错时，发出视觉提示，通常是屏幕闪烁。

set history=1000
"Vim 需要记住多少次历史操作。





set autoread
"打开文件监视。如果在编辑过程中文件发生外部改变（比如被别的编辑器编辑了），就会发出提示。


"-----------------------------------------------------------------
" 屏幕标签快捷键
nnoremap sd :set splitright<CR>:vsplit<CR>
nnoremap sa :set nosplitright<CR>:vsplit<CR>
nnoremap sw :set nosplitbelow<CR>:split<CR>
"nnoremap ss :set splitbelow<CR>:split<CR>

nnoremap <C-l> <C-w>l
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j

nnoremap <up> :res -1<CR>
nnoremap <down> :res +1<CR>
nnoremap <down> :res +1<CR>
nnoremap <left> :vertical resize+1<CR>
nnoremap <right> :vertical resize-1<CR>

nnoremap tu :tabe<CR>
nnoremap th :-tabnext<CR>
nnoremap tl :+tabnext<CR>

nnoremap sv <C-w>t<C-w>H
nnoremap sh <C-w>t<C-w>K
"-------------------------------------------------------------------------
"
"
"
"
"
"
"
"
"
"
"插件安装
call plug#begin('~/.vim/plugged')

"--------------
"开屏工具
Plug 'mhinz/vim-startify'

"----------------------------------
"状态栏
Plug 'vim-airline/vim-airline' "状态栏
Plug 'vim-airline/vim-airline-themes'  "状态栏主题


"----------------------------------
Plug 'scrooloose/nerdtree' "文件树
nnoremap <leader>v  :NERDTreeFind<cr> "编辑ing的文件所在的目录 配合<C-w>p 跳回来正在正编辑的窗口
nnoremap <leader>g  :NERDTreeToggle<cr> "关/开
let NERDTreeShowHidden=1 "隐藏文件可见
"autocmd vimenter * NERDTree  "打开vim时自动打开
"-----------------------------------
"缩进线
Plug 'Yggdroot/indentLine'

"----------------------
"快速根据文件名打开文件
Plug 'ctrlpvim/ctrlp.vim'
let g:ctrlp_map= '<c-p>' "<c-p> 搜索


"-------------------------
"文件内快速跳转
Plug 'easymotion/vim-easymotion'


"-------------------------------
"vim -go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

"---------------------
"Python-mode
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }

"------------------
"代码补全

if has('nvim')
      Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins'  }
  else
        Plug 'Shougo/deoplete.nvim'
          Plug 'roxma/nvim-yarp'
            Plug 'roxma/vim-hug-neovim-rpc'
        endif
        let g:deoplete#enable_at_startup = 1
        "pip3 install --user pynvim
"for go
Plug 'Shougo/deoplete.nvim'
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}

"for python
Plug 'deoplete-plugins/deoplete-jedi'

"for c/c++
Plug 'zchee/deoplete-clang'
"--------------------------
"括号匹配
Plug 'jiangmiao/auto-pairs'
"--------------
"符号对齐
Plug 'junegunn/vim-easy-align'
"彩虹括号
"Plug 'kien/rainbow_parentheses.vim'
"--------------
"主题安装
Plug 'connorholyday/vim-snazzy' "主题安装
Plug 'dracula/vim', { 'as': 'dracula'  }
Plug 'W0ng/vim-hybrid'
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'davidklsn/vim-sialoquent'
"------------------------------------------------------------------------
"c/c++
Plug 'dense-analysis/ale'
"Plug 'valloric/youcompleteme'
Plug 'chiel92/vim-autoformat'
Plug 'octol/vim-cpp-enhanced-highlight'

"coc补全
"Plug 'neoclide/coc.nvim'
"中文文档
Plug 'yianwillis/vimcdoc'

"markdown
Plug 'godlygeek/tabular' "必要插件，安装在vim-markdown前面
Plug 'plasticboy/vim-markdown'
"[[ "跳转上一个标题
"]] "跳转下一个标题
"]c "跳转到当前标题
"]u "跳转到副标题
"zr "打开下一级折叠
"zR "打开所有折叠
"zm "折叠当前段落
"zM "折叠所有段落
":Toc "显示目录"

Plug 'iamcco/mathjax-support-for-mkdp'"


Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install()  }  }


call plug#end()


"==============================================================
"快速跳转
nmap ss <Plug>(easymotion-s2)
"插件的快捷键
"
"代码补全设置
"let g:deoplete#enable_at_startup = 1

"let g:pymode_python='python3'
"let g:pymode_rope_goto_defintion_bind="<C-]>"
"let g:pymode_lint=1

"===============================================================================

"---------------------------
"主题设置
"color snazzy
"color hybrid
"color solarized
"color gruvbox
color onedark
"------------------------------------
""""""""""""""""""""""
"Quickly Run
""""""""""""""""""""""
map <leader>x :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'cpp'
        exec "cleal"
        exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'java'
        exec "!time java %<"
    elseif &filetype == 'sh'
        :!time bash %
    elseif &filetype == 'python'
        exec "!time python3 %"
    elseif &filetype == 'html'
        exec "!firefox % &"
    elseif &filetype == 'go'
        "        exec "!go build %<"
        exec "!time go run %"
    elseif &filetype == 'markdown'
        exec "MarkdownPreview"
    endif
endfunc




"------------------------------------------
"<c-f> <c-u> 翻页
"
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'frazrepo/vim-rainbow'
call vundle#end()            " required
filetype plugin indent on    " required



"-------------------
"markdown
" set to 1, nvim will open the preview window after entering the markdown
" buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = 'chromium'

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview
"   page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon
"   of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
"let g:mkdp_preview_options = {
            "\ 'mkit': {},
            "\ 'katex': {},
            "\ 'uml': {},
            "\ 'maid': {},
            "\ 'disable_sync_scroll': 0,
            "\ 'sync_scroll_type': 'middle',
            "\ 'hide_yaml_meta': 1,
            "\ 'sequence_diagrams': {},
            "\ 'flowchart_diagrams': {}
"\
"}

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

nnoremap <leader>t :Toc<CR>
autocmd Filetype markdown inoremap ,f <Esc>/<++><CR>:nohlsearch<CR>c4l
autocmd Filetype markdown inoremap ,1 #<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,2 ##<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,3 ###<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,4 ####<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,5 #####<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,6 ######<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,l ----------<Enter>

autocmd Filetype markdown inoremap ,a [](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap ,p ![](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap ,t - [ ]<Space>

autocmd Filetype markdown inoremap ,n ---<Enter><Enter>
autocmd Filetype markdown inoremap ,b **** <++><Esc>F*hi
autocmd Filetype markdown inoremap ,s ~~~~ <++><Esc>F~hi
autocmd Filetype markdown inoremap ,i ** <++><Esc>F*hi
autocmd Filetype markdown inoremap ,d `` <++><Esc>F`i
autocmd Filetype markdown inoremap ,k ``` <Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
autocmd Filetype markdown inoremap ,h ====<Space><++><Esc>F=hi


let g:vim_markdown_math = 1


"
"1.vim中文文档不会覆盖原英文文档，安装后vim默认使用中文文档。若想使用英文文档，可在vim中执行以下命令：
"set helplang=en
"同理，使用以下命令可重新使用中文文档：
"set helplang=cn
"2. 帮助文件的文本是utf-8编码的, 如果想用vim直接查看, 需要在~/.vimrc中设置:
""set encoding=utf-8

"set wildmenu
"let g:rainbow_active = 1
"let g:deoplete#enable_at_startup = 1
