set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=%HOME%/vimfiles/bundle/Vundle.vim/
call vundle#begin('$USERPROFILE/vimfiles/bundle/')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
Plugin 'alepez/vim-gtest'
Plugin 'chriskempson/base16-vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'godlygeek/tabular'
Plugin 'justinmk/vim-sneak'
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'qpkorr/vim-bufkill'
Plugin 'rhysd/vim-clang-format'
Plugin 'tpope/vim-fugitive'
Plugin 'istepura/vim-toolbar-icons-silk'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

autocmd FileType c ClangFormatAutoEnable
autocmd FileType cpp ClangFormatAutoEnable
autocmd FileType h ClangFormatAutoEnable

set laststatus=2 " Always display the statusline in all windows
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

set wildmenu
set wildmode=list:longest,full

let g:clang_format#detect_style_file = 1
let g:clang_format#command = 'C:/Program Files (x86)/LLVM/bin/clang-format.exe'

let g:gtest#gtest_command = "/home/nicolas/repos/GameEngine/build/run_tests"

map <S-F10> :wa \| make \| GTestRun<CR>
map <S-F9> :wa \| make clean \| make<CR>

set makeprg=ninja\ -C\ /home/nicolas/repos/GameEngine/build

colorscheme base16-brewer

if has("gui_running")
  set guifont=Consolas:h11:cANSI
endif
