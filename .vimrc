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
set expandtab                 " Identa com espaços
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

autocmd! bufwritepost .vimrc source % " Reloading o .vimrc sem quando salva                                                                                                                                                          
filetype plugin indent on

" Better copy & paste
" When you want to paste large blocks of code into vim, press F2 before you
" paste. At the bottom you should see ``-- INSERT (paste) --``
set pastetoggle=<F2>
set clipboard=unnamed


source ~/.vim/themes/terroo-colors.vim
" source ~/.vim/themes/dracula.vim
" source ~/.vim/themes/dogrun.vim
" source ~/.vim/themes/defminus.vim
" source ~/.vim/themes/amber.vim

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
nnoremap <leader>. :lcd %:p:h<CR>

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


""""""""""""""""""""""""""""""""""""""""
"" Plugins
""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-github-dashboard', { 'on': ['GHDashboard', 'GHActivity'] }
Plug 'preservim/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
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
" let g:airline_theme = 'powerlineish'
let g:airline_theme = 'deus'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1

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




































