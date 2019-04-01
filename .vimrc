set nocompatible
filetype off                  " required
"
"source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
"behave mswin
"
"
"
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
" vundle packages
Plugin 'VundleVim/Vundle.vim'
Plugin 'vkmyla/fem'
"Bundle 'gmarik/vundle'
"Bundle 'ervandew/supertab'
Plugin 'ctrlp.vim'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'mbbill/undotree'
"Bundle 'regedarek/ZoomWin'
"Bundle 'Syntastic'
"Bundle 'matchit.zip'
"Bundle 'tComment'
"" Bundle 'tristen/vim-sparkup'
"" Bundle 'plasticboy/vim-markdown'
"" Bundle 'toyamarinyon/vim-swift'
"" Bundle 'mustache/vim-mustache-handlebars'
"" Bundle 'slim-template/vim-slim'
"" Bundle 'tpope/vim-fugitive'
"" Bundle 'fatih/vim-go'
Plugin 'mileszs/ack.vim'
""
"" Plugin cickill/vim-pasta'
""
"Bundle 'tmhedberg/SimpylFold'
Plugin 'Raimondi/delimitMate'
Plugin 'tpope/vim-surround'
Plugin 'klen/python-mode'
""Bundle 'Lokaltog/vim-powerline'
""Bundle 'ggreer/the_silver_searcher'
"Bundle 'rking/ag.vim'
Plugin 'vim-scripts/ctags.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Easy Align Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'junegunn/vim-easy-align'                
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

let g:easy_align_delimiters = {
      \ '>': {'pattern': '>>\|=>\|>'},
      \ '#': {'pattern': '#'},
      \ ';': {'pattern': ';'}
      \}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin 'vim-scripts/perl-support.vim'
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256
Plugin 'chriskempson/tomorrow-theme'
Plugin 'tyrannicaltoucan/vim-quantum'
Plugin 'tomasr/molokai'
Plugin 'rafi/awesome-vim-colorschemes'
" Plugin 'flazz/vim-colorschemes'
Plugin 'junegunn/seoul256.vim'
Plugin 'lsdr/monokai'
Plugin 'xoria256.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'NLKNguyen/papercolor-theme'
""Plugin 'bling/vim-airline'
Plugin 'powerline/fonts'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'nanotech/jellybeans.vim'
let g:airline_powerline_fonts = 1
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-colorscheme-switcher'
map <F5> :PrevColorScheme<CR>
map <F6> :NextColorScheme<CR>
map <F4> :echo g:colors_name<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let base16colorspace=256  " Access colors present in 256 colorspace
call togglebg#map("<F9>")
syntax enable
set background=dark
" set termguicolors
" colorscheme quantum
" set t_Co=16
" let g:solarized_termcolors=256
" colorscheme PaperColor
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme molokai_template
" colorscheme solarized
" colorscheme seoul256
" colorscheme monokai
" colorscheme molokai
" colorscheme molokai-perl
" colorscheme jellybeans
" colorscheme material-monokai
" colorscheme smyck
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:jellybeans_use_lowcolor_black = 1
" let g:airline_theme='base16_atelierforest'
" set bg=dark
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Defaults
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nu
set ch=2
set cursorline cursorcolumn
set ruler
set tabstop=2
set shiftwidth=2
set expandtab
set hlsearch
set ic
set relativenumber
set sessionoptions-=options
set foldmethod=expr
set foldcolumn=2
au BufRead,BufNewFile *.inp		set filetype=abaqus
au BufRead,BufNewFile *.bdf		set filetype=nas
au BufRead,BufNewFile *.fem		set filetype=nas
au BufRead,BufNewFile *.dat		set filetype=nas
au BufRead,BufNewFile *.ses             set filetype=patran
au BufRead,BufNewFile *.bdfi            set filetype=nas
au BufRead,BufNewFile *.ses.??          set filetype=patran
au BufRead,BufNewFile *.pc          set filetype=pam
au BufRead,BufNewFile *.inc          set filetype=pam
"PamCrash comment (cc) and uncomment (cu) code
noremap   <silent> cc      :s,^\(.*$\)\@=,\$,e<CR>:nohls<CR>zvj
noremap   <silent> cu      :s,^\$\(\(\s*$\)\@<!.*$\),\1,e<CR>:nohls<CR>zvj
:imap jj <ESC>
nnoremap <ESC><ESC> :silent! nohls<CR>
set hlg=en
"backupfiles to another directory
set backupdir=~/.vimtmp,.
set directory=~/.vimtmp,.
"statusline
set laststatus=2
" insert newline and stay in normal mode and go new line
map <S-Enter> O<ESC>
map <CR> o<ESC>
" map goto file to gotofile in a new window
nnoremap <silent> gf <C-W>gf 
"map goto file to opn in a vsplit
nnoremap <silent> gs :vertical botright wincmd f<CR>
" enforce purity
"noremap  <Up> <Nop>
"noremap  <Down> <Nop>
"noremap  <Left> <Nop>
"noremap  <Right> <Nop>
" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
" Mapping Quick Indent in Normal Mode as in Insert Mode
"nmap <C-i> a<C-t><Esc>
"nmap <C-q> a<C-d><Esc>
"switch window with direction
"nnoremap <silent> ww <C-W>
"open file in horizontal split
"nnoremap <silent> jf :vertical <C-W>gf
" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright   
"####################### omni completion #####################################
set omnifunc=syntaxcomplete#Complete
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin on
" All of your Plugins must be added before the following line
filetype plugin indent on  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Leader Mappings   
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:let mapleader = "ö"
set ttimeoutlen=4000
" Map save to leader 
nnoremap <leader>w :w<cr>
inoremap <leader>w <C-c>:w<cr>
" Map quit to leader 
nnoremap <leader>q :q<cr>
inoremap <leader>q <C-c>:q<cr>
" pairs with leader not necessary as the plugin takes care of it
" inoremap <leader>' ''<ESC>i
" inoremap <leader>" ""<ESC>i
" inoremap <leader>( ()<ESC>i
" inoremap <leader>8 []<ESC>i
" inoremap <leader>7 {}<ESC>i
" Map close line perl
nnoremap <leader><leader> A;<ESC>
inoremap <leader><leader> <C-c>A;<ESC>o
" comment/uncomment blocks of code (in vmode) not necessay as nerd commenter
" takes care of it
" nnoremap <leader>c :s/^/#/gi<Enter>
" nnoremap <leader>C :s/^#//gi<Enter>
" vnoremap <leader>c :s/^/#/gi<Enter>
" vnoremap <leader>C :s/^#//gi<Enter>
map <Leader>bg :let &background = ( &background == "dark"? "light" : "dark" )<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>u :UndotreeToggle<CR>
nmap <leader>j :CtrlP pwd<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" syntax color complex things like @{${"foo"}}
let perl_extended_vars = 1

" Tidy selected lines (or entire file) with _t:
nnoremap <silent> _t :%!perltidy -q<Enter>
vnoremap <silent> _t :!perltidy -q<Enter>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:keys_to_disable_if_not_preceded_by_count = ["j", "k", "h", "l"]
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Notes:
""   (1) To enhance the ergonomics of this sufficiently to make it practical, at
""       least, until your brain grows a new lobe dedicated to counting line offsets
""       in the background while you work, you should either make sure you have
""       something like the following in your `~/.vimrc`:
""
""           set number
""           if has('autocmd')
""           augroup vimrc_linenumbering
""               autocmd!
""               autocmd WinLeave *
""                           \ if &number |
""                           \   set norelativenumber |
""                           \ endif
""               autocmd BufWinEnter *
""                           \ if &number |
""                           \   set relativenumber |
""                           \ endif
""               autocmd VimEnter *
""                           \ if &number |
""                           \   set relativenumber |
""                           \ endif
""           augroup END
""           endif
""
""       or you have installed a plugin like
""       (vim-numbers)[https://github.com/myusuf3/numbers.vim].
""
""   (2) You might want to relax the constraint for horizontal motions, or
""       add other motions. You can customize the list of motions by
""       specifying the keys in the
""       `g:keys_to_disable_if_not_preceded_by_count` variable. For example,
""       the following only enforces count-prefixed motions for "j" and "k":
""
""         let g:keys_to_disable_if_not_preceded_by_count = ["j", "k"]
""
""function! DisableIfNonCounted(move) range
""    if v:count
""        return a:move
""    else
""        " You can make this do something annoying like:
""           " echoerr "Count required!"
""           " sleep 2
""        return ""
""    endif
""endfunction
""
"let g:lastmove = 1
"function! DisableIfNonCounted(move) range
"    if g:lastmove != a:move
"        let g:lastmove = a:move
"        return a:move
"    else
"        if v:count
"            let g:lastmove = a:move
"            return a:move
"        else
"            " You can make this do something annoying like:
"               " echoerr "Count required!"
"               " sleep 2
"            return ""
"        endif
"    endif
"    let g:lastmove = a:move
"endfunction
"
"function! SetDisablingOfBasicMotionsIfNonCounted(on)
"    let keys_to_disable = get(g:, "keys_to_disable_if_not_preceded_by_count", ["j", "k", "l", "h"])
"    if a:on
"        for key in keys_to_disable
"            execute "noremap <expr> <silent> " . key . " DisableIfNonCounted('" . key . "')"
"        endfor
"        let g:keys_to_disable_if_not_preceded_by_count = keys_to_disable
"        let g:is_non_counted_basic_motions_disabled = 1
"    else
"        for key in keys_to_disable
"            try
"                execute "unmap " . key
"            catch /E31:/
"            endtry
"        endfor
"        let g:is_non_counted_basic_motions_disabled = 0
"    endif
"endfunction
"
"function! ToggleDisablingOfBasicMotionsIfNonCounted()
"    let is_disabled = get(g:, "is_non_counted_basic_motions_disabled", 0)
"    if is_disabled
"        call SetDisablingOfBasicMotionsIfNonCounted(0)
"    else
"        call SetDisablingOfBasicMotionsIfNonCounted(1)
"    endif
"endfunction
"
"command! ToggleDisablingOfNonCountedBasicMotions :call ToggleDisablingOfBasicMotionsIfNonCounted()
"command! DisableNonCountedBasicMotions :call SetDisablingOfBasicMotionsIfNonCounted(1)
"command! EnableNonCountedBasicMotions :call SetDisablingOfBasicMotionsIfNonCounted(0)
"
"DisableNonCountedBasicMotions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tags=./tags,tags;$HOME
nmap <leader>nn :NERDTreeToggle<CR>
nmap <leader>n  :NERDTreeFocus<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Nerd Commenter Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
"
" " Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
"
" " Align line-wise comment delimiters flush left instead of following code
" indentation
let g:NERDDefaultAlign = 'left'
"
" " Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
"
" " Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
"
" " Allow commenting and inverting empty lines (useful when commenting a
" region)
let g:NERDCommentEmptyLines = 1
"
" " Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=====[ Search folding ]=====================

" Don't start new buffers folded
set foldlevelstart=99

" Highlight folds
" highlight Folded  ctermfg=cyan ctermbg=black llllllll [   [sdf

" Toggle on and off...
nmap <silent> <expr>  zz  FS_ToggleFoldAroundSearch({'context':1})

" Show only sub defns (and maybe comments)...
let perl_sub_pat = '^\s*\%(sub\|func\|method\|package\)\s\+\k\+'
let vim_sub_pat  = '^\s*fu\%[nction!]\s\+\k\+'
augroup FoldSub
    autocmd!
    autocmd BufEnter * nmap <silent> <expr>  zp  FS_FoldAroundTarget(perl_sub_pat,{'context':1})
    autocmd BufEnter * nmap <silent> <expr>  za  FS_FoldAroundTarget(perl_sub_pat.'\zs\\|^\s*#.*',{'context':0, 'folds':'invisible'})
    autocmd BufEnter *.vim,.vimrc nmap <silent> <expr>  zp  FS_FoldAroundTarget(vim_sub_pat,{'context':1})
    autocmd BufEnter *.vim,.vimrc nmap <silent> <expr>  za  FS_FoldAroundTarget(vim_sub_pat.'\\|^\s*".*',{'context':0, 'folds':'invisible'})
    autocmd BufEnter * nmap <silent> <expr>             zv  FS_FoldAroundTarget(vim_sub_pat.'\\|^\s*".*',{'context':0, 'folds':'invisible'})
augroup END
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" word seperators 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:delimitMate_enabled = 1
let g:delimitMate_autoclose = 1
let b:delimitMate_eol_marker = ';'
" set iskeyword+="@,48-57,_,192-255,95"
" set iskeyword-=_
" fire[]
" water("ssdf")
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""persistent undo""""""""""""""""""""""""""""""""""""""
if has('persistent_undo')
  set undofile
  set undodir=$HOME/.vim/undo
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
