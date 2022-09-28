call plug#begin(stdpath('data'))

" Plugin para buscar entre archivos
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Para navegar en el código
Plug 'https://github.com/preservim/tagbar'

" CSS Colores
Plug 'https://github.com/ap/vim-css-color'

" Multiples cursores
Plug 'terryma/vim-multiple-cursors'

" Barra inferior
Plug 'vim-airline/vim-airline'

" Iconos
Plug 'ryanoasis/vim-devicons'

" Plugin para poner números a la izquierda del código
Plug 'myusuf3/numbers.vim'

" Plugin para copilot
Plug 'github/copilot.vim'

" Autocompletado
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" NerdTree
" Ctrl+w es para cambiar de ventanta (splits)
Plug 'preservim/nerdtree'

" Tema oscuro tender
Plug 'jacoborus/tender.vim'

" Pestañas por cada archivo abierto
Plug 'mkitt/tabline.vim'

" Terminal integrada
" Ejemplo de uso:
" :T <comandos>
Plug 'kassio/neoterm'

" Abrir dos archivos y hacer split
" Ejemplo de uso:
" :SplitOpen filename
Plug 'mandlm/vim-split-open'

" Terminal flotante
" Ejemplo de uso:
" :FloatermNew
" Esconder la termina flotante
" :FloatermToggle
" Cambiar de terminal
" FloatermNext ó FloatermPrev
Plug 'voldikss/vim-floaterm'

call plug#end()

" Iniciar nerdtree cuando se abra neovim
autocmd VimEnter * NERDTree
" Toggle NerdTree
nmap <F6> :NERDTreeToggle<CR>
" Actualizar nerdtree despues de crea un archivo
nmap <F5> :NERDTreeRefreshRoot<CR>
" Ver archivos ocultos
let NERDTreeShowHidden=1

" Establecer tema de papaya
" If you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Theme
syntax enable
colorscheme tender

" Agregar que la terminal flotante se oculte con ESPACIO t f
nmap <space>tf :FloatermToggle<CR>
" Agregar cambio de la terminal anterior con ESPACIO t p
nmap <space>tp :FloatermPrevious<CR>
" Agregar cambio de la terminal siguiente con ESPACIO t n
nmap <space>tn :FloatermNext<CR>

" Usar TagBar
nmap <F12> :TagbarToggle<CR>

" Añadir codificación utf8
set encoding=utf-8

" Insertar caracteres que no estan en el teclado
inoremap <C-.> >
inoremap <C-,> <
inoremap <C-/> \
inoremap <C-|> `

syntax on
" Spaces & Tabs {{{
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4    " number of spaces to use for autoindent
set expandtab       " tabs are space
set autoindent
set copyindent      " copy indent from the previous line
" }}} Spaces & Tabs

" Folding {{{
set foldenable
set foldlevelstart=10  " default folding level when buffer is opened
set foldnestmax=10     " maximum nested fold
set foldmethod=syntax  " fold based on indentation
" }}} Folding

" Copiar y pegar
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

vmap <silent> <C-c> "+y
nmap <silent> <C-c> "+yy
vmap <silent> <C-v> "+p
imap <silent> <C-v> <Esc>"+pa

" *******************************************************************************************************************************
" Configurando Autocompletado
" *******************************************************************************************************************************
" Importar configuración de Autocompletado
source autocompletado-coc.vim

" use <tab> for trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <silent><expr> <cr> coc#pum#visible() && coc#pum#info()['index'] != -1 ? coc#pum#confirm() : "\<C-g>u\<CR>"
" use <c-space>for trigger completion
inoremap <silent><expr> <c-space> coc#refresh()
" Use <C-@> on vim
inoremap <silent><expr> <c-@> coc#refresh()
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"

" *******************************************************************************************************************************
" *******************************************************************************************************************************
" *******************************************************************************************************************************

" Configurar Ctrl+z
nnoremap <C-z> :u<CR>
inoremap <C-z> <C-o>:u<CR>


" Configurando colores al NERDTree
set encoding=UTF-8
let g:airline_powerline_fonts = 1

" Configurar scroll del mouse
set mouse=a

" Quitar lo de cortar texto
set nowrap

" Buscar archivos usando Telescope
nnoremap <space>ff <cmd>Telescope find_files<cr>
nnoremap <space>fg <cmd>Telescope live_grep<cr>
nnoremap <space>fb <cmd>Telescope buffers<cr>
nnoremap <space>fh <cmd>Telescope help_tags<cr>
