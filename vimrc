set ru
set si
set softtabstop=3
"set shiftwidth=3
"set tabstop=3
set sta
"set acd
set ch=2
set ls=2
set diffopt=filler,horizontal
set ic
syntax on
set incsearch
set hidden
map <C-UP> :tabprevious<CR>
map <C-DOWN> :tabnext<CR>
map <S-F3> :tabnew<CR>
map <S-F4> :tabclose<CR>
"map <F1> :tabprevious<CR>
"map <F2> :tabnext<CR>
map <F1> :bprev<CR>
map <F2> :bnext<CR> 
map <F3> :tabnew<CR>
map <F4> :NERDTreeClose<CR>:bdelete<CR>
"map <F10> :mksession! ~/.vim/chess.session<CR>
map <F10> :quitall! <CR>
colorscheme symfony
map <F11> :colorscheme zellner<CR>
map <F12> :colorscheme tango<CR>
map <S-F11> :colorscheme desert<CR>
map <S-F12> :colorscheme symfony<CR>
set tabstop=2
autocmd VimLeavePre * silent mksession! ~/.vim/lastSession.vim
map <F7> :nohlsearch<cr>
noremap <F7> :set hlsearch!<cr>
noremap <F8> :NERDTreeToggle<cr>
noremap <S-F8> :Tlist<cr>
"map <F5> :set si! si?<CR>
map <F5> :Sview<CR>
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
map <F9> :emenu Encoding.<TAB>
set t_Co=255
hi CursorLine guibg=#dbdbdb gui=none
map <F6> :setlocal cursorline!<cr>
"autocmd InsertEnter * hi Normal guibg=green
"autocmd InsertLeave * hi Normal guibg=blue
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=-1
set shortmess=tToOI
set statusline=%t\ %y%m%r[%{&fileencoding}]%<[%{strftime(\"%d.%m.%y\",getftime(expand(\"%:p\")))}]%k%=%-14.(%l,%c%V%)\ %P
set listchars+=tab:>-,trail:-,extends:>,precedes:<,nbsp:%
set clipboard+=unnamed
set pastetoggle=<F1>
autocmd InsertEnter * set cursorline
autocmd InsertEnter * highlight StatusLine ctermbg=52
autocmd InsertLeave * highlight StatusLine ctermbg=8 
autocmd InsertLeave * set nocursorline
autocmd CmdwinEnter * highlight StatusLine ctermbg=82
autocmd CmdwinLeave * highlight StatusLine ctermbg=8
map <c-w>] <c-w>]:tab split<cr>gT:q<cr>gt
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
au BufNewFile,BufRead *.yaml,*.yml    setf yaml
au BufNewFile,BufRead *.twig    setf jinja




  map ё `
  map й q
  map ц w
  map у e
  map к r
  map е t
  map н y
  map г u
  map ш i
  map щ o
  map з p
  map х [
  map ъ ]
  map ф a
  map ы s
  map в d
  map а f
  map п g
  map р h
  map о j
  map л k
  map д l
  map ж ;
  map э '
  map я z
  map ч x
  map с c
  map м v
  map и b
  map т n
  map ь m
  map б ,
  map ю .
  map Ё ~
  map Й Q
  map Ц W
  map У E
  map К R
  map Е T
  map Н Y
  map Г U
  map Ш I
  map Щ O
  map З P
  map Х {
  map Ъ }
  map Ф A
  map Ы S
  map В D
  map А F
  map П G
  map Р H
  map О J
  map Л K
  map Д L
  map Ж :
  map Э "
  map Я Z
  map Ч X
  map С C
  map М V
  map И B
  map Т N
  map Ь M
  map Б <
  map Ю >



let g:snippetsEmu_key="<S-Tab>"


"au FileType php set omnifunc=phpcomplete
let php_sql_query=1                                                                                        
let php_htmlInStrings=1
filetype plugin on

"buff
  noremap <C-left> :bprev<CR>
  noremap <C-right> :bnext<CR> 
  set laststatus=2 
  let g:buftabs_in_statusline=1 
  let g:buftabs_active_highlight_group="Visual" 


set dir=~/tmp/

let NERDTreeQuitOnOpen=1
let g:buftabs_only_basename=1

set showcmd     "show incomplete cmds down the bottom
set showmode    "show current mode down the bottom

set showbreak=...
set wrap linebreak nolist

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


