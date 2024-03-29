""" Basic Settings
set nocompatible    " do not compatible with vi
set encoding=utf-8  " set encoding to utf-8
set t_Co=256		" enable all colors
syntax on			" show syntax in color
set number			" show numbers on left
set relativenumber	" using relative number of lines
set tabstop=4		" a tab is four spaces
set shiftwidth=4    " an indent is a single tab
set expandtab       " use space when insert with tab
set smarttab        " auto indent
set showmatch		" show matching parenthesis
set hlsearch        " highlight search terms
set incsearch       " show search matches as you type
set bs=2            " fix back space
set clipboard=unnamed		" copy to clipboard
" setlocal foldmethod=indent 	" set fold method to indent
set foldlevel=2    " do not fold everything by default

"toggle paste mode
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

"highlight cursorline
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40

" set Vim-specific sequences for RGB colors
set termguicolors
set background=dark
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" cursor only for iterm2 on mac, adjust for tmux
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
  let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  let &t_SR = "\<Esc>]50;CursorShape=2\x7"
endif


""" Leaders
let mapleader = ";"
let maplocalleader = "c"


""" Mappings
" use ff to fold and unfold
nnoremap ff za
" use space to select a word
nnoremap <space> viw
" use u to convert the text to uppercase
vnoremap u U
" use Ctrl+d to remove current line in insert mode
inoremap <c-d> <esc>ddi
" use Ctrl+u to convert the current word to uppercase in insert mode
inoremap <c-u> <esc>viwUi
" use Ctrl+u to convert the current word to uppercase in normal mode
nnoremap <c-u> viwU
" use backspace to remove current word in normal mode
nnoremap <BS> diw
" use 9 to navigate to the end of a line
nnoremap 9 $
" use mapleader + v to split screen, and lh for move
nnoremap <Leader>v <c-w>v
nnoremap <Leader>l <c-w>l
nnoremap <Leader>h <c-w>h
" edit my vimrc file in a split
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>eh :split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
" easiser way to save and quit a file
nnoremap zz ZZ
" easiser way to force quit a file
nnoremap qq :qa!<cr>
" map jk to esc
inoremap jk <esc>
" map W to :w
nnoremap W :w<cr>
" surround the word in quotes
nnoremap " viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel
vnoremap <leader>" <esc>`>a"<esc>`<i"<esc>`>l
vnoremap <leader>' <esc>`>a'<esc>`<i'<esc>`>l
" use p as in parentheses
onoremap p i(
" use r as to return
onoremap r /return<cr>
" use in/il as in next/last parentheses
onoremap in( :<c-u>normal! f(vi(<cr>
onoremap il( :<c-u>normal! F)vi(<cr>
onoremap in[ :<c-u>normal! f[vi[<cr>
onoremap il[ :<c-u>normal! F]vi[<cr>
onoremap in{ :<c-u>normal! f{vi{<cr>
onoremap il{ :<c-u>normal! F}vi{<cr>


""" abbreviations
iabbrev ff function
iabbrev rr return
"" file type specific abbrevation
autocmd FileType javascript :iabbrev <buffer> iff if ()<left>
autocmd FileType php        :iabbrev <buffer> iff if () {}<left><left><left>



""" Plugins
" begin the section for plugins and put them in plugged
call plug#begin('~/.vim/plugged')
" for file system visualization
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin' , { 'on':  'NERDTreeToggle' }
" color scheme NeoSolarized
Plug 'iCyMind/NeoSolarized'
" vim-airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" vim-fugitive
Plug 'tpope/vim-fugitive'
" show +-~ for git
Plug 'airblade/vim-gitgutter'
" syntastic
Plug 'scrooloose/syntastic'
" surround vim
Plug 'tpope/vim-surround'
" dotted indent lines
Plug 'Yggdroot/indentLine'
" php doc comment
Plug 'mralejandro/vim-phpdoc'
" enable fzf
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
" python flake8
Plug 'nvie/vim-flake8'
" easy motion
Plug 'easymotion/vim-easymotion'
" tComment
Plug 'tomtom/tcomment_vim'
" tabular
Plug 'godlygeek/tabular'
" generate pairs
Plug 'jiangmiao/auto-pairs'
" emmet for html
Plug 'mattn/emmet-vim'
" pep8 formatter
" requires `pip install yapf`
Plug 'google/yapf', { 'rtp': 'plugins/vim', 'for': 'python' }
" youcompleteme
Plug 'valloric/youcompleteme'
" ctrlp
Plug 'kien/ctrlp.vim'
" colorized parentheses
Plug 'luochen1990/rainbow'
" simple fold
Plug 'tmhedberg/simpylfold'
" mutli line edit
Plug 'terryma/vim-multiple-cursors'
" file operation
Plug 'tpope/vim-eunuch'
" nerd tree git integration
Plug 'Xuyuanp/nerdtree-git-plugin'
" Initialize plugin system
call plug#end()
" do a :PlugInstall"


""" Plugin Settings
"" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:syntastic_php_phpcs_exec = '~/.vim/custom/bin/phpcs'
let g:syntastic_php_phpcs_args = '--standard=psr2'
let g:syntastic_php_phpmd_exec = '~/.vim/custom/bin/phpmd'
let g:syntastic_php_phpmd_post_args = 'cleancode,codesize,controversial,design,unusedcode'
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_html_checkers = []  "turn off html syntax checker
let g:syntastic_scala_checkers = []  "turn off scala syntax checker

"" Set up tabularize
inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a
function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction

"" NERD Tree
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
nnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <Leader>f :NERDTreeFind<CR>

"" easymotion
map e <Plug>(easymotion-prefix)
nmap s <Plug>(easymotion-s2)
nmap ef H:call EasyMotion#WB(0, 0)<CR>

"" phpdoc
nnoremap <Leader>d :call PhpDocPasteComment()<CR>

"" yapf
nnoremap F :YAPF<cr>
vnoremap F :'<,'>YAPF<cr>

"" neosolarized colors
colorscheme NeoSolarized

"" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"" pdb
nnoremap <Leader>p :call InsertPdb()<CR>

function! InsertPdb()
  let trace = expand("import pdb; pdb.set_trace()")
  execute "normal o".trace
endfunction

"" rainbow
let g:rainbow_active = 1
let g:rainbow_conf = {
    \    'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
    \    'ctermfgs': ['grey', 'lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
    \    'operators': '_,_',
    \    'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
    \    'separately': {
    \        '*': {},
    \        'tex': {
    \            'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
    \        },
    \        'lisp': {
    \            'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
    \        },
    \        'vim': {
    \            'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
    \        },
    \        'html': {
    \            'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
    \        },
    \        'css': 0,
    \    }
    \}

"" Simple fold
let g:SimpylFold_docstring_preview = 1

"" vim airline
let g:airline_solarized_bg='dark'

"" open nerd tree when no file argument
function! StartUp()
    if !argc() && !exists("s:std_in")
        NERDTree
    end
    if argc() && isdirectory(argv()[0]) && !exists("s:std_in")
        exe 'NERDTree' argv()[0]
        wincmd p
        ene
    end
endfunction

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * call StartUp()

""" auto command
" filetype specific comment out
augroup filetype_html
	autocmd!
	" fold by tag
	autocmd FileType html nnoremap <buffer> <localleader>f Vatzf
	" reindent html file before write or when read
	" autocmd BufWritePre,Bufread *.html :normal gg=G
	" turn off line wrap for html
	autocmd BufNewFile,BufRead *.html setlocal nowrap
    " for html files, 2 spaces
    autocmd Filetype html setlocal ts=2 sw=2 expandtab
    autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
    autocmd Filetype typescript setlocal ts=2 sw=2 expandtab
    autocmd Filetype javascript setlocal ts=2 sw=2 expandtab
augroup END
