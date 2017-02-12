" General {{{
" =============================================
" set guifont=Monaco:h12
" set guifont=Monaco\ for\ Powerline:h12:w

map <leader>init :tabe ~/.config/nvim/init.vim<cr>
" autocmd bufwritepost init.vim,local_init.vim,local_bundles.vim source $MYVIMRC
set guifont=Monaco\ for\ Powerline\ Nerd\ Font\ Complete:h12
set relativenumber number
" File
set autoread
set undofile
set undodir="$HOME/.config/nvim/undo"
" split
set splitbelow
set splitright
set nowrap
" Spelling
set spell spelllang=en_us
augroup terminal
	autocmd TermOpen * setlocal nospell
augroup END
" color
colorscheme  base16-twilight
if has("termguicolors")
	set termguicolors
endif

let g:terminal_color_0 = "#464b50"
let g:terminal_color_1 = "#8f9d6a"
let g:terminal_color_2 = "#7587a6"
let g:terminal_color_3 = "#9b859d"
let g:terminal_color_4 = "#5f5a60"
let g:terminal_color_5 = "#cf6a4c"
let g:terminal_color_6 = "#c3c3c3"
let g:terminal_color_7 = "#ffffff"
let g:terminal_color_8 = "#323537"
let g:terminal_color_9 = "#cda869"
let g:terminal_color_10 = "#f9ee98"
let g:terminal_color_11 = "#7587a6"
let g:terminal_color_12 = "#afc4db"
let g:terminal_color_13 = "#7587a6"
let g:terminal_color_14 = "#9b859d"

let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
" let $NVIM_TUI_ENABLE_TRUE_COLOR=0
" Highlight characters that go over 80 columns (by drawing a border on the 81st)
if exists('+colorcolumn')
	set colorcolumn=81
endif
" Highlight color
highlight ExtraWhitespace ctermbg=red guibg=red
" Folding
set foldlevelstart=99
set foldmethod=syntax
set foldlevel=1
autocmd FileType .vim set foldmethod=marker
" }}}

" Code formatting {{{
" =============================================
au filetype xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null
autocmd bufnewfile,bufread *.slim set ft=slim
autocmd bufnewfile,bufread *.svg set ft=xml
"}}}

" Keymaps {{{
" =============================================
nnoremap Q <nop>
" Folding
nnoremap <Leader>fs :set foldmethod=syntax<CR>
nnoremap <Leader>fm :set foldmethod=marker<CR>
nnoremap <Leader>fi :set foldmethod=indent<CR>
" jump to the end and beginning of line
noremap H ^
noremap L g_
" noremap J 5j
" noremap K 5k

noremap ; :
nnoremap <Leader>d "_d
vnoremap <Leader>d "_d
" inoremap <c-f> <c-x><c-f>

"jump to a matching opening or closing parenthesis and select
noremap % v%
" Edit vim config
nmap     <Leader>nn :tabedit $MYVIMRC<CR>

" clear higlight
nnoremap <esc> :noh<return><esc>

" search for visually hightlighted text
vnoremap <C-r> "0y<Esc>:%s/<C-r>0//g<left><left>
vnoremap // y/<C-R>"<CR>

" clear white space
nnoremap <Leader>fw :FixWhitespace<return><esc>

"" Clean search (highlight)
nnoremap <esc> :noh<return><esc>

" command line navigation
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <M-b> <S-Left>
cnoremap <M-f> <S-Right>

"tabs navigation
map <Leader><Tab> gt<cr>
map <Leader><S-Tab> gT<cr>
" nnoremap th  :tabfirst<CR>
" nnoremap tj  :tabnext<CR>
" nnoremap tk  :tabprev<CR>
" nnoremap tl  :tablast<CR>
" nnoremap tt  :tabedit<Space>
" nnoremap tn  :tabnext<Space>
" nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>
nnoremap ts  :tab split <CR>

" Buffer navigation
nmap <leader>bn :enew<cr>
map <Tab> :bnext<cr>
map <S-Tab> :bprevious<cr>
nmap bq :bp <BAR> bd #<CR>
nmap bl :ls<CR>
" nmap <silent> <leader>c :bp|bd #<CR>
noremap <leader>c :bp\|bd #<CR>

" Rails commands
command! Troutes :T rake routes
command! -nargs=+ Troute :T rake routes | grep <args>
command! Tmigrate :T rake db:migrate

" cursor
nmap <silent> <Leader>cl <Esc>:set                  cursorline! <CR>a
nmap <silent> <Leader>cc      :set   cursorcolumn!              <CR>
nmap <silent> <Leader>cn      :set nocursorcolumn nocursorline  <CR>

" Diff
nnoremap <leader>dc :q<cr>:diffoff<cr>

" nvim specific
" **************************************************************************
" move from the neovim terminal window to somewhere else
tnoremap <c-h> <c-\><c-n><c-w>h
tnoremap <c-j> <c-\><c-n><c-w>j
tnoremap <c-k> <c-\><c-n><c-w>k
tnoremap <c-l> <C-\><C-n><C-w>l
" tnoremap <Esc><Esc> <C-\><C-n>
"}}}

" Plugns {{{
" =============================================
"" Git
noremap <Leader>gl :Glog<CR>

" Vim Airline
" ------------------------------------------------------------------------------
let g:airline_powerline_fonts   = 1
let g:airline_theme='base16'
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

" Nerdtree
" -----------------------------------------------------------------------------
" autocmd VimEnter * NERDTree | wincmd p
nmap <leader>[ :NERDTreeToggle<cr>
nmap <leader>nf :NERDTreeFind<CR>
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
" Tagbar
" ------------------------------------------------------------------------------
nmap <Leader>] :TagbarToggle<CR>

" vim-expand-regon
" ------------------------------------------------------------------------------
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" Undotree
" ------------------------------------------------------------------------------
" nmap <Leader>hh :UndotreeToggle<CR>

" Splitjoin plugin keybinding
" ------------------------------------------------------------------------------
nmap sj :SplitjoinSplit<cr> nmap sk :SplitjoinJoin<cr>

" Deoplete
" ------------------------------------------------------------------------------
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#auto_complete_start_length = 1
let g:deoplete#enable_refresh_always = 1
let g:deoplete#max_list = 1000
set completeopt=menuone,preview
" close the preview window when you're not using it
let g:SuperTabClosePreviewOnPopupClose = 1
let g:UltiSnipsExpandTrigger="<c-j>"
let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = 0
" ultisnips
let g:UltiSnipsExpandTrigger="<C-j>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
let g:UltiSnipsEditSplit="vertical"
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" vim-notes
" ------------------------------------------------------------------------------
let g:notes_directories = ['~/Google\ Drive/Notes/']

" SuperTab
" ------------------------------------------------------------------------------
let g:SuperTabDefaultCompletionType = "<c-n>"

" EasyAlign
" ------------------------------------------------------------------------------
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Neoterm
" ------------------------------------------------------------------------------
let g:neoterm_position = 'horizontal'
let g:neoterm_automap_keys = ',tt'
nnoremap <silent> <Leader>tf :TREPLSendFile<cr>
nnoremap <silent> <Leader>ts :TREPLSend<cr>
vnoremap <silent> <Leader>ts :TREPLSend<cr>
" run set test lib
nnoremap <silent> <Leader>rt :call neoterm#test#run('all')<cr>
nnoremap <silent> <Leader>rf :call neoterm#test#run('file')<cr>
nnoremap <silent> <Leader>rn :call neoterm#test#run('current')<cr>
nnoremap <silent> <Leader>tl :call neoterm#clear()<cr>
nnoremap <silent> <Leader>tc :call neoterm#kill()<cr>
nnoremap <silent> <Leader>th :call neoterm#close()<cr>

" Limelight
" ------------------------------------------------------------------------------
" let g:limelight_conceal_guifg = 'DarkGray'
" nmap <Leader>l <Plug>(Limelight)
" xmap <Leader>l <Plug>(Limelight)

" Goyo (distraction-free)
" ------------------------------------------------------------------------------
let g:goyo_width="80%"
nnoremap <Leader>g :Goyo<CR>
function! s:goyo_enter()
	set scrolloff=999
endfunction
function! s:goyo_leave()
	set scrolloff=5
endfunction

" IndentLine
" ------------------------------------------------------------------------------
let g:indentLine_enabled = 0
let g:indentLine_color_dark = 1
nmap <Leader>i :IndentLinesToggle<CR>

" Syntastic
" ------------------------------------------------------------------------------
let g:syntastic_sass_checkers=["sasslint"]
let g:syntastic_scss_checkers=["sasslint"]
let g:ruby_host_prog = '/home/rotsen/.rubies/ruby-2.3.1/bin/ruby'
let g:syntastic_svg_checkers = []

"" ctrlp.vim
set splitright
" let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
" let g:ctrlp_map = '<C-p>'
" let g:ctrlp_custom_ignore = {
"   \ 'dir':  '\v[\/](\.(git|hg|svn|node_modules|target|dist)|\_site|(\.(swp|tox|ico|git|hg|svn))$',
"   \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
" \}

" nmap bl :CtrlPBuffer<cr>
" nmap <leader>bm :CtrlPMixed<cr>
" nmap <leader>bs :CtrlPMRU<cr>

" Emmet
" ------------------------------------------------------------------------------
let g:user_emmet_expandabbr_key='<Tab>'
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

" Neoformat
" ------------------------------------------------------------------------------
noremap <leader><leader>f :Neoformat<CR>
" FZF
let g:fzf_action = {
			\ 'ctrl-t': 'tab split',
			\ 'ctrl-x': 'split',
			\ 'ctrl-v': 'vsplit' }

imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

fun! s:fzf_root()
	let path = finddir(".git", expand("%:p:h").";")
	return fnamemodify(substitute(path, ".git", "", ""), ":p:h")
endfun
nnoremap <silent><c-p> :exe 'Files ' . <SID>fzf_root()<CR>
nnoremap <silent><leader>/ :Lines<CR>
" Search for word under the cursor
nnoremap <silent><leader>// :Lines <C-r>=expand('<cword>')<CR><CR>
" Search for visual selected text
vnoremap <silent><leader>/ y:Lines <C-R><C-R>"<CR>

nnoremap <silent> <leader>a :Buffers<CR>
nnoremap <silent> <leader>A :Windows<CR>
nnoremap <silent> <leader>o :BTags<CR>
nnoremap <silent> <leader>O :Tags<CR>
nnoremap <silent> <leader>? :History<CR>
" nnoremap <silent> <leader>. :AgIn
nnoremap <silent> <leader>gl :Commits<CR>
nnoremap <silent> <leader>ga :BCommits<CR>

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

" let g:fzf_files_options =
" 			\ '--preview "(highlight -O ansi {} --force || cat {}) 2> /dev/null | head -'.&lines.'" '.
" 			\ '--preview-window "right:50%:hidden" --bind "?:toggle-preview"'

let g:fzf_files_options =
			\ '--preview "(highlight -O ansi {} --force || cat {}) 2> /dev/null | head -'.&lines.'" '.
			\ '--preview-window "right:50%:hidden" --bind "?:toggle-preview"'

" let g:fzf_files_options =
"             \ '--preview "(coderay {} || cat {}) 2> /dev/null | head -'.&lines.'" --bind alt-j:preview-down,alt-k:preview-up'

" Better command history with q:
command! CmdHist call fzf#vim#command_history({'down': '40'})
nnoremap q: :CmdHist<CR>
" Better search history
command! QHist call fzf#vim#search_history({'down': '40'})
nnoremap q/ :QHist<CR>

" EasyMotion
" ------------------------------------------------------------------------------
let g:EasyMotion_do_mapping = 0 " Disable default mappings
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-overwin-f2)
" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1
" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" Neoformat
" ------------------------------------------------------------------------------
noremap <leader>f :Neoformat<CR>
" }}}
"}}}
