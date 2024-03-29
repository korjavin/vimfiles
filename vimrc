set ru
set si
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
map <F10> :quitall <CR>
map <S-F10> :quitall! <CR>
"colorscheme symfony
set background=dark
map <F11> :colorscheme base16-solarized-light<CR>
"map <F12> :colorscheme tango<CR>
map <S-F11> :colorscheme mac_classic<CR>
"map <F12> :colorscheme desert<CR>
autocmd VimLeavePre * silent mksession! ~/tmp/vim/lastSession.vim
"map <F7> :nohlsearch<cr>
"noremap <F7> :set hlsearch!<cr>
" noremap <F8> :NERDTreeToggle<cr>
noremap <S-F8> :NERDTreeMirror<cr>
noremap <S-F9> :set list!<cr>
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
  " let g:miniBufExplMapWindowNavVim = 1
  " let g:miniBufExplMapWindowNavArrows = 1
  " let g:miniBufExplMapCTabSwitchBufs = 1
  " let g:miniBufExplModSelTarget = 1
  " imap <C-@> <C-X><C-O>


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
"On Mac OS X and Windows, the * and + registers both point to the system clipboard so unnamed and unnamedplus have the same effect: the unnamed register is synchronized with the system clipboard.autocmd InsertLeave * hi Normal guibg=blue
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=-1
set shortmess=tToOI
"set statusline=%t\ %y%m%r[%{&fileencoding}]%<[%{strftime(\"%d.%m.%y\",getftime(expand(\"%:p\")))}]%k%=%-14.(%l,%c%V%)\ %P
set listchars+=tab:>-,trail:-,extends:>,precedes:<,nbsp:%
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
set tabstop=2
set shiftwidth=2
set softtabstop=2
set backspace=indent,eol,start
set timeout timeoutlen=3000 ttimeoutlen=100

nnoremap <leader>es :w! /tmp/sudoSave \| let $fileToSave=expand('%') \| let $fileToSaveBackup=expand('%').'~' \| !sudo cp $fileToSave $fileToSaveBackup && sudo cp /tmp/sudoSave $fileToSave<CR><ESC>:e!<CR>

au BufNewFile,BufRead *.twig    setf htmljinja

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

let g:vimwiki_list = [{'path': '~/.vimwiki/'},{'path': '~/.vimwiki1/'}]

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
"au FileType go set listchars=tab:,trail:-,extends:>,precedes:<,nbsp:%

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

nmap <leader>wp <Plug>VimwikiDiaryPrevDay
nmap <leader>wn <Plug>VimwikiDiaryNextDay
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
    \ 'dir':  '\v[\/](lib[\/]vendor|cache|plugins|test|src[\/]github.com|node_modules|vendor)$',
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
command -nargs=? GitGrep call GitGrep(<f-args>)

"on the word under the cursor when Ctrl+X G is pressed.
func GitGrepWord()
  normal! "zyiw
  call GitGrep('-w -e ', getreg('z'))
endf
nmap <C-x>G :call GitGrepWord()<CR>
set splitbelow
set splitright

highlight lCursor guifg=NONE guibg=Cyan


nmap <silent> <leader>f :NERDTreeFind<CR>

" Some support functions used by delimitmate, and snipmate
"Bundle 'vim-scripts/tlib'

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


Plugin 'tpope/vim-dispatch'


nmap <silent> <leader>ga :GoAlternate!<CR>
nmap <silent> <leader>gc :GoCoverageToggle<CR>
nmap <silent> <leader>gr :GoRename<CR>
nmap <silent> <leader>gi :GoImports<CR>
nmap <silent> <leader>gt :GoTest<CR>
nmap <silent> <leader>gl :GoLint<CR>
nmap <silent> <leader>ge :GoReferrers<CR>
nmap <silent> <leader>gb :Git blame<CR>
nmap <silent> <leader>gn :GoBuild<CR>
nmap <silent> <leader>go :GoImplements<CR>
nmap <silent> <leader>gma :GoMetaLinter --config=/home/iv/Projects/go/src/g.3pm.ai/docker-golangci/golangci-strict.yml <CR>
nmap <silent> <leader>gml :GoMetaLinter --config=/home/iv/Projects/go/src/g.3pm.ai/docker-golangci/golangci-strict-lib.yml <CR>

nmap <silent> <leader>gj :%!python3 -m json.tool<CR>
map <silent> <leader>jj :'<,'>!python3 -m json.tool<CR>
nmap <silent> <leader>t0 :tabmove 0<CR>
nmap <silent> <leader>t1 :tabmove -1<CR>
nmap <silent> <leader>t2 :tabmove +1<CR>


Bundle "SirVer/ultisnips"

" Plugin 'posva/vim-vue'
" au BufRead,BufNewFile *.{vue} setlocal filetype=vue
" autocmd FileType vue syntax sync fromstart

"Plugin 'vim-syntastic/syntastic'
"let g:syntastic_check_on_wq = 0
" let g:syntastic_check_on_open = 0
" let g:syntastic_go_checkers = ['go','goling','govet']
" let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
" let g:syntastic_auto_jump = 3
" let g:syntastic_always_populate_loc_list = 1
set sessionoptions-=blank


" augroup auto_go
"     autocmd!
"     autocmd BufWritePost *.go :GoBuild
"     autocmd BufWritePost *_test.go :GoTest
" augroup end
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
" map <F12> :mksession! ~/tmp/vim/vimSession.vim<CR>
" map <F12> <esc> :call SaveSessionGit()<esc>
nmap <silent> <leader>ls :source ~/tmp/vim/vimSession.vim<CR>
nmap <leader>ss :mksession! ~/tmp/vim/vimSession.vim<CR>
nmap <leader>s1 :mksession! ~/tmp/vim/vimSession1.vim<CR>
nmap <silent> <leader>l1 :source ~/tmp/vim/vimSession1.vim<CR>
nmap <leader>s2 :mksession! ~/tmp/vim/vimSession2.vim<CR>
nmap <silent> <leader>l2 :source ~/tmp/vim/vimSession2.vim<CR>
nmap <leader>s3 :mksession! ~/tmp/vim/vimSession3.vim<CR>
nmap <silent> <leader>l3 :source ~/tmp/vim/vimSession3.vim<CR>

" Plugin 'flazz/vim-colorschemes'
" Plugin 'sunuslee/vim-plugin-random-colorscheme-picker'

"colorscheme zellner

Bundle "d11wtq/ctrlp_bdelete.vim"
call ctrlp_bdelete#init()

"Plugin 'sjl/gundo.vim'
"nnoremap <F7> :GundoToggle<CR>

Bundle "mbbill/undotree"
nnoremap <S-F7> :UndotreeToggle<cr>

Bundle "tpope/vim-fugitive"

map <F7> :lne<cr>
map <F6> :cn<cr>


let g:vimwiki_conceallevel = 0
let g:vimwiki_url_maxsave = 0
set completeopt-=preview
imap <C-@> <C-X><C-O>

Bundle 'jistr/vim-nerdtree-tabs'
" noremap <F8> :NERDTreeTabsToggle<cr>
noremap <F8> :NERDTreeToggle<cr>
let g:vimwiki_ext2syntax = {'doc.go': 'media'}
" Yaml
au BufNewFile,BufRead *.yaml,*.yml setf yaml let b:did_indent = 1
autocmd FileType yaml setl indentkeys-=<:> ts=2 sts=2 sw=2 expandtab

" Bundle "urbainvaes/vim-remembrall"
" for pair brackets
hi MatchParen cterm=none ctermbg=green ctermfg=blue

Bundle "Shougo/denite.nvim"
"Plugin 'dense-analysis/ale'
"let g:ale_linters = {'go': ['gofmt', 'golint', 'govet', 'remove_trailing_lines','trim_whitespace']}
"let g:ale_go_golint_options = "-e Comment"


com! FormatXML :%!python3 -c "import xml.dom.minidom, sys; print(xml.dom.minidom.parse(sys.stdin).toprettyxml())"

nmap <silent> <leader>gx :FormatXML<Cr>


Plugin 'chriskempson/base16-vim'
set termguicolors
colorscheme base16-solarized-light

set clipboard+=unnamed

Plugin 'ConradIrwin/vim-bracketed-paste'
Plugin 'vim-scripts/dbext.vim'

""let g:go_auto_sameids = 0
""au FileType go map <F5>  <esc>:GoRun<CR>
""au FileType go set nolist
""let g:go_jump_to_error = 1
""let g:go_fmt_experimental = 1
""let g:go_dispatch_enabled = 1
""
""let g:go_highlight_operators = 1
""let g:go_metalinter_autosave = 0
""
""let g:go_auto_type_info = 0
""let g:go_metalinter_excludes = [".*\.pb\.go","_test\.go"]
""let g:go_fmt_fail_silently = 1
""let g:go_list_type = "locationlist"
""" let g:go_list_type = "quickfix"
""let g:go_list_height = 5
""" let g:go_metalinter_deadline = "150s"
"""let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck','goconst','staticcheck','dupl','deadcode','ineffassign','megacheck','unconvert','misspell','vetshadow']
"""let g:go_metalinter_autosave_enabled = ['vet', 'golint']
""
""let g:go_list_type_commands = {"GoReferrers": "quickfix"}
""let g:go_alternate_mode = "vsplit"
""let g:go_autodetect_gopath = 1
""let g:go_get_update = 0
""" let g:go_debug=['shell-commands']
""let g:go_def_reuse_buffer = 0
""
""let g:go_debug_windows = {
""            \ 'vars':       'leftabove 30vnew',
""            \ }
""
""" \ 'out':        'botright 5new',
nmap <silent> <leader>dt :GoDebugTest<Cr>
nmap <silent> <leader>db :GoDebugBreakpoint<Cr>
nmap <silent> <leader>dc :GoDebugContinue<Cr>
nmap <silent> <leader>dn :GoDebugNext<Cr>
nmap <silent> <leader>ds :GoDebugStep<Cr>
nmap <silent> <leader>dr :GoDebugReset<Cr>
nmap <silent> <leader>dk :GoDebugStop<Cr>


Bundle "buoto/gotests-vim"

" new go experiments """""""""""""""""""""""""

" gopls settings
let g:go_gopls_gofumpt = 1
let g:go_gopls_staticcheck = 1
let g:go_gopls_analyses = v:null
let g:go_gopls_complete_unimported = 1
let g:go_gopls_matcher = 'fuzzy'
let g:go_gopls_use_placeholders = 1

" Go fmt settings
let g:go_fmt_command = "gopls"
"let g:go_fmt_autosave = 1
let g:go_imports_mode = 'gopls'

" Go metalinter settings
let g:go_metalinter_autosave = 0
let g:go_metalinter_command='gopls'

" Code highlighting settings
let g:go_highlight_types = 1
let g:go_highlight_fields = 0
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 0
let g:go_highlight_extra_types = 0

" Terminal settings
let g:go_term_enabled = 1
let g:go_term_mode = "split"
let g:go_term_reuse = 1

" Code analysis settings
"let g:go_auto_type_info = 1
let g:go_list_type = "locationlist"
let g:go_auto_sameids = 0
"let g:go_def_mapping_enabled = 0

" Misc vim-go settings
let g:go_template_use_pkg = 1
au FileType go set nolist

" My go settings again
let g:go_alternate_mode = "vsplit"
let g:go_list_type_commands = {"GoReferrers": "quickfix"}
let g:go_metalinter_excludes = [".*\.pb\.go","_test\.go"]

augroup filetype
  au! BufRead,BufNewFile *.proto setfiletype proto
augroup end

" Bundle "abolish.vim"   " crs change camel to json
Bundle "repeat.vim"
Bundle "chiedo/vim-case-convert"

" Bundle "Shougo/deoplete.nvim"
" call deoplete#custom#option('omni_patterns', { 'go': '[^. *\t]\.\w*' })

Bundle "majutsushi/tagbar"
let g:tagbar_autoclose = 1
noremap <F9> :TagbarToggle<cr>
" map <F11> :colorscheme base16-gruvbox-light-medium<CR>
let g:go_diagnostics_enabled=1
let g:go_diagnostics_level = 1

Bundle "pedrohdz/vim-yaml-folds"
" Bundle "codota/tabnine-vim"
Bundle "amdt/vim-niji"
Plugin 'hashivim/vim-terraform'
" Plugin 'earthly/earthly.vim', { 'branch': 'main' }
" au BufRead,BufNewFile Earthfile set filetype=Earthfile
" au BufRead,BufNewFile build.earth set filetype=Earthfile
Plugin 'christianrondeau/vim-base64'

Plugin 'rust-lang/rust.vim'

" Plugin 'prabirshrestha/vim-lsp'
" if executable('rust-analyzer')
"   au User lsp_setup call lsp#register_server({
"         \   'name': 'Rust Language Server',
"         \   'cmd': {server_info->['rust-analyzer']},
"         \   'whitelist': ['rust'],
"         \ })
" endif
" function! s:on_lsp_buffer_enabled() abort
"     setlocal omnifunc=lsp#complete
"     setlocal signcolumn=yes
"     if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
"     nmap <buffer> gd <plug>(lsp-definition)
"     nmap <buffer> gs <plug>(lsp-document-symbol-search)
"     nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
"     nmap <buffer> gr <plug>(lsp-references)
"     nmap <buffer> gi <plug>(lsp-implementation)
"     nmap <buffer> gt <plug>(lsp-type-definition)
"     nmap <buffer> <leader>rn <plug>(lsp-rename)
"     nmap <buffer> [g <plug>(lsp-previous-diagnostic)
"     nmap <buffer> ]g <plug>(lsp-next-diagnostic)
"     nmap <buffer> K <plug>(lsp-hover)
"     nnoremap <buffer> <expr><c-f> lsp#scroll(+4)
"     nnoremap <buffer> <expr><c-d> lsp#scroll(-4)
"
"     let g:lsp_format_sync_timeout = 1000
"     autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')
"     
"     " refer to doc to add more commands
" endfunction
" let g:lsp_diagnostics_signs_enabled = 0

Plugin 'tpope/vim-fireplace'
