""  Tentativa de criar um vimrc funcional
""  e bem magro - 26/03/2020
"" https://gist.github.com/heronmedeiros/111877
""
"
" """"""""""""""""""""""""""""""
" Configurações básicas
" """"""""""""""""""""""""""""""
syntax on
set ruler
set number                    " Numera as linhas
set linebreak                 " Quebra a linha sem quebrar a palavra
set wildmode=longest,list     " Completa o comando com TAB igual o bash
ret expandtab                 " Identa com espaços
set autochdir                 " Vai pro diretório do arquivo aberto
set cursorline                " Mostra linha atual mais clara
set cuc                       " Linha no curso vertical
set hlsearch                  " Termo procurado em destaque
set pumheight=15              " Máximo de palavras no popup de autocomplete
set completeopt=menu,preview  " Como mostrar as possibilidade de inserção
set spelllang=pt              " Escolhe o dicionário
set foldenable                " Habilita agrupamento de blocos
set foldcolumn=1              " Exibie coluna com + e - para agrupamentos
set foldmethod=marker         " Define agrupamento por marcas
set foldmarker={,}            " Define marcas de agrupamento como { e }
set foldlevel=9999            " Inicia com todos os agrupamentos abertos
set confirm                   " Pergunta antes de fechar
set title                     " Exibe nome do arquivo
let mapleader = ","           " Mapeia <leader> key

" """"""""""""""""""""""""""""""""""""""
" Auto formatações
" """"""""""""""""""""""""""""""""""""""
" --------- Limpar automagimente espaços à direita ------------------
" --------- Python
autocmd BufWritePre *.py :%s/\s\+$//e
" --------- XML
autocmd BufWritePre *.xml :%s/\s\+$//e

" --------  ALternando entre os modos coluna de numeros da linha
map <leader>rn :set rnu!<cr>

autocmd! bufwritepost .vimrc source % " Reloading o .vimrc sem quando salva
filetype plugin indent on

" Better copy & paste
" When you want to paste large blocks of code into vim, press F2 before you
" paste. At the bottom you should see ``-- INSERT (paste) --``
set pastetoggle=<F2>
set clipboard=unnamed

" """"""""""""""""""""""""""""""""""""""
" COLORSCHEME
" """"""""""""""""""""""""""""""""""""""

" ----------------------- Kuroi
set background=dark   "or use the light theme: set background=light
colorscheme kuroi
set t_Co=256
set termguicolors
" -------------------------
" ----------------------- Sonokai
" set t_Co=256
" syntax enable
" set termguicolors
" let g:sonokai_style = 'maia'
" let g:sonokai_enable_italic = 1
" let g:sonokai_disable_italic_comment = 1
" colorscheme sonokai

" ----------------------- ZenBurn
" colorscheme zenburn
" set guifont=Monaco:h14

" ----------------------- Gruvbox-material
" set termguicolors
" set background=dark
" let g:gruvbox_material_background = 'soft'
" colorscheme gruvbox-material

"------------------------ Material Monokai
" set background=dark
" set termguicolors
" colorscheme material-monokai
" let g:materialmonokai_italic=1
" let g:materialmonokai_subtle_spell=1

" ----------------------- Monokai
" colorscheme monokai
" ----------------------- Dogrun
" colorscheme dogrun
" ----------------------- Dracula
" colorscheme dracula

""""""""""""""""""""""""""""""""""""""""
"" IndentLine
""""""""""""""""""""""""""""""""""""""""
let g:indentLine_enabled = 1
let g:indentLine_concealcursor = 0
let g:indentLine_char = '┆'
let g:indentLine_faster = 1

""""""""""""""""""""""""""""""""""""""""
"" Permite selecionar com SHIFT + SETA como no Windows
""""""""""""""""""""""""""""""""""""""""
set selectmode=mouse,key
set mousemodel=popup
set keymodel=startsel,stopsel
set selection=exclusive

""""""""""""""""""""""""""""""""""""""""
"" Remove o highlight da sua ultima pesquisa
""""""""""""""""""""""""""""""""""""""""
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

""""""""""""""""""""""""""""""""""""""""
"" Serach insensitive
""""""""""""""""""""""""""""""""""""""""
set hlsearch
set incsearch
set ignorecase
set smartcase

""""""""""""""""""""""""""""""""""""""""
"" Reais programadores não usam TABs mas espaços :P
""""""""""""""""""""""""""""""""""""""""
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

""""""""""""""""""""""""""""""""""""""""
""  Lagura do documento
""""""""""""""""""""""""""""""""""""""""
set tw=120 " Limite do documento
set colorcolumn=120 " Posição da barra
highlight colorcolumn ctermbg=233 " Cor da barra
set nowrap
set fo-=t

""""""""""""""""""""""""""""""""""""""""
""  Fazer/desfazer
""""""""""""""""""""""""""""""""""""""""
set history=200
set undolevels=200

""""""""""""""""""""""""""""""""""""""""
"" Desabiitar o backup~  e swap files
""""""""""""""""""""""""""""""""""""""""
set nobackup
set nowritebackup
set noswapfile


""""""""""""""""""""""""""""""""""""""""
"" Atalhos & Mappings
""""""""""""""""""""""""""""""""""""""""
map <C-right> :bn<CR>         " Moving to right tab using CTRL+ the arrows
map <C-left> :bp<CR>          " Moving to left tab using CTRL+ the arrows
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

"" Split
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>

"" Set working directory
noremap <leader>. :lcd %:p:h<CR>

"" Opens an edit command with the path of the currently edited file filled in
noremap <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

"" Opens a tab edit command with the path of the currently edited file filled
noremap <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

"" Copy/Paste/Cut
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif

noremap YY "+y<CR>
noremap <leader>p "+gP<CR>
noremap XX "+x<CR>

"" Set Column number
map <Leader>n :set nonumber<CR> 
map <Leader>nn :set number<CR> 
"" Relative number
map <Leader>rn :set relativenumber<CR> 
map <Leader>rnn :set norelativenumber<CR> 

""""""""""""""""""""""""""""""""""""""""
"" Plugins
""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-github-dashboard', { 'on': ['GHDashboard', 'GHActivity'] }
Plug 'preservim/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
" -------- Python ----------------------
"python sytax checker
Plug 'nvie/vim-flake8'
Plug 'vim-scripts/Pydiction'
Plug 'vim-scripts/indentpython.vim'
Plug 'scrooloose/syntastic'
"auto-completion stuff
" Plug 'Valloric/YouCompleteMe'
Plug 'klen/rope-vim'
Plug 'ervandew/supertab'
""code folding
Plug 'tmhedberg/SimpylFold'
" -------- Themes ----------------------
Plug 'terroo/terroo-colors'
Plug 'jcherven/jummidark.vim'
Plug 'ParamagicDev/vim-medic_chalk'
Plug 'arzg/vim-colors-xcode'
Plug 'sainnhe/sonokai'
Plug 'wadackel/vim-dogrun'
Plug 'sainnhe/gruvbox-material'
Plug 'skielbasa/vim-material-monokai'
Plug 'lsdr/monokai'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'altercation/vim-colors-solarized'
Plug 'jnurmine/Zenburn'
Plug 'aonemd/kuroi.vim'

call plug#end()


""""""""""""""""""""""""""""""""""""""""
"" NerdTree
""""""""""""""""""""""""""""""""""""""""
map <f2> :NERDTreeToggle<CR>
nnoremap <silent> <F4> :NERDTreeFind<CR>
nnoremap <silent> <F3> :NERDTreeToggle<CR>

"" Abre o NERDTree quando não abrir nenhum arquivo
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"" Fechar o VIM se a unica janela a esquerda for o NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"" Ignore files in NERDTree
let NERDTreeIgnore=['\.pyc$', '\~$']

""""""""""""""""""""""""""""""""""""""""
""  Commentary
"""""""""""""""""""""""""""""""""""""""
map <leader>/ :Commentary<CR>


""""""""""""""""""""""""""""""""""""""""
""  GIT - Fugitive
"""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""
"" vim-airline
""""""""""""""""""""""""""""""""""""""""
"" Theme """"""""""""""""""""""""""""""
" let g:airline_theme = 'powerlineish'
let g:airline_theme = 'deus'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1

" let g:airline_theme='terrooairline'
" let g:airline_powerline_fonts = 1
" let g:airline#extensions#tabline#enabled = 1

let g:airline#extensions#virtualenv#enabled = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

"" TABs
let g:airline#extensions#tabline#enabled = 1

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
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''
endif


"""""""""""""""""""""""""""""""""""""""""""
""  PYTHON
"""""""""""""""""""""""""""""""""""""""""""

filetype plugin indent on    " enables filetype detection
let g:SimpylFold_docstring_preview = 1

"autocomplete
let g:ycm_autoclose_preview_window_after_completion=1

"custom keys
let mapleader=" "
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" call togglebg#map("<F5>")

"python with virtualenv support
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  sys.path.insert(0, project_base_dir)
  activate_this = os.path.join(project_base_dir,'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

"it would be nice to set tag files by the active virtualenv here
":set tags=~/mytags "tags for ctags and taglist
"omnicomplete
autocmd FileType python set omnifunc=pythoncomplete#Complete

"------------Start Python PEP 8 stuff----------------
" Number of spaces that a pre-existing tab is equal to.
au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=4

"spaces for indents
au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.py set softtabstop=4

" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red

" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Wrap text after a certain number of characters
au BufRead,BufNewFile *.py,*.pyw, set textwidth=100

" Use UNIX (\n) line endings.
au BufNewFile *.py,*.pyw,*.c,*.h set fileformat=unix

" Set the default file encoding to UTF-8:
set encoding=utf-8

" For full syntax highlighting:
let python_highlight_all=1
syntax on

" Keep indentation level from previous line:
autocmd FileType python set autoindent

" make backspaces more powerfull
set backspace=indent,eol,start


"Folding based on indentation:
autocmd FileType python set foldmethod=indent
"use space to open folds
nnoremap <space> za
"----------Stop python PEP 8 stuff--------------

"js stuff"
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
