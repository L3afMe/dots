"""""""""""""
"  Folding  "
"""""""""""""
" Credits to https://vi.stackexchange.com/a/6608 
function! VimFolds(lnum)
  let s:thisline = getline(a:lnum)
  if match(s:thisline, '^"" ') >= 0
    return '>2'
  endif
  if match(s:thisline, '^""" ') >= 0
    return '>3'
  endif
  let s:two_following_lines = 0
  if line(a:lnum) + 2 <= line('$')
    let s:line_1_after = getline(a:lnum+1)
    let s:line_2_after = getline(a:lnum+2)
    let s:two_following_lines = 1
  endif
  if !s:two_following_lines
      return '='
  else
    if (match(s:thisline, '^"""""') >= 0) &&
       \ (match(s:line_1_after, '^"  ') >= 0) &&
       \ (match(s:line_2_after, '^""""') >= 0)
      return '>1'
    else
      return '='
    endif
  endif
endfunction

function! VimFoldText()
  " handle special case of normal comment first
  let s:info = '('.string(v:foldend-v:foldstart).' l)'
  if v:foldlevel == 1
    let s:line = ' ◇ '.getline(v:foldstart+1)[3:-2]
  elseif v:foldlevel == 2
    let s:line = '   ●  '.getline(v:foldstart)[3:]
  elseif v:foldlevel == 3
    let s:line = '     ▪ '.getline(v:foldstart)[4:]
  endif
  if strwidth(s:line) > 80 - len(s:info) - 3
    return s:line[:79-len(s:info)-3+len(s:line)-strwidth(s:line)].'...'.s:info
  else
    return s:line.repeat(' ', 80 - strwidth(s:line) - len(s:info)).s:info
  endif
endfunction

let mapleader = "\<space>"
" Toggle folds
nnoremap <silent> <leader><Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <leader><space> zf

"""""""""""""""""""
"  Auto Commands  "
"""""""""""""""""""
augroup dynamic_smartcase
  autocmd!
  autocmd CmdLineEnter : set nosmartcase
  autocmd CmdLineLeave : set smartcase
augroup END

augroup term_settings
  autocmd!
  autocmd TermOpen * setlocal norelativenumber nonumber
  autocmd TermOpen * startinsert
augroup END

augroup resume_edit_position
  autocmd!
  autocmd BufReadPost *
        \ if line("'\"") > 1 && line("'\"") <= line("$") && &ft !~# 'commit' | execute "normal! g`\"zvzz" | endif
augroup END

augroup non_utf8_file_warn
  autocmd!
  autocmd BufRead * if &fileencoding != 'utf-8' | unsilent echomsg 'File not in UTF-8 format!' | endif
augroup END

augroup auto_read
  autocmd!
  autocmd FocusGained,BufEnter,CursorHold,CursorHoldI *
        \ if mode() == 'n' && getcmdwintype() == '' | checktime | endif
  autocmd FileChangedShellPost * echohl WarningMsg
        \ | echo "File changed on disk. Buffer reloaded!" | echohl None
augroup END

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu | set nornu | endif
augroup END

augroup custom_highlight
  autocmd!
  autocmd ColorScheme * highlight YankColor ctermfg=59 ctermbg=41 guifg=#34495E guibg=#2ECC71
augroup END

augroup highlight_yank
  autocmd!
  au TextYankPost * silent! lua vim.highlight.on_yank{higroup="YankColor", timeout=300}
augroup END

function! s:empty_message(timer)
  if mode() ==# 'n'
    echo ''
  endif
endfunction

augroup cmd_msg_cls
    autocmd!
    autocmd CursorHold * call timer_start(25000, funcref('s:empty_message'))
augroup END

augroup auto_save_folds
  autocmd!
  autocmd BufWinLeave * silent mkview
  autocmd BufWinEnter * silent loadview
augroup END

"""""""""""""
"  Mapping  "
"""""""""""""
nnoremap ; :
xnoremap ; :

nnoremap <leader>p m`o<ESC>p``
nnoremap <leader>P m`O<ESC>p``

nnoremap <silent> <leader>w :<C-U>update<CR>
nnoremap <silent> <leader>q :<C-U>x<CR>

nnoremap <silent> <leader>Q :<C-U>qa<CR>

nnoremap <expr> oo printf('m`%so<ESC>``', v:count1)
nnoremap <expr> OO printf('m`%sO<ESC>``', v:count1)

nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')
nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')

nnoremap <Tab> %

nnoremap H ^
xnoremap H ^
nnoremap L g_
xnoremap L g_

xnoremap < <gv
xnoremap > >gv

nnoremap <C-H> :%s/
xnoremap <C-H> :s/

tnoremap <ESC> <C-\><C-n>

inoremap <S-Tab> <ESC><<i

nnoremap <silent> <leader>y :<C-U>%y<CR>

"""""""""""""""
"  Functions  "
"""""""""""""""
let s:showSynEnabled=0
function! s:ShowSyn(auto)
    if a:auto == 0 || s:showSynEnabled == 1
        for i1 in synstack(line("."), col("."))
            let i2 = synIDtrans(i1)
            let n1 = synIDattr(i1, "name")
            let n2 = synIDattr(i2, "name")
            echo n1 "->" n2
        endfor
    endif
endfunction

function! ShowSynEnable()
    let s:showSynEnabled = 1
    call s:ShowSyn(1)
endfunction

function! ShowSynDisable()
    let s:showSynEnabled = 0
endfunction

function! ShowSyn()
    call s:ShowSyn(0)
endfunction

map gm :call ShowSyn()<CR>
map gme :call ShowSynEnable()<CR>
map gmd :call ShowSynDisable()<CR>

"""""""""""""
"  Options  "
"""""""""""""
"" General
set termguicolors

set splitbelow splitright

set timeoutlen=300
set updatetime=300

set cmdheight=1

set noswapfile

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set foldlevelstart=0
set foldmethod=expr
set foldexpr=VimFolds(v:lnum)
set foldtext=VimFoldText()

set number relativenumber

set fileencoding=utf-8

set linebreak
set showbreak=↪

set wildmode=list:longest

set cursorline

set scrolloff=5

set mouse=nic
set mousemodel=popup

set noshowmode

set fileformats=unix

set inccommand=nosplit

set wildignore+=*.o,*.obj,*.bin,*.dll,*.exe
set wildignore+=*/.git/*,*/.svn/*,*/__pycache__/*,*/build/**
set wildignore+=*.jpg,*.png,*.jpeg,*.bmp,*.gif,*.tiff,*.svg,*.ico
set wildignore+=*.pyc
set wildignore+=*.DS_Store
set wildignore+=*.aux,*.bbl,*.blg,*.brf,*.fls,*.fdb_latexmk,*.synctex.gz
set wildignorecase

set confirm

set visualbell noerrorbells

set history=500

set list listchars=tab:▸\ ,extends:❯,precedes:❮,nbsp:+

set autowrite

set undofile

set pumheight=10

set shiftround

set virtualedit=block

set formatoptions+=mM

set nojoinspaces

set synmaxcol=200
set nostartofline

set signcolumn=auto:2

set isfname-==
set isfname-=,

"" Language Specific
""" Smali
augroup smali
    autocmd!

augroup END

""" LaTeX
let g:tex_flavor='latex'
augroup latex
  autocmd!

  autocmd BufNewFile,BufRead *.tex setlocal expandtab tabstop=2 shiftwidth=2
augroup END

""" JavaScript
augroup js
  autocmd!

  autocmd BufNewFile,BufRead *.js setlocal noexpandtab tabstop=2 shiftwidth=2
  autocmd FileType js nmap <leader>f CocCommand prettier.formatFile<CR>
augroup END

""" Golang

augroup go
  autocmd!

  " Show by default 4 spaces for a tab
  autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

  autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
  autocmd FileType go nmap <leader>t <Plug>(go-test)
  autocmd FileType go nmap <leader>r <Plug>(go-run)
  autocmd FileType go nmap <Leader>d <Plug>(go-def)
  autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
  autocmd FileType go nmap <Leader>i <Plug>(go-info)
  autocmd FileType go nmap <Leader>l <Plug>(go-metalinter)
  autocmd FileType go nmap <Leader>v <Plug>(go-def-vertical)
  autocmd FileType go nmap <Leader>s <Plug>(go-def-split)

  autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
  autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
  autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
  autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')
augroup END

"""""""""""""
"  Plugins  "
"""""""""""""
" TODO: Test
let g:plugin_home=expand(stdpath('data') . '/plugged')
"" Install plugins
if empty(readdir(g:plugin_home))
  augroup plug_init
    autocmd!
    autocmd VimEnter * PlugInstall --sync | quit |source $MYVIMRC
  augroup END
endif

"" Plug plugins
call plug#begin(g:plugin_home)

""" Autocomplete
Plug 'neovim/nvim-lspconfig'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}

""" Language Specific
" Rust
Plug 'rust-lang/rust.vim'
" Required for rust.vim for Playpen
Plug 'mattn/webapi-vim'

" Golang
Plug 'fatih/vim-go'

" LaTeX
Plug 'lervag/vimtex'

" Lua
Plug 'tbastos/vim-lua'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" Smali
Plug 'mzlogin/vim-smali'

" Nix
Plug 'LnL7/vim-nix'

""" Search
" Clear highlighting automatically
Plug 'romainl/vim-cool'

" Improve * motions
Plug 'haya14busa/vim-asterisk'

""" UI
" Themes
Plug 'L3afMe/rose-pine-sepia-nvim'
Plug 'arcticicestudio/nord-vim'
Plug 'lifepillar/vim-gruvbox8'
Plug 'ajmwagar/vim-deus'
Plug 'lifepillar/vim-solarized8'
Plug 'joshdick/onedark.vim'
Plug 'KeitaNakamura/neodark.vim'
Plug 'sainnhe/edge'
Plug 'ghifarit53/tokyonight-vim'
Plug 'sainnhe/sonokai'
Plug 'sainnhe/gruvbox-material'
Plug 'nightsense/strawberry'
Plug 'cocopon/iceberg.vim'

" Display hightlight group names and heirachy
Plug 'cocopon/Inspecthi.vim'

" Preview RGB colors
Plug 'norcalli/nvim-colorizer.lua'

" Nicer start screen
Plug 'mhinz/vim-startify'

" Better syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

""" File Editing
" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-commentary'
Plug '907th/vim-auto-save'
Plug 'wellle/targets.vim'

""" Git plugins
Plug 'mhinz/vim-signify'

""" Misc
Plug 'dmix/elvish.vim', { 'on_ft': ['elvish']}
Plug 'andymass/vim-matchup'
Plug 'jiangmiao/auto-pairs'
Plug 'machakann/vim-sandwich'
Plug 'skywind3000/asyncrun.vim'
Plug 'cespare/vim-toml'
Plug 'ojroques/vim-oscyank'

""" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

"" Configure plugins
call plug#end()

""" Theme
colorscheme rose-pine-sepia

""" nvim-lspconfig
lua << EOF
local lspconfig = require'lspconfig'
local configs = require'lspconfig/configs'
if not lspconfig.smali_lsp then
  configs.smali_lsp = {
    default_config = {
      cmd = {'/home/l3af/Projects/Rust/smali-lsp/target/debug/smali-lsp'};
      filetypes = {
                \   'smali'
                \ };
      root_dir = function(fname)
        root_dir = lspconfig.util.root_pattern('AndroidManifest.xml'); 
      end;
      settings = {
               \ 
               \ };
    };
  }
end
lspconfig.smali_lsp.setup{}

EOF

""" coc.nvim
set runtimepath^=/home/l3af/Projects/TypeScript/coc-smali

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-space> coc#refresh()

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

autocmd CursorHold * silent call CocActionAsync('highlight')

nmap <leader>rn <Plug>(coc-rename)

xmap <leader>f <Plug>(coc-format-selected)
nmap <leader>f <Plug>(coc-format-selected)

nnoremap <silent><nowait> <leader>a  :<C-u>CocList diagnostics<cr>
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>

" Add missing Go imports on save
autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')

""" rust.vim
let g:rust_clip_command = 'xclip -selection clipboard'

""" vim-asterisk
let g:asterisk#keeppos = 1

map *   <Plug>(asterisk-*)
map #   <Plug>(asterisk-#)
map g*  <Plug>(asterisk-g*)
map g#  <Plug>(asterisk-g#)
map z*  <Plug>(asterisk-z*)
map gz* <Plug>(asterisk-gz*)
map z#  <Plug>(asterisk-z#)
map gz# <Plug>(asterisk-gz#)

""" vim-startify
function! s:gitModified()
    let files = systemlist('git ls-files -m 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

" same as above, but show untracked files, honouring .gitignore
function! s:gitUntracked()
    let files = systemlist('git ls-files -o --exclude-standard 2>/dev/null')
   return map(files, "{'line': v:val, 'path': v:val}")
endfunction

let g:startify_lists = [
        \ { 'type': 'files',     'header': ['   MRU']            },
        \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
        \ { 'type': 'sessions',  'header': ['   Sessions']       },
        \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
        \ { 'type': function('s:gitModified'),  'header': ['   git modified']},
        \ { 'type': function('s:gitUntracked'), 'header': ['   git untracked']},
        \ { 'type': 'commands',  'header': ['   Commands']       },
        \ ]

""" ultisnips
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

""" vim-auto-save
let g:auto_save = 1

""" vim-oscyank
vnoremap <leader>c :OSCYank<CR>
autocmd TextYankPost * if v:event.operator is 'y' && v:event.regname is '+' | OSCYankReg + | endif

""" vim-startify
let g:startify_change_to_dir = 0
let g:startify_fortune_use_unicode = 1

""" telescope.nvim
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

""" vim-go
let g:go_fmt_command = "goimports"
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_generate_tags = 1

""" markdown-preview.nvim
let g:mkdp_auto_start = 1
let g:mkdp_browser = 'qutebrowser'
let g:mkdp_page_title = '${name}'
