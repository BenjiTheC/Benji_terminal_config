set nocompatible              " be iMproved, required
set nu			      " display line number	
set ruler                     " display cursor location <row, col>
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" AutoComplete: YouCompleteMe
Plugin 'Valloric/YouCompleteMe'

" Color Theme: Onedark
Plugin 'joshdick/onedark.vim' 

" Simly Fold: python code folding
Plugin 'tmhedberg/simpylfold'

" All of your Plugins must be added before the following line
call vundle#end()            " required
"filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let g:ycm_confirm_extra_conf=0
let g:SimpylFold_docstring_preview=1
let g:SimpylFold_fold_import=0
set guifont=Monaco\ 12


"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

let python_highlight_all=1
syntax on
colorscheme onedark

" Config the auto indentation here, it's a try by myself -- Benji
" 
" Auto indent for curly braces
set autoindent
set smartindent

" Default indentation
" For me, a Pythonista, it has to be 4 ;-)
set shiftwidth=4
set softtabstop=4
set tabstop=8
set expandtab
set smarttab

" when editing JavaScript and HTML files, set the indentation to 2 space
autocmd BufNewFile,BufRead *.js,*.html,*.css setlocal sw=2 ts=2
" when editing C files, set cindent
autocmd BufNewFile,BufRead *.c,*.cpp setlocal cindent


