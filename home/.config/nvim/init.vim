"     /\   | |    | |                      | |            \ \    / /        (_)
"    /  \  | | ___| | _____  __ _ _ __   __| | __ _ _ __   \ \  / /   _  ___ _  ___
"   / /\ \ | |/ _ \ |/ / __|/ _` | '_ \ / _` |/ _` | '__|   \ \/ / | | |/ __| |/ __|
"  / ____ \| |  __/   <\__ \ (_| | | | | (_| | (_| | |       \  /| |_| | (__| | (__
" /_/    \_\_|\___|_|\_\___/\__,_|_| |_|\__,_|\__,_|_|        \/  \__,_|\___|_|\___|
"
" Author: Aleksandar Vucic
" repo  : https://github.com/avstudio/dotfiles/

" Setup  --------------------------------------------------------------------{{{
" auto-install vim-plug
if empty(glob("$HOME/.config/nvim/autoload/plug.vim"))
    call system(expand("mkdir -p $HOME/.config/nvim/{autoload,plugged}"))
    call system(expand("git clone https://github.com/junegunn/vim-plug.git $HOME/.config/nvim/plugged/vim-plug"))
    call system(expand("ln -s ~/.config/nvim/plugged/vim-plug/plug.vim ~/.config/nvim/autoload"))
    autocmd VimEnter * PlugInstall
endif

set runtimepath+=~/.config/nvim/plugged/vim-snippets

call plug#begin('~/.config/nvim/plugged')

Plug 'junegunn/vim-plug'

" General {{{
Plug 'tpope/vim-repeat'
Plug 'sickill/vim-pasta' " Improve paste
Plug 'editorconfig/editorconfig-vim' " Conventions for vim
Plug 'kassio/neoterm'
Plug 'aquach/vim-http-client'
Plug 'Shougo/vimproc.vim', {'build' : 'make','do':':VimProcInstall'}
Plug 'qpkorr/vim-bufkill'
"}}}

" Testing {{{
Plug 'janko-m/vim-test'
Plug 'tpope/vim-dispatch'
"}}}

" Vim Session {{{
Plug 'xolox/vim-misc'
Plug 'dominickng/fzf-session.vim'
"}}}

" Navigation/Folding  {{{
Plug 'scrooloose/nerdtree'
Plug 'EvanDotPro/nerdtree-symlink'
Plug 'ivalkeen/nerdtree-execute'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'tpope/vim-unimpaired' " Navigate throught quicklist
Plug 'Lokaltog/vim-easymotion'
Plug 'ervandew/supertab'
Plug 'Konfekt/FastFold'
Plug 'wellle/visual-split.vim'
Plug 'majutsushi/tagbar'
Plug 'farmergreg/vim-lastplace'
"}}}

" Auto complete  {{{
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx','html'] }
Plug 'carlitux/deoplete-ternjs', { 'build': 'npm install -g tern','for': ['javascript', 'javascript.jsx','html']  }
Plug 'fishbullet/deoplete-ruby',{'for': 'ruby'}
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'cyansprite/Extract'
"}}}

" Look and feel/Visual  {{{
Plug 'kshenoy/vim-signature' "vim marks
Plug 'ap/vim-css-color'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'mhinz/vim-startify'
Plug 'sheerun/vim-polyglot'
"theme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'chriskempson/base16-vim'
Plug 'rakr/vim-one'
Plug 'arcticicestudio/nord-vim'
"}}}

" Text {{{
Plug 'xolox/vim-notes'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/goyo.vim'  "Write free text
Plug 'tpope/vim-abolish' " text inflection and case  manipulation
Plug 'junegunn/limelight.vim' "Not destriactive sections of text
Plug 'triglav/vim-visual-increment' " Increment numbers by visual selection
Plug 'terryma/vim-expand-region'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug '$HOME/.config/nvim/plugin/vim-translator'
Plug 'itchyny/vim-cursorword'

"" textobjects
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'lucapette/vim-textobj-underscore'
Plug 'kana/vim-textobj-indent'
Plug 'whatyouhide/vim-textobj-erb'

"}}}

" Syntax {{{
Plug 'scrooloose/nerdcommenter'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-sleuth'
Plug 'w0rp/ale'
" TODO check formaters
Plug 'alpaca-tc/beautify.vim'
Plug 'maksimr/vim-jsbeautify'
Plug 'Chiel92/vim-autoformat'
Plug 'Raimondi/delimitMate'
"}}}

" Git  {{{
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim' "Browse git commits
"}}}

" Search and History {{{
Plug 'rking/ag.vim'
Plug 'taiansu/nerdtree-ag'
Plug 'nelstrom/vim-visual-star-search'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'brooth/far.vim'
Plug 'simnalamburt/vim-mundo'
"}}}

" HTML  {{{
Plug 'Valloric/MatchTagAlways'
Plug 'gorodinskiy/vim-coloresque'
Plug 'tpope/vim-haml'
Plug 'mattn/emmet-vim'
"}}}

" CSS  {{{
Plug 'hail2u/vim-css3-syntax'
Plug 'groenewege/vim-less'
"}}}

" Javascript  {{{
Plug 'thinca/vim-textobj-function-javascript'
Plug 'inside/vim-textobj-jsxattr'
Plug 'pangloss/vim-javascript'
"Plug 'chemzqm/vim-jsx-improve'
Plug 'mxw/vim-jsx'
Plug 'isRuslan/vim-es6' " snippets
Plug 'epilande/vim-react-snippets'
Plug 'cristianoliveira/vim-react-html-snippets'
"}}}

" Lisp  {{{
Plug 'vim-scripts/slimv.vim'
"}}}

" php  {{{
Plug 'm2mdas/phpcomplete-extended'
Plug 'StanAngeloff/php.vim'
"}}}

" Ruby/Rails  {{{
Plug 'tpope/vim-rails'
" Plug 'tpope/vim-rake'
Plug 'tpope/vim-projectionist'
Plug 'thoughtbot/vim-rspec'
Plug 'ecomba/vim-ruby-refactoring'
Plug 'tpope/vim-bundler'
Plug 'slim-template/vim-slim'
Plug 'nelstrom/vim-textobj-rubyblock', { 'for': 'ruby' } "Selecting ruby block
Plug 'rhysd/vim-textobj-ruby', { 'for': 'ruby' }
" P lug('tpope/vim-rbenv'),                           { 'for': 'ruby' }
" P lug('skalnik/vim-vroom'),                         { 'for': 'ruby' }
" P lug('t9md/vim-ruby-xmpfilter'),                   { 'for': 'ruby' }
Plug 'jgdavey/vim-blockle', { 'for': 'ruby' }
Plug 'tpope/vim-endwise', { 'for': 'ruby' }
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
" Plug 'bruno-/vim-ruby-fold'
Plug 'rlue/vim-fold-rspec'
Plug 'rorymckinley/vim-rubyhash'
"}}}

" JSON  {{{
Plug 'tpope/vim-jdaddy' "json mappings
"}}}

" CSV  {{{
Plug 'chrisbra/csv.vim'
"}}}

" Docker  {{{
Plug 'ekalinin/Dockerfile.vim'
"}}}
call plug#end()
filetype plugin indent on
" }}}

" System Setting  -----------------------------------------------------------{{{
let mapleader="\<Space>"

set autoread
"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set bomb
set binary

set backspace=indent,eol,start "" Fix backspace indent
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set splitbelow
set splitright
set nowrap
set spell spelllang=en_us
set hidden "" Enable hidden buffers

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

set fileformats=unix,dos,mac
set showcmd
set shell=/bin/sh

set nobackup
" set noswapfile
"" Directories for swp files
call system('mkdir $HOME/.config/nvim/swap')
set directory=~/.config/nvim/swap//

"" Terminal emulation
" vimshell.vim
let g:vimshell_user_prompt = 'fnamemodify(getcwd(), ":~")'
let g:vimshell_prompt =  '$ '
if has('nvim')
    nnoremap <silent> <leader>sh :terminal<CR>
else
    nnoremap <silent> <leader>sh :VimShellCreate<CR>
endif
"}}}

" Visual Settings -----------------------------------------------------------{{{
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
if (has("termguicolors"))
    set termguicolors
endif

syntax on
set ruler
set number
set guifont=Monaco\ for\ Powerline\ Nerd\ Font\ Complete:h12
" set relativenumber number
set mousemodel=popup
set t_Co=256
set guioptions=egmrti
set gcr=a:blinkon0 "" Disable the blinking cursor.
set scrolloff=3

set t_ZH=^[[3m
set t_ZR=^[[23m

let g:one_allow_italics = 1
colorscheme one
set background=dark
"" Highlight color
" highlight ExtraWhitespace ctermbg=red guibg=red
" highlight FoldColumn guifg=Grey
hi Folded guifg=#5c6370
hi Folded guibg=dark

"" Highlight characters that go over 80 columns (by drawing a border on the 81st)
if exists('+colorcolumn')
    set colorcolumn=81
endif
let no_buffers_menu=1

let g:terminal_color_0= "#1e1e1e" "Black
let g:terminal_color_1= "#cf6a4c" "Red
let g:terminal_color_2= "#8f9d6a" "Green
let g:terminal_color_3= "#cda869" "Yellow
let g:terminal_color_4= "#7587a6" "Blue
let g:terminal_color_5= "#9b859d" "Magenta
let g:terminal_color_6= "#afc4db" "Cyan
let g:terminal_color_7= "#c3c3c3" "white
let g:terminal_color_8= "#838184" "Bright black
let g:terminal_color_9= "#9b703f" "Bright red
let g:terminal_color_10= "#9b859c" "Bright green
let g:terminal_color_11= "#8f9d6a" "Bright yellow
let g:terminal_color_12= "#7587a6" "Bright Blue
let g:terminal_color_13= "#9b859d" "Bright Magenta
let g:terminal_color_14= "#7587a6" "Bright Cyan
let g:terminal_color_15= "#ffffff" "Bright white
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

"" Status bar
set laststatus=2

"" Use modeline overrides
set modeline
set modelines=10

set title
set titleold="Terminal"
set titlestring=%F

set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\
if exists("*fugitive#statusline")
    set statusline+=%{fugitive#statusline()}
endif

"" Disable visualbell
set noerrorbells visualbell t_vb=
if has('autocmd')
    autocmd GUIEnter * set visualbell t_vb=
endif

"" Copy/Paste/Cut
if has('unnamedplus')
    set clipboard=unnamed,unnamedplus
endif
"" Fix slow nerdtree
set lazyredraw
set ttyfast
" }}}

" Folding  ------------------------------------------------------------------{{{
function! MyFoldText() " {{{
    let line = getline(v:foldstart)
    let nucolwidth = &fdc + &number * &numberwidth
    let windowwidth = winwidth(0) - nucolwidth - 3
    let foldedlinecount = v:foldend - v:foldstart

    " expand tabs into spaces
    let onetab = strpart('          ', 0, &tabstop)
    let line = substitute(line, '\t', onetab, 'g')

    let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
    let fillcharcount = windowwidth - len(line) - len(foldedlinecount) - len('lines')
    return line . '…' . repeat(" ",fillcharcount) . foldedlinecount . ' Lines '
endfunction " }}}

set foldtext=MyFoldText()

autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif

autocmd FileType vim setlocal fdc=1
set foldlevel=99
autocmd FileType vim,zsh setlocal foldmethod=marker
autocmd FileType vim,zsh setlocal foldlevel=0

autocmd FileType html setlocal fdl=99

autocmd FileType javascript,html,css,scss,typescript setlocal foldlevel=99
autocmd FileType css,scss,json setlocal foldmethod=marker
autocmd FileType css,scss,json setlocal foldmarker={,}

autocmd FileType coffee setl foldmethod=indent
autocmd FileType html setl foldmethod=expr
autocmd FileType html setl foldexpr=HTMLFolds()
autocmd FileType javascript,typescript,json,xml,ruby setl foldmethod=syntax
"}}}

" System Mappings  ----------------------------------------------------------{{{
"" Clipboard
noremap YY "+y<CR>
noremap <leader>p "+gP<CR>
noremap XX "+x<CR>

cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

"" Escape insert mode
inoremap jj <ESC>
inoremap  <Esc>    <NOP>

"" join line in insert mode
inoremap JJ <c-o>J<ESC>

"" Common in insert mode
inoremap jj <ESC>
inoremap II <Esc>I
inoremap AA <Esc>A
inoremap OO <Esc>O

"inoremap CC <Esc>C
"inoremap SS <Esc>S
inoremap DD <Esc>dd
inoremap UU <Esc>u

"" Edit vim config
nmap <Leader>nn :tabedit $MYVIMRC<CR>
nmap <Leader>nr :so $MYVIMRC<CR>

"" Set working directory
nnoremap <leader>. :lcd %:p:h<CR>

"" Opens an edit command with the path of the currently edited file filled in
noremap <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

"" Opens a tab edit command with the path of the currently edited file filled
noremap <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

"" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

vmap < <gv
vmap > >gv

"" Jumping
nnoremap Q <nop>
noremap H ^
noremap L g_
noremap ; :
nnoremap <Leader>d "_d
vnoremap <Leader>d "_d
" inoremap <c-f> <c-x><c-f>
noremap % v%

"" Clean search (highlight)
nnoremap <silent><esc> :nohl \| ccl<return><esc>

"" Search for visually hightlighted text
vnoremap <C-r> "0y<Esc>:%S/<C-r>0//gc<left><left><left>
vnoremap // y/<C-R>"<CR>

"" Diff
nnoremap <leader>dc :q<cr>:diffoff<cr>

"" Command line navigation
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <M-b> <S-Left>
cnoremap <M-f> <S-Right>

"" Tabs navigation
map <Leader><Tab> gt<cr>
map <Leader><S-Tab> gT<cr>
nnoremap td  :tabclose<CR>
nnoremap ts  :tab split <CR>
nnoremap <silent> <S-t> :tabnew<CR>

" Buffer navigation
nmap <leader>bn :enew<cr>
map <Tab> :bnext<cr>
map <S-Tab> :bprevious<cr>
" nmap <leader>w :bp <BAR> bd #<CR>
nmap <M-W> :BD<CR>
" noremap <leader>c :bp\|bd #<CR>
" noremap <leader>c :BD<CR>

"" Switching windows
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-k> <C-w>k
nnoremap <C-j> <C-w>j

"" Terminal
tnoremap <c-h> <c-\><c-n><c-w>h
tnoremap <c-j> <c-\><c-n><c-w>j
tnoremap <c-k> <c-\><c-n><c-w>k
tnoremap <c-l> <C-\><C-n><C-w>l
command! -nargs=* HT split | terminal <args>
command! -nargs=* VT vsplit | terminal <args>
noremap <Esc><Esc> :TermClose * bd!


" Session management
nnoremap ,so :SLoad<Space>
nnoremap ,ss :Session<Space>
nnoremap ,S :Sessions<CR>
nnoremap ,ds :SDelete<Space>
nnoremap ,sc :SQuit<CR>
"}}}

" Mappings  -----------------------------------------------------------------{{{
"" Extract
map pp <Plug>(extract-sycle)
map PP <Plug>(extract-Sycle)
map <c-c> <Plug>(extract-cycle)
nmap p <Plug>(extract-put)
nmap P <Plug>(extract-Put)
nmap <leader>p :ExtractPin<cr>
nmap <leader>P :ExtractUnPin<cr>
vmap p <Plug>(extract-put)
vmap P <Plug>(extract-Put)
imap <c-v> <Plug>(extract-completeList)
imap <c-s> <Plug>(extract-cycle)

"" vim-http-client
autocmd FileType rest map <buffer> <cr> :HTTPClientDoRequest<cr>

"" Tagbar
nmap <leader>] :TagbarToggle<CR>

"" vim-mundo
nmap <c-]> :MundoToggle<cr>

"" vim-jsbeautify
" map <c-f> :call JsBeautify()<cr>
" or
" autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
" autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
" autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

"" GoogleSearch
command! -nargs=1 Google call GoogleSearch(<f-args>)
vnoremap <leader>g/ "gy<Esc> :call GoogleSearch()<CR>

"" Git
noremap <Leader>gl :Glog<CR>
" noremap <Leader>ga :Gwrite<CR>
" noremap <Leader>ge :Gedit<CR>
" noremap <Leader>gc :Gcommit<CR>
" noremap <Leader>gsh :Gpush<CR>
" noremap <Leader>gll :Gpull<CR>
noremap <Leader>gs :Gstatus<CR>
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gd :Gvdiff<CR>
" noremap <Leader>gr :Gremove<CR>

if has('macunix')
    " pbcopy for OSX copy/paste
    vmap <C-x> :!pbcopy<CR>
    vmap <C-c> :w !pbcopy<CR><CR>
endif

"" Open current line on GitHub
nnoremap <Leader>go :.Gbrowse<CR>

"" NERDTree
nmap <leader>[ :NERDTreeToggle<cr>
nmap <leader>nf :NERDTreeFind<CR>

"" vim-expand-regon
vmap v  <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

"" Splitjoin plugin keybinding
nmap sj :SplitjoinSplit<cr> nmap sk :SplitjoinJoin<cr>

"" EasyAlign
vmap <cr> <Plug>(EasyAlign)

"" Neoterm
nnoremap <silent> ,sf :TREPLSendFile<cr>
nnoremap <silent> ,sl :TREPLSendLine<cr>
vnoremap <silent> ,s  :TREPLSendSelection<cr>
nnoremap <silent> ,cl :call neoterm#clear()<cr>
nnoremap <silent> ,k  :call neoterm#kill()<cr>
nnoremap <silent> ,c  :call neoterm#close()<cr>

"" Goyo (distraction-free)
nnoremap <Leader>gg :Goyo<CR>

"" IndentLine
noremap <Leader>i :IndentLinesToggle<CR>

"" FZF
imap <c-f><c-k> <plug>(fzf-complete-word)
imap <c-f><c-f> <plug>(fzf-complete-path)
imap <c-f><c-j> <plug>(fzf-complete-file-ag)
imap <c-f><c-l> <plug>(fzf-complete-line)
nnoremap <silent><c-p> :exe 'Files' . <SID>fzf_root()<CR>
nnoremap <silent><Leader>l :Lines<CR>
" Search for word under the cursor
nnoremap <silent><leader>fl :Lines <C-r>=expand('<cword>')<CR><CR>
" nnoremap <silent><leader>// :Find <C-r>=expand('<cword>')<CR><CR>
nnoremap <silent><leader>fw :Find <C-r>=expand('<cword>')<CR><CR>
noremap <leader>f :Find<space>
" Search for visual selected text
vnoremap <silent><leader>f y:Lines <C-R><C-R>"<CR>
nnoremap <silent> <leader><cr> :Buffers<CR>
nnoremap <silent> <leader>a :Windows<CR>
nnoremap <silent> <leader>o :BTags<CR>
nnoremap <silent> <leader>O :Tags<CR>
nnoremap <silent> <leader>h :History<CR>
nnoremap <silent> <leader>gl :Commits<CR>
nnoremap <silent> <leader>ga :BCommits<CR>
nnoremap <silent> <leader>m :Marks<CR>
nnoremap q/ :QHist<CR>
nnoremap q: :CmdHist<CR>

"" EasyMotion
nmap s  <Plug>(easymotion-overwin-f)
vmap s <Plug>(easymotion-bd-f)
nmap t <Plug>(easymotion-t2)
"" Ale
nmap <silent> <leader>aj :ALENext<cr>
nmap <silent> <leader>ak :ALEPrevious<cr>
nmap <silent> <leader>a? :ALEDetail<cr>
nmap <Leader>ta :ALEToggle<CR>
"}}}

" Yaml  ---------------------------------------------------------------------{{{
autocmd FileType yaml,yml setlocal ts=2 sts=2 sw=2 expandtab
"}}}

" Php  ----------------------------------------------------------------------{{{
augroup filetypedetect
    au BufRead,BufNewFile *.inc set filetype=php
augroup END
"}}}

" Ruby  ---------------------------------------------------------------------{{{
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

augroup vimrc-ruby
    autocmd!
    autocmd BufNewFile,BufRead *.rb,*.rbw,*.gemspec setlocal filetype=ruby
    autocmd FileType ruby set tabstop=2|set shiftwidth=2|set expandtab softtabstop=2 smartindent
augroup END

let g:tagbar_type_ruby = {
            \ 'kinds' : [
            \ 'm:modules',
            \ 'c:classes',
            \ 'd:describes',
            \ 'C:contexts',
            \ 'f:methods',
            \ 'F:singleton methods'
            \ ]
            \ }

nmap <silent> ,t :TestNearest<CR>
nmap <silent> ,tt :TestFile<CR>
nmap <silent> ,ta :TestSuite<CR>
nmap <silent> ,l :TestLast<CR>
nmap <silent> ,g :TestVisit<CR>

command! Troutes :T bundle exec rake routes
command! Rc :T bundle exec rails c
command! -nargs=+ Troute :T bundle exec rake routes | grep <args>
command! Tmigrate :T bundle exec rake db:migrate
command! Tseed :T bundle exec rake db:reset && rake db:seed_fu
"}}}

" Docker --------------------------------------------------------------------{{{
command! -nargs=+ D :T docker <args>
command! -nargs=+ Drun :T docker run  <args>
"}}}

" CSS -----------------------------------------------------------------------{{{
augroup vimrc-css
    autocmd!
    autocmd FileType stylus set noexpandtab sw=2 tabstop=2
augroup END
"}}}

" Javascript  ---------------------------------------------------------------{{{
let g:javascript_enable_domhtmlcss = 1

" vim-javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0

augroup vimrc-javascript
    autocmd!
    autocmd FileType javascript set tabstop=4|set shiftwidth=4|set expandtab softtabstop=4 smartindent
augroup END

augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax
augroup END
" vim-jsx
"let g:jsx_pragma_required = 1
"}}}

" HTML  ---------------------------------------------------------------------{{{
autocmd Filetype html setlocal ts=2 sw=2 expandtab
"}}}

" XML/SVG  ------------------------------------------------------------------{{{
au filetype xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null
autocmd bufnewfile,bufread *.slim set ft=slim
autocmd bufnewfile,bufread *.svg set ft=xml
"}}}

" Settings  -----------------------------------------------------------------{{{
"NERDCommenter
let g:NERDCustomDelimiters = { 'javascript.jsx': { 'left': '//', 'leftAlt': '{/*', 'rightAlt': '*/}' } }

"" vim-blockle
let g:blockle_mapping = '<leader>rb'

"" vim-mundo
let g:mundo_right = 1
set undofile
set undodir=~/.config/nvim/undo/

"" vim-format
let no_formating_blacklist = ["","stylus"] " #TODO
autocmd BufWrite * if index(no_formating_blacklist, &ft) < 0 | :Autoformat
autocmd FileType yml,yaml,slim,notes,csv,snippets let b:autoformat_autoindent=0 " #TODO
" let g:autoformat_autoindent = 0
" let g:autoformat_retab = 0
" let g:autoformat_remove_trailing_spaces = 0

"" Extract
let g:extract_maxCount = 25
let g:extract_useDefaultMappings = 0

"" fzf-session
let g:fzf_session_path = "~/.config/nvim/session"

"" Vim Translator
let g:translate_cmd = 'trans -b -t sr-Latn+en'
vmap T   <Plug>Translate
vmap R   <Plug>TranslateReplace
command! -nargs=1 Trans call translator#translate_word(<f-args>)

"" vim-test
let test#strategy = {
            \'nearest': 'neovim',
            \'file':    'neovim',
            \'suite':   'neovim',
            \}
" let g:test#preserve_screen = 1

"" Gitgutter
let g:gitgutter_max_signs=9999

"" Vim Airline
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1
let g:airline_powerline_fonts   = 1
let g:airline_theme='one'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
if !exists('g:airline_powerline_fonts')
    let g:airline#extensions#tabline#left_sep = ' '
    let g:airline#extensions#tabline#left_alt_sep = '|'
    let g:airline_left_sep          = '▶'
    let g:airline_left_alt_sep      = '»'
    let g:airline_right_sep         = '◀'
    let g:airline_right_alt_sep     = '«'
    let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
    let g:airline#extensions#readonly#symbol   = '⊘'
    let g:airline#extensions#linecolumn#prefix = '¶'
    let g:airline#extensions#paste#symbol      = 'ρ'
    let g:airline_symbols.linenr    = '␊'
    let g:airline_symbols.branch    = '⎇'
    let g:airline_symbols.paste     = 'ρ'
    let g:airline_symbols.paste     = 'Þ'
    let g:airline_symbols.paste     = '∥'
    let g:airline_symbols.whitespace = 'Ξ'
else
    let g:airline#extensions#tabline#left_sep = ''
    let g:airline#extensions#tabline#left_alt_sep = ''
    " powerline symbols
    let g:airline_left_sep = ''
    let g:airline_left_alt_sep = ''
    let g:airline_right_sep = ''
    let g:airline_right_alt_sep = ''
    let g:airline_symbols.branch = ''
    let g:airline_symbols.readonly = ''
    let g:airline_symbols.linenr = ''
endif

"" NERDTree configuration
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\~$', '\.swp$', '^\.git$','^node_modules$', '^\.DS_Store$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 50
let g:NERDTreeShowHidden=1
let g:NERDTreeQuitOnOpen=1
let g:NERDTreeHijackNetrw=0
let g:NERDTreeWinSize=45
let g:NERDTreeAutoDeleteBuffer=1
let g:WebDevIconsOS = 'Darwin'
let g:NERDTreeMinimalUI=1
let g:NERDTreeCascadeSingleChildDir=0
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name

"" Deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#auto_complete_start_length = 1
let g:deoplete#enable_refresh_always = 1
let g:deoplete#max_list = 1000
set completeopt=menuone,preview
let g:SuperTabClosePreviewOnPopupClose = 1 " close the preview window when you're not using it
let g:UltiSnipsExpandTrigger="<c-j>"
let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = 0
let g:deoplete#omni#functions = {}
let g:deoplete#omni#functions.javascript = [
            \ 'tern#Complete'
            \]
let g:tern#command = ['tern']
let g:tern#arguments = ['--persistent']
"Add extra filetypes
let g:deoplete#sources#ternjs#filetypes = [
            \ 'jsx',
            \ 'javascript.jsx',
            \ 'vue'
            \ ]
"" ultisnips
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
let g:UltiSnipsEditSplit="vertical"
autocmd FileType js,javascript  UltiSnipsAddFiletypes html
autocmd FileType html UltiSnipsAddFiletypes javascript
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

"" vim-notes
let g:notes_directories = ['~/Google\ Drive/Notes/']

"" SuperTab
let g:SuperTabDefaultCompletionType = "<c-n>"

"" Neoterm
let g:neoterm_default_mod = 'rightbelow'
let g:neoterm_automap_keys = ',tt'
let g:neoterm_size = 15
let g:neoterm_open_in_all_tabs = 0
let g:neoterm_autoinsert = 1

"" Limelight
" let g:limelight_conceal_guifg = 'DarkGray'

"" Goyo (distraction-free)
let g:goyo_width="80%"
function! s:goyo_enter()
    set scrolloff=999
endfunction
function! s:goyo_leave()
    set scrolloff=5
endfunction

"" IndentLine
let g:indentLine_enabled = 0
let g:indentLine_color_dark = 1

"" Emmet
let g:user_emmet_expandabbr_key='<Tab>'

"" FZF
let $FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*" --glob "!node_modules/*"'
let g:fzf_action = {
            \ 'ctrl-q': 'wall | BD ',
            \ 'ctrl-t': 'tab split',
            \ 'ctrl-x': 'split',
            \ 'ctrl-v': 'vsplit' }

let g:fzf_colors =
            \ { "fg":      ["fg", "Normal"],
            \ "bg":      ["bg", "Normal"],
            \ "hl":      ["fg", "IncSearch"],
            \ "fg+":     ["fg", "CursorLine", "CursorColumn", "Normal"],
            \ "bg+":     ["bg", "CursorLine", "CursorColumn"],
            \ "hl+":     ["fg", "IncSearch"],
            \ "info":    ["fg", "IncSearch"],
            \ "border":  ["fg", "Ignore"],
            \ "prompt":  ["fg", "Conditional"],
            \ "pointer": ["fg", "IncSearch"],
            \ "marker":  ["fg", "IncSewarch"],
            \ "spinner": ["fg", "IncSearch"],
            \ "header":  ["fg", "IncSearch"] }

let g:fzf_files_options =
            \ '--preview "highlight -O ansi {} --force || cat {}" '.
            \ '--bind down:preview-down,up:preview-up '.
            \ '--preview-window "right:50%:hidden" --bind "?:toggle-preview"'
command! CmdHist call fzf#vim#command_history({'down': '40'}) " Better command history with q:
command! QHist call fzf#vim#search_history({'down': '40'}) " Better search history
command! -bang -nargs=* Find
            \ call fzf#vim#grep(
            \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
            \   <bang>0 ? fzf#vim#with_preview('up:60%')
            \           : fzf#vim#with_preview('right:50%:hidden', '?'),
            \   <bang>0)
"" EasyMotion
let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_smartcase = 1

"" Ale
let g:ale_fix_on_save = 1
let g:ale_cache_executable_check_failures = 1
let g:ale_set_highlights = 1
let g:ale_statusline_format = ['E•%d', 'W•%d', 'OK']
" let g:ale_echo_cursor = 1
let g:ale_echo_msg_error_str = '✖ Error'
let g:ale_echo_msg_warning_str = '⚠ Warning'
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_save = 1
let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = 0
let g:ale_completion_enabled = 0

"}}}

" Autocmd Rules  ------------------------------------------------------------{{{
au BufNewFile,BufRead *.rest set ft=rest " vim-http-client
command! DeleteHiddenBuffers execute "call DeleteHiddenBuffers()"
augroup terminal
    autocmd TermOpen * setlocal nospell
    autocmd TermClose * if getline('$') == '[Process exited 0]' | close | endif
    " autocmd TermClose * bd!
augroup END

"" The PC is fast enough, do syntax highlight syncing from start
" augroup vimrc-sync-fromstart
"     autocmd!
"     autocmd BufEnter * :syntax sync fromstart
" augroup END

"" txt
augroup vimrc-wrapping
    autocmd!
    autocmd BufRead,BufNewFile *.txt call s:setupWrapping()
augroup END

augroup vimrc-javascript
    autocmd!
    autocmd FileType javascript set tabstop=4|set shiftwidth=4|set expandtab softtabstop=4 smartindent
augroup END

augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax
augroup END

"augroup vimrs-stylus
"au!
"au FileType stylus  set tabstop=2 | set shiftwidth=2
"augroup END
"}}}

" Functions  ----------------------------------------------------------------{{{
function! DeleteHiddenBuffers()
    let tpbl=[]
    call map(range(1, tabpagenr('$')), 'extend(tpbl, tabpagebuflist(v:val))')
    for buf in filter(range(1, bufnr('$')), 'bufexists(v:val) && index(tpbl, v:val)==-1')
        silent execute 'bwipeout' buf
    endfor
endfunction

if !exists('s:fzf_root')
    fun! s:fzf_root()
        let path = finddir(".git", expand("%:p:h").";")
        return fnamemodify(substitute(path, ".git", "", ""), ":p:h")
    endfun
endif

if !exists('*s:setupWrapping')
    function s:setupWrapping()
        set wrap
        set wm=2
        set textwidth=79
    endfunction
endif

if !exists('*GoogleSearch')
    function GoogleSearch(...)
        silent! exec "!open \"http://google.com/search?q=" . (a:0 > 0 ? a:1 : @g) . "\" > /dev/null"
        redraw!
    endfunction
endif
"}}}

" Hacks and Fixes  ----------------------------------------------------------{{{
" Disable Deoplete when selecting multiple cursors starts
function! Multiple_cursors_before()
    if exists('*deoplete#disable')
        exe 'call deoplete#disable()'
    elseif exists(':NeoCompleteLock') == 2
        exe 'NeoCompleteLock'
    endif
endfunction

" Enable Deoplete when selecting multiple cursors ends
function! Multiple_cursors_after()
    if exists('*deoplete#enable')
        exe 'call deoplete#enable()'
    elseif exists(':NeoCompleteUnlock') == 2
        exe 'NeoCompleteUnlock'
    endif
endfunction
"}}}
