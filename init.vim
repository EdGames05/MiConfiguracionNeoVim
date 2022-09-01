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
"inoremap <C-|> `

"filetype plugin indent on
" Mostrar 4 espacios
" set tabstop=4
" Cuando encuentre mayor a 4 espacios detenerse
" set shiftwidth=4
" Insertar 4 espacios
" set expandtab

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
