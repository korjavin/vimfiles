set ru
set si
set softtabstop=3
"set shiftwidth=3
"set tabstop=3
set sta
"set acd
set ch=2
set ls=2
set diffopt=filler,iwhite
"set diffopt=filler,horizontal
set ic
syntax on
set incsearch
set hidden

set ttyfast
set list!
set listchars=trail:.,tab:>-

map <C-UP> :tabprevious<CR>
map <C-DOWN> :tabnext<CR>
noremap <C-left> <C-W>t
noremap <C-right> <C-W>b
map [1;5R <C-F3>
map [1;5S <C-F4>
map <C-F3> :tabnew<CR>:tabmove -<CR>
map <C-F4> :tabclose<CR>
"map <F1> :tabprevious<CR>
"map <F2> :tabnext<CR>
map <F1> :bprev<CR>
map <F2> :bnext<CR>
map <F3> :tabnew<CR>
map <S-F3> :tabmove -<CR>
map <F4> :NERDTreeClose<CR>:Bdelete<CR>
map [1;2S <S-F4> " :h i_ctrl-v
map <S-F4> :NERDTreeClose<CR>:bw<CR>
map <F6> :tabclose<cr>
map <F10> :quitall <CR>
map <S-F10> :quitall! <CR>
colorscheme symfony
set background=dark
map <F11> :colorscheme zellner<CR>
"map <F12> :colorscheme tango<CR>
map <S-F11> :colorscheme mac_classic<CR>
"map <F12> :colorscheme desert<CR>
autocmd VimLeavePre * silent mksession! ~/tmp/vim/lastSession.vim
"map <F7> :nohlsearch<cr>
"noremap <F7> :set hlsearch!<cr>
noremap <F8> :NERDTreeToggle<cr>
noremap <S-F8> :NERDTreeMirror<cr>
noremap <F9> :set list!<cr>
"map <F5> :set si! si?<CR>
"imap <F5> :Sview<CR>
"
"map <F5>  <esc>:call SWITCHFOLD()<cr>
"function! SWITCHFOLD()
"    if &foldmethod=="syntax"
"        set foldmethod=indent
"        return
"    endif
"    set foldmethod=syntax
"endfunction




set completeopt+=longest
  let g:miniBufExplMapWindowNavVim = 1
  let g:miniBufExplMapWindowNavArrows = 1
  let g:miniBufExplMapCTabSwitchBufs = 1
  let g:miniBufExplModSelTarget = 1
  imap <C-@> <C-X><C-O>

"func CloseScratch()
"    if bufname("%")==""
"        :exe ":bdelete ".bufnr("%")
"    endif
"endfunc
"
"inoremap ) <Esc>:windo exe ":call CloseScratch()"<cr>a)
command! -bang -bar Q :q<bang>
command! -bar -nargs=* -bang W :write<bang> <args>
set wildmenu
set wcm=<Tab>
menu Encoding.koi8-r :e ++enc=koi8-r<CR>
menu Encoding.win-1251 :e ++enc=cp1251<CR>
menu Encoding.cp866 :e ++enc=ibm866<CR>
menu Encoding.utf-8 :e ++enc=utf-8<CR>
" ucs-2le
" ucs-bom
"map <F9> :emenu Encoding.<TAB>
set t_Co=255
"hi CursorLine guibg=#dbdbdb gui=none
"map <F6> :setlocal cursorline!<cr>
"autocmd InsertEnter * hi Normal guibg=green
"autocmd InsertLeave * hi Normal guibg=blue
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=-1
set shortmess=tToOI
"set statusline=%t\ %y%m%r[%{&fileencoding}]%<[%{strftime(\"%d.%m.%y\",getftime(expand(\"%:p\")))}]%k%=%-14.(%l,%c%V%)\ %P
set listchars+=tab:>-,trail:-,extends:>,precedes:<,nbsp:%
set clipboard+=unnamed
set pastetoggle=<F1>
"autocmd InsertEnter * set cursorline
"autocmd InsertEnter * highlight StatusLine ctermbg=52
"autocmd InsertLeave * highlight StatusLine ctermbg=8
"autocmd InsertLeave * set nocursorline
"autocmd CmdwinEnter * highlight StatusLine ctermbg=82
"autocmd CmdwinLeave * highlight StatusLine ctermbg=8
"map <c-w>] <c-w>]:tab split<cr>gT:q<cr>gt
"function! DiffWithFileFromDisk()
"  let filename=expand('%')
"  let diffname = filename.'.fileFromBuffer'
"  exec 'saveas! '.diffname
"  diffthis
"  vsplit
"  exec 'edit '.filename
"  diffthis
"endfunction
":nmap <F7> :call DiffWithFileFromDisk()<cr>
"map <C-Up> :bn<Return>
"map <C-Down> :bp<Return>
set fileencodings=ucs-bom,utf-8,cp1251,koi8-r,ibm866,default,latin1
retab
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set backspace=indent,eol,start
set timeout timeoutlen=3000 ttimeoutlen=100

nnoremap <leader>es :w! /tmp/sudoSave \| let $fileToSave=expand('%') \| let $fileToSaveBackup=expand('%').'~' \| !sudo cp $fileToSave $fileToSaveBackup && sudo cp /tmp/sudoSave $fileToSave<CR><ESC>:e!<CR>

" Yaml
au BufNewFile,BufRead *.yaml,*.yml setf yaml let b:did_indent = 1
au BufNewFile,BufRead *.twig    setf htmljinja




"  map ё `
"  map й q
"  map ц w
"  map у e
"  map к r
"  map е t
"  map н y
"  map г u
"  map ш i
"  map щ o
"  map з p
"  map х [
"  map ъ ]
"  map ф a
"  map ы s
"  map в d
"  map а f
"  map п g
"  map р h
"  map о j
"  map л k
"  map д l
"  map ж ;
"  map э '
"  map я z
"  map ч x
"  map с c
"  map м v
"  map и b
"  map т n
"  map ь m
"  map б ,
"  map ю .
"  map Ё ~
"  map Й Q
"  map Ц W
"  map У E
"  map К R
"  map Е T
"  map Н Y
"  map Г U
"  map Ш I
"  map Щ O
"  map З P
"  map Х {
"  map Ъ }
"  map Ф A
"  map Ы S
"  map В D
"  map А F
"  map П G
"  map Р H
"  map О J
"  map Л K
"  map Д L
"  map Ж :
"  map Э "
"  map Я Z
"  map Ч X
"  map С C
"  map М V
"  map И B
"  map Т N
"  map Ь M
"  map Б <
"  map Ю >



let g:snippetsEmu_key="<S-Tab>"


"au FileType php set omnifunc=phpcomplete
let php_sql_query=1
let php_htmlInStrings=1
filetype plugin on

"buff
  set laststatus=2
  "let g:buftabs_in_statusline=1
  let g:buftabs_active_highlight_group="Visual"


set dir=~/tmp/vim/

let NERDTreeQuitOnOpen=1
let NERDTreeHighlightCursorline=0
let g:buftabs_only_basename=1

set showcmd     "show incomplete cmds down the bottom
set showmode    "show current mode down the bottom

"set showbreak=...
"set wrap linebreak nolist

set linespace=4
set visualbell t_vb=

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

set wildmode=list:longest   "make cmdline tab completion similar to bash
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing

set formatoptions-=o "dont continue comments when pushing o/O

set scrolloff=3
set sidescrolloff=7
set sidescroll=1
set autoread


let g:SuperTabDefaultCompletionType = "context"


" Perl stuff
"autocmd FileType perl match ErrorMsg '\%>78v.\+'
autocmd FileType perl set autowrite
autocmd FileType perl set errorformat=%f:%l:%m
autocmd FileType perl set makeprg=perl\ -c\ %\ $*
autocmd FileType perl setlocal equalprg=perltidy
autocmd FileType perl setlocal foldmethod=syntax
autocmd BufNewFile,BufRead *.p[lm] compiler perl

let perl_fold = 1
let perl_fold_blocks = 1
let perl_sync_dist = 400

let perl_nofold_packages = 1
let perl_include_pod = 1

let perl_extended_vars  = 1

let g:vimwiki_list = [{'path': '~/.vimwiki/'}]

"vundle

filetype off                   " required!
set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-powerline'
" Bundle 'molokai'
"Bundle 'surround.vim'
Bundle 'file-line'
Bundle 'nelstrom/vim-mac-classic-theme.git'
Bundle 'github:mattn/gist-vim.git'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/pastebin-vim'
Bundle 'vimwiki'
"let g:vimwiki_url_maxsave = 0


filetype plugin indent on     " required!

let g:gist_get_multiplefile = 1
let g:pastebin_api_dev_key = 'a882e11310bc8f5e43031fae7d5c8bce'
let g:pastebin_browser_command = ''

au BufRead,BufNewFile *.{ep} setlocal filetype=html linebreak showbreak=>\| cindent
au BufRead,BufNewFile *.{tt} setlocal filetype=html syntax=html
au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null
map [15;2~ <S-F5>
map <S-F5> <esc>:make<CR>
au FileType perl map <F5>  <esc>:make<CR>
"au FileType perl map <F5>  <esc>:!perl -c %<CR>
"au FileType perl map <F5>  <esc>:!perl -Ilib -I../lib -c %<CR>
au FileType php  map <F5>  <esc>:!php -l %<CR>
au FileType sml  map <F5>  <esc>:!sml %<CR>
au FileType javascript  map <F5>  <esc>:!nodejs %<CR>
au FileType python map <F5>  <esc>:!python %<CR>
au FileType haskell map <F5>  <esc>:w<CR>:!ghci %<CR>
au FileType haskell set makeprg=/usr/bin/ghc\ \%
au FileType lhaskell map <F5>  <esc>:!ghci %<CR>
au FileType groovy map <F5>  <esc>:!groovy %<CR>
au FileType ruby map <F5>  <esc>:!ruby %<CR>
au FileType go map <F5>  <esc>:GoRun<CR>
"au FileType go set listchars=tab:,trail:-,extends:>,precedes:<,nbsp:%
au FileType go set nolist

"au FileType html set equalprg="tidy -config ~/.vim/tidy.conf"


map <leader>ti :%! tidy -config ~/.vim/tidy.conf <CR>
vmap <leader>ti :! tidy -config ~/.vim/tidy.conf <CR>

set mousemodel=popup
cnoreabbrev Wq wq
cnoreabbrev wQ wq
cnoreabbrev WQ wq

Bundle  'AndrewRadev/linediff.vim'
vmap <leader>li :Linediff<CR>
map <leader>lr :LinediffReset<CR>
let g:linediff_first_buffer_command  = 'tabnew'
let g:linediff_second_buffer_command = 'rightbelow new'

map <S-DOWN> <DOWN>
map <S-UP> <UP>
map <C-L> :CtrlPBuffer<CR>
map <C-\> :CtrlPMRUFiles<CR>
map <C-K> :CtrlPBufTag<CR>

autocmd BufWritePre *.pl :%s/\s\+$//e
map <leader>sp :%s/\s\+$//e<CR> :%s@\v[\r\n]\s*\{@ {@ge<CR> :retab<CR>

Bundle 'bbye'

nnoremap <C-F7> <Plug>VimwikiDiaryPrevDay
nnoremap <S-C-F7> <Plug>VimwikiDiaryNextDay
" nmap <Leader>wf <Plug>VimwikiFollowLink

Bundle 'nathanaelkane/vim-indent-guides'
let g:indent_guides_start_level=2
let g:indent_guides_guide_size =1

Bundle 'ctrlpvim/ctrlp.vim'
Bundle 'mattn/emmet-vim'
" :CtrlPBuffer :CtrlPLastMode
let g:ctrlp_cmd = 'CtrlP'

map <leader>ru :setlocal spell spelllang=ru<CR>
map <leader>en :setlocal spell spelllang=en<CR>

" Bundle 'vim-scripts/indenthtml.vim'
" let g:html_indent_script1 = "inc"
" let g:html_indent_style1 = "inc"

Bundle 'junegunn/vim-easy-align'

let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/](lib[\/]vendor|cache|plugins|test|src[\/]github.com|node_modules|pkg)$',
    \ }

let g:ctrlp_switch_buffer = 'h'

Bundle 'fatih/vim-go'

":G <pattern> -- '*.c'
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

"on the word under the cursor when Ctrl+X G is pressed.
func GitGrepWord()
  normal! "zyiw
  call GitGrep('-w -e ', getreg('z'))
endf
nmap <C-x>G :call GitGrepWord()<CR>
set splitbelow
set splitright

highlight lCursor guifg=NONE guibg=Cyan

let g:go_auto_sameids = 0

nmap <silent> <leader>f :NERDTreeFind<CR>

" Some support functions used by delimitmate, and snipmate
Bundle 'vim-scripts/tlib'

" Add smart commands for comments like:
" gcc - Toggle comment for the current line
" gc  - Toggle comments for selected region or number of strings
Bundle 'tomtom/tcomment_vim'

Bundle 'othree/html5.vim'

" Bundle 'Valloric/YouCompleteMe'

" Colorscheme solarazied for vim
Bundle 'altercation/vim-colors-solarized'

"-------------------------
" Solarized. No, this time it will be jellybeans.

" Without this solarized have dark background in my terminal
let g:solarized_termtrans=1

" Setting up light color scheme
"set background=dark

" Use solarized colorscheme
"colorscheme solarized

" colorscheme jellybeans

Plugin 'Chiel92/vim-autoformat'

  let g:go_jump_to_error = 1
  let g:go_fmt_experimental = 1

Plugin 'tpope/vim-dispatch'

  let g:go_dispatch_enabled = 1

  let g:go_highlight_operators = 1
  let g:go_metalinter_autosave = 1

  let g:go_auto_type_info = 0

nmap <silent> <leader>ga :GoAlternate!<CR>
nmap <silent> <leader>gc :GoCoverageToggle<CR>
nmap <silent> <leader>gr :GoRename<CR>
nmap <silent> <leader>gi :GoImports<CR>
nmap <silent> <leader>gj :%!python -m json.tool<CR>
nmap <silent> <leader>jj :'<,'>!python -m json.tool<CR>
nmap <silent> <leader>t :tabmove 0<CR>


Bundle "SirVer/ultisnips"

let g:go_metalinter_excludes = [".*\.pb\.go","_test\.go"]
Plugin 'posva/vim-vue'
au BufRead,BufNewFile *.{vue} setlocal filetype=vue
autocmd FileType vue syntax sync fromstart

Plugin 'vim-syntastic/syntastic'
" let g:syntastic_check_on_wq = 1
let g:syntastic_go_checkers = ['go']

" let g:go_metalinter_autosave_enabled = ['vet', 'golint','test']
" augroup auto_go
"     autocmd!
"     autocmd BufWritePost *.go :GoBuild
"     autocmd BufWritePost *_test.go :GoTest
" augroup end
let g:go_fmt_fail_silently = 1
"Plugin 'sekel/vim-vue-syntastic'
"let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_vue_checkers = ['eslint']

" function SaveSessionGit()
"     let gitdir=system("git rev-parse --show-toplevel")
"     let isnotgitdir=matchstr(gitdir, '^fatal:.*')
"     let filename=""
"     if empty(isnotgitdir)
"           filename=  gitdir + "vimSession.vim"
"             else
"           filename= "vimSession.vim"
"     endif
"     echo filename
"     :mksession! filename
" endfunction

nmap <silent> <leader>ll :source ~/tmp/vim/lastSession.vim<CR>
map <F12> :mksession! ~/tmp/vim/vimSession.vim<CR>
" map <F12> <esc> :call SaveSessionGit()<esc>
nmap <silent> <leader>ls :source ~/tmp/vim/vimSession.vim<CR>

" Plugin 'flazz/vim-colorschemes'
" Plugin 'sunuslee/vim-plugin-random-colorscheme-picker'

colorscheme zellner

Bundle "d11wtq/ctrlp_bdelete.vim"
call ctrlp_bdelete#init()

"Plugin 'sjl/gundo.vim'
"nnoremap <F7> :GundoToggle<CR>

Bundle "mbbill/undotree"
nnoremap <F7> :UndotreeToggle<cr>

Bundle "tpope/vim-fugitive"

let g:go_list_type = "locationlist"
let g:go_list_height = 5
let g:go_metalinter_deadline = "15s"
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck','goconst','staticcheck','dupl','deadcode','ineffassign','gocyclo']
let g:go_metalinter_autosave_enabled = ['vet', 'golint']

map <S-F7> :lne<cr>
let g:go_alternate_mode = "tabedit"

let g:syntastic_auto_jump = 3
