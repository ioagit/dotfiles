"if $VIM_PLUGINS != 'NO'
  runtime! autoload/pathogen.vim
  if exists('g:loaded_pathogen')
    execute pathogen#infect('~/.vimbundles/{}', '~/.vim/bundle/{}')
  endif
"endif

syntax on
filetype plugin indent on


set ruler
set cursorline
set t_Co=256
set wrapscan
set number
set autoindent
set expandtab
set tabstop=2
set sw=2
set background=light
"set foldmethod=syntax
set showmode
set showcmd
set hidden
set visualbell
set ttyfast
set ruler
set backspace=indent,eol,start
set norelativenumber
set history=1000
set undofile
set undoreload=10000
set autowrite
set autoread
set shiftround
set title
set linebreak
set notimeout " Performance
set ttimeout  " Performance
set ttimeoutlen=10 " Performance

let mapleader = ';'
"let g:ruby_fold = 1

colorscheme wombat256

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors=0
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
let g:indent_guides_color_change_percent=100
hi IndentGuidesOdd ctermbg=235
hi IndentGuidesEven ctermbg=243

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

set ruler
set cursorline

set visualbell

set fillchars+=stl:\ ,stlnc:\
set laststatus=2

set clipboard=unnamed

set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Force hjkl navigation in Normal Mode
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

"Visual mappings"
"Ctrl C to copy in (visual Mode"
vmap <C-c> y
vmap <C-x> x
vmap <C-v> <esc>P

"Remove line numbers
nnoremap <leader># :setlocal number!<cr>

" Buffer navigation
map <leader>n :bn<cr>
map <leader>x :bw<cr>
map <leader>p :bp<cr>
map <leader>a :badd
map <leader>w :w!<cr>
map <leader>q :q!<cr>
nnoremap <leader>b :buffers<cr>:vert sb<Space>

" Wildmenu and wildignores for files
set wildmenu
set wildignore+=.git,.svn
set wildignore+=*.jpg,*.png,*.bmp,*.gif,*.jpeg
set wildignore+=*.sw?
set wildignore+=*node_modules
set wildmode=list:longest,full

set splitright
set splitbelow

set hidden


" Clean trailing whitespace
nnoremap <leader>w mz:%s/\s\+$//<cr>:let @/=''<cr>`z

" Remove u when when trying to hit y for yank
vnoremap u <nop>
vnoremap gu u

" Diffoff
nnoremap <leader>D :diffoff!<cr>

" Fugitive
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gw :Gwrite<cr>
nnoremap <leader>ga :Gadd<cr>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gco :Gcheckout<cr>
nnoremap <leader>gci :Gcommit<cr>
nnoremap <leader>gm :Gmove<cr>
nnoremap <leader>gr :Gremove<cr>
nnoremap <leader>gl :Shell git gl -18<cr>:wincmd \|<cr>

" Resize splits when window is resized
au VimResized * :wincmd =

" Used to expand all folds and easy access for fold toggle
autocmd VimEnter * execute "normal zR"

" Space to toggle folds.
nnoremap <Space> za
vnoremap <Space> za

" Sudo to write
cnoremap w!! w !sudo tee % >/dev/null

" Typos
command! -bang E e<bang>
command! -bang Q q<bang>
command! -bang W w<bang>
command! -bang QA qa<bang>
command! -bang Qa qa<bang>
command! -bang Wa wa<bang>
command! -bang WA wa<bang>
command! -bang Wq wq<bang>
command! -bang WQ wq<bang>

" Use sane regexes.
nnoremap / /\v
vnoremap / /\v

" Searches
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
set gdefault

set scrolloff=3
set sidescroll=1
set sidescrolloff=10

set virtualedit+=block

" Clear search highlighting
noremap <silent> <leader><space> :noh<cr>:call clearmatches()<cr>

" Redraw screen on hiccups
nnoremap U :syntax sync fromstart<cr>:redraw!<cr>



set guifont=Monaco:h16

set guioptions-=T guioptions-=e guioptions-=L guioptions-=r
set shell=bash

augroup vimrc
  autocmd!
  autocmd GuiEnter * set columns=120 lines=70 number
augroup END

if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif
