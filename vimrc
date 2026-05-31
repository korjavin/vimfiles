" ============================================================================
" PLUGIN MANAGER (Vundle)
"   Uses the modern Vundle API (vundle#begin / Plugin / vundle#end). The legacy
"   API (vundle#rc / Bundle) was deprecated in 2014.
"   Install (one-time):
"     git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle
"   Then open vim and run :PluginInstall
" ============================================================================
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'tomasr/molokai'
Plugin 'bogado/file-line'
Plugin 'nelstrom/vim-mac-classic-theme'
Plugin 'mattn/gist-vim'
Plugin 'mattn/webapi-vim'
Plugin 'mattn/pastebin-vim'
Plugin 'vimwiki/vimwiki'
Plugin 'AndrewRadev/linediff.vim'
Plugin 'bbye'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'kien/ctrlp.vim'
Plugin 'mattn/emmet-vim'
Plugin 'vim-scripts/indenthtml.vim'
Plugin 'junegunn/vim-easy-align'
Plugin 'sjl/gundo.vim'
Plugin 'fatih/vim-go'
Plugin 'vim-scripts/tlib'
Plugin 'Raimondi/delimitMate'
Plugin 'tomtom/tcomment_vim'
Plugin 'othree/html5.vim'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()
filetype plugin indent on

" fzf (installed via homebrew, not Vundle)
set rtp+=/opt/homebrew/opt/fzf

" ============================================================================
" GENERAL
" ============================================================================
syntax on
set ru                          " ruler
set si                          " smartindent
set sta                         " smarttab
set hidden
set autoread
set ttyfast
set ch=2                        " command line height
set laststatus=2
set showcmd                     " show incomplete cmds at the bottom
set showmode                    " show current mode at the bottom
set shortmess=tToOI
set visualbell t_vb=
set mousemodel=popup
set dir=~/tmp/
set timeout timeoutlen=3000 ttimeoutlen=100
set clipboard+=unnamed
set splitbelow
set splitright

" ============================================================================
" APPEARANCE
" ============================================================================
set t_Co=255
set background=dark
let g:solarized_termtrans=1     " avoid dark background in terminal
colorscheme solarized

set linespace=4
set list
set listchars=trail:.,tab:>-
set listchars+=tab:>-,trail:-,extends:>,precedes:<,nbsp:%
highlight lCursor guifg=NONE guibg=Cyan

" ============================================================================
" EDITING / INDENTATION
" ============================================================================
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set backspace=indent,eol,start
set formatoptions-=o            " dont continue comments when pushing o/O
set scrolloff=3
set sidescrolloff=7
set sidescroll=1

" ============================================================================
" SEARCH
" ============================================================================
set ic                          " ignorecase
set incsearch

" ============================================================================
" FOLDING
" ============================================================================
set foldmethod=indent           " fold based on indent
set foldnestmax=3               " deepest fold is 3 levels
set nofoldenable                " dont fold by default

" ============================================================================
" COMPLETION / WILDMENU
" ============================================================================
set completeopt+=longest
set wildmenu                    " enable ctrl-n / ctrl-p to scroll matches
set wildmode=list:longest       " cmdline tab completion similar to bash
set wcm=<Tab>
set wildignore=*.o,*.obj,*~     " stuff to ignore when tab completing

" ============================================================================
" ENCODING / KEYMAP
" ============================================================================
set fileencodings=ucs-bom,utf-8,cp1251,koi8-r,ibm866,default,latin1
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=-1
set diffopt=filler,iwhite

menu Encoding.koi8-r  :e ++enc=koi8-r<CR>
menu Encoding.win-1251 :e ++enc=cp1251<CR>
menu Encoding.cp866   :e ++enc=ibm866<CR>
menu Encoding.utf-8   :e ++enc=utf-8<CR>

" ============================================================================
" MAPPINGS
" ============================================================================
" --- Tabs / windows / buffers ---
map <C-UP> :tabprevious<CR>
map <C-DOWN> :tabnext<CR>
noremap <C-left> <C-W>t
noremap <C-right> <C-W>b

" Terminal escape sequences for Ctrl-F3 / Ctrl-F4
map [1;5R <C-F3>
map [1;5S <C-F4>
map <C-F3> :tabnew<CR>
map <C-F4> :tabclose<CR>

map <F1> :bprev<CR>
map <F2> :bnext<CR>
map <F3> :tabnew<CR>
map <F4> :NERDTreeClose<CR>:Bdelete<CR>
map [1;2S <S-F4>                " :h i_ctrl-v
map <S-F4> :NERDTreeClose<CR>:bw<CR>
map <F6> :tabclose<cr>
map <F10> :quitall <CR>

" --- Colorscheme toggles ---
map <F11> :colorscheme zellner<CR>
map <S-F11> :colorscheme desert<CR>

" --- Sessions ---
map <F12> :mksession! ~/tmp/vim.session<CR>
autocmd VimLeavePre * silent mksession! ~/tmp/lastSession.vim

" --- Plugins / toggles ---
noremap <F8> :NERDTreeToggle<cr>
noremap <F9> :set list!<cr>
nnoremap <F7> :GundoToggle<CR>

map <S-DOWN> <DOWN>
map <S-UP> <UP>
map <C-L> :CtrlPBuffer<CR>
map <C-\> :CtrlPMRUFiles<CR>

imap <C-@> <C-X><C-O>

" --- Build / lint (<S-F5>) ---
map [15;2~ <S-F5>
map <S-F5> <esc>:make<CR>

" --- Leader maps ---
" Save a file as root via sudo.
nnoremap <leader>es :w! /tmp/sudoSave \| let $fileToSave=expand('%') \| let $fileToSaveBackup=expand('%').'~' \| !sudo cp $fileToSave $fileToSaveBackup && sudo cp /tmp/sudoSave $fileToSave<CR><ESC>:e!<CR>

" <leader>f: if a real file is open, reveal it in the tree (NERDTreeFind).
" Otherwise (empty/no buffer at startup) open the tree rooted at the CWD
" instead of letting NERDTreeFind drift up into the parent directory.
nnoremap <silent> <leader>f :call LeaderFindOrCWD()<CR>

map <leader>ti :%! tidy -config ~/.vim/tidy.conf <CR>
vmap <leader>ti :! tidy -config ~/.vim/tidy.conf <CR>

vmap <leader>li :Linediff<CR>
map <leader>lr :LinediffReset<CR>

map <leader>ru :setlocal spell spelllang=ru<CR>
map <leader>en :setlocal spell spelllang=en<CR>

" Strip trailing whitespace + tidy braces + retab.
map <leader>sp :%s/\s\+$//e<CR> :%s@\v[\r\n]\s*\{@ {@ge<CR> :retab<CR>

nnoremap <C-F7> <Plug>VimwikiDiaryPrevDay
nmap <C-x>G :call GitGrepWord()<CR>

" ============================================================================
" COMMANDS / ABBREVIATIONS
" ============================================================================
command! -bang -bar Q :q<bang>
command! -bar -nargs=* -bang W :write<bang> <args>
cnoreabbrev Wq wq
cnoreabbrev wQ wq
cnoreabbrev WQ wq

" ============================================================================
" PLUGIN CONFIGURATION
" ============================================================================
" NERDTree
let NERDTreeQuitOnOpen=1
let NERDTreeHighlightCursorline=0

" miniBufExpl
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" buftabs
let g:buftabs_active_highlight_group="Visual"
let g:buftabs_only_basename=1

" SuperTab / snipmate / snippetsEmu
let g:SuperTabDefaultCompletionType = "context"
let g:snippetsEmu_key="<S-Tab>"

" delimitMate
let delimitMate_expand_cr = 1       " place cursor on its own line inside {}
let delimitMate_expand_space = 1    " { x } instead of { x} on space

" indent-guides
let g:indent_guides_start_level=2
let g:indent_guides_guide_size =1

" CtrlP
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_switch_buffer = 'h'
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/](lib[\/]vendor|cache|web|plugins|test)$',
    \ }
let g:ctrlp_buffer_func = { 'enter': 'CtrlPMappings' }

" indenthtml
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

" linediff
let g:linediff_first_buffer_command  = 'tabnew'
let g:linediff_second_buffer_command = 'rightbelow new'

" vim-go
let g:go_auto_sameids =1

" gist / pastebin
let g:gist_get_multiplefile = 1
let g:pastebin_api_dev_key = 'a882e11310bc8f5e43031fae7d5c8bce'
let g:pastebin_browser_command = ''

" vimwiki
let g:vimwiki_list = [{'path': '~/.vimwiki/'}]

" PHP
let php_sql_query=1
let php_htmlInStrings=1

" Perl
let perl_fold = 1
let perl_fold_blocks = 1
let perl_sync_dist = 400
let perl_nofold_packages = 1
let perl_include_pod = 1
let perl_extended_vars  = 1

" ============================================================================
" FILETYPES / AUTOCOMMANDS
" ============================================================================
au BufNewFile,BufRead *.yaml,*.yml setf yaml let b:did_indent = 1
au BufNewFile,BufRead *.twig    setf htmljinja
au BufRead,BufNewFile *.{ep} setlocal filetype=html linebreak showbreak=>\| cindent
au BufRead,BufNewFile *.{tt} setlocal filetype=html syntax=html
au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null
au FileType go set nolist

" Strip trailing whitespace in Perl on save.
autocmd BufWritePre *.pl :%s/\s\+$//e

" Per-language <F5> = run / compile.
au FileType perl map <F5>  <esc>:make<CR>
au FileType php  map <F5>  <esc>:!php -l %<CR>
au FileType sml  map <F5>  <esc>:!sml %<CR>
au FileType javascript  map <F5>  <esc>:!nodejs %<CR>
au FileType python map <F5>  <esc>:!python %<CR>
au FileType haskell map <F5>  <esc>:w<CR>:!ghci %<CR>
au FileType lhaskell map <F5>  <esc>:!ghci %<CR>
au FileType groovy map <F5>  <esc>:!groovy %<CR>
au FileType ruby map <F5>  <esc>:!ruby %<CR>
au FileType go map <F5>  <esc>:GoRun<CR>

" Perl tooling
autocmd FileType perl set autowrite
autocmd FileType perl set errorformat=%f:%l:%m
autocmd FileType perl set makeprg=perl\ -c\ %\ $*
autocmd FileType perl setlocal equalprg=perltidy
autocmd FileType perl setlocal foldmethod=syntax
autocmd BufNewFile,BufRead *.p[lm] compiler perl
au FileType haskell set makeprg=/usr/bin/ghc\ \%

" ============================================================================
" FUNCTIONS
" ============================================================================
" <leader>f helper: reveal current file, or open tree at CWD if no file.
function! LeaderFindOrCWD()
  if empty(expand('%')) || !filereadable(expand('%'))
    execute 'NERDTree'
  else
    execute 'NERDTreeFind'
  endif
endfunction

" CtrlP: <C-@> deletes the buffer under the cursor in the buffer list.
function! CtrlPMappings()
  nnoremap <buffer> <silent> <C-@> :call <sid>DeleteBuffer()<cr>
endfunction

function! s:DeleteBuffer()
  let path = fnamemodify(getline('.')[2:], ':p')
  let bufn = matchstr(path, '\v\d+\ze\*No Name')
  exec "bd" bufn ==# "" ? path : bufn
  exec "norm \<F5>"
endfunction

" :G <pattern> -- '*.c'   git grep wrapper
func GitGrep(...)
  let save = &grepprg
  set grepprg=git\ grep\ -n\ $*
  let s = 'grep'
  for i in a:000
    let s = s . ' ' . i
  endfor
  exe s
  let &grepprg = save
endfun
command -nargs=? G call GitGrep(<f-args>)

" git grep the word under the cursor (Ctrl-X G).
func GitGrepWord()
  normal! "zyiw
  call GitGrep('-w -e ', getreg('z'))
endf
