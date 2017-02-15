"     /\   | |    | |                      | |            \ \    / /        (_)
"    /  \  | | ___| | _____  __ _ _ __   __| | __ _ _ __   \ \  / /   _  ___ _  ___
"   / /\ \ | |/ _ \ |/ / __|/ _` | '_ \ / _` |/ _` | '__|   \ \/ / | | |/ __| |/ __|
"  / ____ \| |  __/   <\__ \ (_| | | | | (_| | (_| | |       \  /| |_| | (__| | (__
" /_/    \_\_|\___|_|\_\___/\__,_|_| |_|\__,_|\__,_|_|        \/  \__,_|\___|_|\___|
"
" Author: Aleksandar Vucic
" repo  : https://github.com/avstudio/dotfiles/

" Core  ---------------------------------------------------------------------{{{
if has('vim_starting')
    set nocompatible               " Be iMproved
endif

let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')

if !filereadable(vimplug_exists)
    echo "Installing Vim-Plug..."
    echo ""
    silent !\curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    let g:not_finish_vimplug = "yes"

    autocmd VimEnter * PlugInstall
endif

call plug#begin(expand('~/.config/nvim/plugged'))

" General {{{
Plug 'sickill/vim-pasta' " Improve paste
Plug 'Raimondi/delimitMate'
Plug 'sheerun/vim-polyglot'
Plug 'editorconfig/editorconfig-vim' " Conventions for vim
Plug 'kassio/neoterm'
"}}}

" Testing {{{
Plug 'tpope/vim-dispatch'
Plug 'janko-m/vim-test'
"}}}

" Vim Session {{{
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
"}}}

" Navigation/Folding  {{{
Plug 'scrooloose/nerdtree'
Plug 'EvanDotPro/nerdtree-symlink'
Plug 'ivalkeen/nerdtree-execute'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-unimpaired' " Navigate throught quicklist
Plug 'Lokaltog/vim-easymotion'
Plug 'ervandew/supertab'
Plug 'mbbill/undotree'
Plug 'Konfekt/FastFold'
"}}}

" Auto complete  {{{
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern','for': ['javascript', 'javascript.jsx']  }
Plug 'fishbullet/deoplete-ruby',{'for': 'ruby'}
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"}}}

" Look and feel/Visual  {{{
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'chriskempson/base16-vim'
Plug 'kshenoy/vim-signature' "vim marks
Plug 'steelsojka/color_highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"}}}

" Text {{{
Plug 'tpope/vim-commentary'
Plug 'xolox/vim-notes'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/goyo.vim'  "Write free text
Plug 'tpope/vim-abolish' " text inflection and case  manipulation
Plug 'junegunn/limelight.vim' "Not destriactive sections of text
Plug 'triglav/vim-visual-increment' " Increment numbers by visual selection
Plug 'terryma/vim-expand-region'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
"}}}

" Syntax {{{
" Plug 'gcorne/vim-sass-lint'
Plug 'Yggdroot/indentLine'
Plug 'scrooloose/syntastic'
Plug 'vim-scripts/CSApprox'
Plug 'alpaca-tc/beautify.vim'
Plug 'sbdchd/neoformat'
"}}}

" Git  {{{
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim' "Browse git commits
"}}}

" Search {{{
" Plug 'vim-scripts/grep.vim'
Plug 'rking/ag.vim'
Plug 'taiansu/nerdtree-ag'
Plug 'nelstrom/vim-visual-star-search'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
"}}}

" HTML  {{{
Plug 'Valloric/MatchTagAlways'
Plug 'hail2u/vim-css3-syntax'
Plug 'gorodinskiy/vim-coloresque'
Plug 'tpope/vim-haml'
Plug 'mattn/emmet-vim'
"}}}

" CSS  {{{
Plug 'groenewege/vim-less'
"}}}

" Javascript  {{{
Plug 'jelera/vim-javascript-syntax'
"}}}

" Lisp  {{{
Plug 'vim-scripts/slimv.vim'
"}}}

" Ruby/Rails  {{{
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-projectionist'
Plug 'thoughtbot/vim-rspec'
Plug 'ecomba/vim-ruby-refactoring'
Plug 'tpope/vim-bundler'
Plug 'slim-template/vim-slim'
Plug 'bruno-/vim-ruby-fold'
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock', { 'for': 'ruby' } "Selecting ruby block
" Plug 'tpope/vim-rbenv',                           { 'for': 'ruby' }
" Plug 'vim-ruby/vim-ruby',                         { 'for': 'ruby' }
" Plug 'skalnik/vim-vroom',                         { 'for': 'ruby' }
" Plug 't9md/vim-ruby-xmpfilter',                   { 'for': 'ruby' }
" Plug 'tpope/vim-dispatch',                        { 'for': 'ruby' }
Plug 'jgdavey/vim-blockle', { 'for': 'ruby' }
Plug 'tpope/vim-endwise', { 'for': 'ruby' }
"}}}

" JSON  {{{
Plug 'tpope/vim-jdaddy' "json mappings
"}}}

call plug#end()

filetype plugin indent on
"}}}

" Basic Setup  --------------------------------------------------------------{{{
let mapleader="\<Space>"

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

"" Session management
let g:session_directory = "~/.config/nvim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1

set nobackup
" set noswapfile
"" Directories for swp files
call system('mkdir $HOME/.config/nvim/swap')
set directory=~/.config/nvim/swap//
if has('persistent_undo')
    let &undodir = expand("$HOME/.config/nvim/undo")
    set undofile
endif

autocmd BufWritePre * %s/\s\+$//e "remove white space

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

let no_buffers_menu=1

if has("termguicolors")
    set termguicolors
endif
colorscheme  base16-twilight

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

"" Highlight characters that go over 80 columns (by drawing a border on the 81st)
if exists('+colorcolumn')
    set colorcolumn=81
endif

"" Highlight color
highlight ExtraWhitespace ctermbg=red guibg=red
highlight FoldColumn guifg=Grey

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
" Space to toggle folds.
nnoremap <cr> za
vnoremap <cr> za
autocmd FileType vim setlocal foldmethod=marker
autocmd FileType vim setlocal foldlevel=0

autocmd FileType html setlocal fdl=99

autocmd FileType javascript,html,css,scss,typescript setlocal foldlevel=99
autocmd FileType css,scss,json setlocal foldmethod=marker
autocmd FileType css,scss,json setlocal foldmarker={,}

autocmd FileType coffee setl foldmethod=indent
autocmd FileType html setl foldmethod=expr
let g:xml_syntax_folding = 1
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

"" Edit vim config
nmap <Leader>nn :tabedit $MYVIMRC<CR>
nmap <Leader>nr :so $MYVIMRC<CR>

"" Set working directory
nnoremap <leader>. :lcd %:p:h<CR>

"" Opens an edit command with the path of the currently edited file filled in
noremap <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

"" Opens a tab edit command with the path of the currently edited file filled
noremap <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

"" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv

"" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

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
nnoremap <silent><esc> :noh \| ccl<return><esc>

"" Search for visually hightlighted text
vnoremap <C-r> "0y<Esc>:%s/<C-r>0//g<left><left>
vnoremap // y/<C-R>"<CR>

"" cursor
nmap <silent> <Leader>cl <Esc>:set                  cursorline! <CR>a
nmap <silent> <Leader>cc      :set   cursorcolumn!              <CR>
nmap <silent> <Leader>cn      :set nocursorcolumn nocursorline  <CR>

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
nmap bq :bp <BAR> bd #<CR>
nmap bl :ls<CR>
noremap <leader>c :bp\|bd #<CR>
noremap <leader>q :q<CR>
noremap <leader>z :bp<CR>
noremap <leader>q :bp<CR>
noremap <leader>x :bn<CR>
noremap <leader>w :bn<CR>

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
" tnoremap <Esc><Esc> <C-\><C-n>

" Session management
nnoremap <leader>so :OpenSession<Space>
nnoremap <leader>ss :SaveSession<Space>
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>
"}}}

" Mappings  -----------------------------------------------------------------{{{
"" Git
noremap <Leader>gl :Glog<CR>
noremap <Leader>ga :Gwrite<CR>
noremap <Leader>gc :Gcommit<CR>
noremap <Leader>gsh :Gpush<CR>
noremap <Leader>gll :Gpull<CR>
noremap <Leader>gs :Gstatus<CR>
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gd :Gvdiff<CR>
noremap <Leader>gr :Gremove<CR>

"" syntastic
nnoremap <leader>sc :SyntasticCheck<CR> :SyntasticToggleMode<CR>

"" Tagbar
nmap <Leader>] :TagbarToggle<CR>

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
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

"" Undotree
" nmap <Leader>hh :UndotreeToggle<CR>

"" Splitjoin plugin keybinding
nmap sj :SplitjoinSplit<cr> nmap sk :SplitjoinJoin<cr>

"" EasyAlign
vmap <Enter> <Plug>(EasyAlign) " Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
nmap ga <Plug>(EasyAlign) " Start interactive EasyAlign for a motion/text object (e.g. gaip)

"" Neoterm
nnoremap <silent> ,sf :TREPLSendFile<cr>
nnoremap <silent> ,sl :TREPLSendLine<cr>
vnoremap <silent> ,s  :TREPLSendSelection<cr>
nnoremap <silent> ,cl :call neoterm#clear()<cr>
nnoremap <silent> ,k  :call neoterm#kill()<cr>
nnoremap <silent> ,c  :call neoterm#close()<cr>

"" Limelight
" nmap <Leader>l <Plug>(Limelight)
" xmap <Leader>l <Plug>(Limelight)

"" Goyo (distraction-free)
nnoremap <Leader>g :Goyo<CR>

"" IndentLine
noremap <Leader>i :IndentLinesToggle<CR>

"" Neoformat
noremap <leader><leader>f :Neoformat<CR>

"" FZF
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)
nnoremap <silent><c-p> :exe 'Files ' . <SID>fzf_root()<CR>
nnoremap <silent><leader>/ :Lines<CR>
nnoremap <silent><leader>// :Lines <C-r>=expand('<cword>')<CR><CR> " Search for word under the cursor
vnoremap <silent><leader>/ y:Lines <C-R><C-R>"<CR> " Search for visual selected text
nnoremap <silent> <leader>a :Buffers<CR>
nnoremap <silent> <leader>A :Windows<CR>
nnoremap <silent> <leader>o :BTags<CR>
nnoremap <silent> <leader>O :Tags<CR>
nnoremap <silent> <leader>? :History<CR>
nnoremap <silent> <leader>gl :Commits<CR>
nnoremap <silent> <leader>ga :BCommits<CR>
nnoremap q/ :QHist<CR>
nnoremap q: :CmdHist<CR>

"" EasyMotion
nmap s <Plug>(easymotion-overwin-f)
nmap s <Plug>(easymotion-overwin-f2)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

"" Neoformat
noremap <leader>f :Neoformat<CR>
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

nmap <silent> ,rt :TestNearest<CR>
nmap <silent> ,rT :TestFile<CR>
nmap <silent> ,ra :TestSuite<CR>
nmap <silent> ,rl :TestLast<CR>
nmap <silent> ,rg :TestVisit<CR>

command! Troutes :T bundle exec rake routes
command! Tconsole :T bundle exec rails c
command! -nargs=+ Troute :T bundle exec rake routes | grep <args>
command! Tmigrate :T bundle exec rake db:migrate
command! Tseed :T bundle exec rake db:reset && rake db:seed_fu
"}}}

" Javascript  ---------------------------------------------------------------{{{
let g:javascript_enable_domhtmlcss = 1

" vim-javascript
augroup vimrc-javascript
  autocmd!
  autocmd FileType javascript set tabstop=4|set shiftwidth=4|set expandtab softtabstop=4 smartindent
augroup END
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
"" vim-test
let test#strategy = {
  \ 'nearest': 'neovim',
  \ 'file':    'dispatch',
  \ 'suite':   'dispatch',
  \}
let g:test#preserve_screen = 1

"" Gitgutter
let g:gitgutter_max_signs=9999

" grep.vim
" nnoremap <silent> <leader>f :Rgrep<CR>
" let Grep_Default_Options = '-IR'
" let Grep_Skip_Files = '*.log *.db'
" let Grep_Skip_Dirs = '.git node_modules'

"" The Silver Searcher
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif

"" Syntastic
let g:syntastic_always_populate_loc_list=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'
let g:syntastic_auto_loc_list=1
let g:syntastic_aggregate_errors = 1
let g:syntastic_sass_checkers=["sasslint"]
let g:syntastic_scss_checkers=["sasslint"]
let g:ruby_host_prog = '/home/rotsen/.rubies/ruby-2.3.1/bin/ruby'
let g:syntastic_svg_checkers = []
let g:syntastic_check_on_open = 0

"" Tagbar
let g:tagbar_autofocus = 1

"" Vim Airline
let g:airline_theme = 'powerlineish'
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1
let g:airline_powerline_fonts   = 1
let g:airline_theme='base16'

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
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
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

"" ultisnips
let g:UltiSnipsExpandTrigger="<C-j>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
let g:UltiSnipsEditSplit="vertical"
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

"" vim-notes
let g:notes_directories = ['~/Google\ Drive/Notes/']

"" SuperTab
let g:SuperTabDefaultCompletionType = "<c-n>"

"" Neoterm
let g:neoterm_position = 'horizontal'
let g:neoterm_automap_keys = ',tt'
let g:neoterm_size = 15

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
let g:fzf_action = {
            \ 'ctrl-t': 'tab split',
            \ 'ctrl-x': 'split',
            \ 'ctrl-v': 'vsplit' }
let g:fzf_colors =
            \ { 'fg':    ['fg', 'Normal'],
            \ 'bg':      ['bg', 'Normal'],
            \ 'hl':      ['fg', 'Comment'],
            \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
            \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
            \ 'hl+':     ['fg', 'Statement'],
            \ 'info':    ['fg', 'PreProc'],
            \ 'prompt':  ['fg', 'Conditional'],
            \ 'pointer': ['fg', 'Exception'],
            \ 'marker':  ['fg', 'Keyword'],
            \ 'spinner': ['fg', 'Label'],
            \ 'header':  ['fg', 'Comment'] }

let g:fzf_files_options =
            \ '--preview "highlight -O ansi {} --force || cat {}" '.
            \ '--bind ctrl-d:preview-down,ctrl-u:preview-up '.
            \ '--preview-window "right:50%:hidden" --bind "?:toggle-preview"'
command! CmdHist call fzf#vim#command_history({'down': '40'}) " Better command history with q:
command! QHist call fzf#vim#search_history({'down': '40'}) " Better search history

"" EasyMotion
let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_smartcase = 1
"}}}

" Autocmd Rules  ------------------------------------------------------------{{{
augroup terminal
    autocmd TermOpen * setlocal nospell
augroup END

"" The PC is fast enough, do syntax highlight syncing from start
augroup vimrc-sync-fromstart
autocmd!
autocmd BufEnter * :syntax sync fromstart
augroup END

"" Remember cursor position
augroup vimrc-remember-cursor-position
autocmd!
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

"" txt
augroup vimrc-wrapping
autocmd!
autocmd BufRead,BufNewFile *.txt call s:setupWrapping()
augroup END

set autoread
"}}}

" Functions  ----------------------------------------------------------------{{{

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
"}}}

