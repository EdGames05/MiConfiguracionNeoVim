
call plug#begin(stdpath('data'))

" Plugin para copilot
Plug 'github/copilot.vim'

" Soporte para TypeScript
"Plug 'leafgarland/typescript-vim'

" Buscar definiciones de funciones
Plug 'majutsushi/tagbar'

" Soporte para jsx
Plug 'mxw/vim-jsx'

" Autocompletado
Plug 'davidhalter/jedi-vim'

" NerdTree
" Ctrl+w es para cambiar de ventanta (splits)
Plug 'preservim/nerdtree'

" Formatear diferentes lenguajes de programación
Plug 'rhysd/vim-clang-format'

" Tema oscuro Papaya
Plug 'henrynewcomer/vim-theme-papaya'

" Tab Panels
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

" Tabnine
Plug 'zxqfl/tabnine-vim'

call plug#end()

" Iniciar nerdtree cuando se abra neovim
autocmd VimEnter * NERDTree
" Toggle NerdTree
nmap <F6> :NERDTreeToggle<CR>
" Actualizar nerdtree despues de crea un archivo
nmap <F5> :NERDTreeRefreshRoot<CR>

" Establecer tema de papaya
colorscheme papaya

" Agregar que la terminal flotante se oculte con F7
nmap <F7> :FloatermToggle<CR>
" Agregar cambio de la terminal anterior con F8
nmap <F8> :FloatermPrevious<CR>
" Agregar cambio de la terminal siguiente con F9
nmap <F9> :FloatermNext<CR>

" Usar TagBar
nmap <F12> :TagbarToggle<CR>

" Añadir codificación utf8
set encoding=utf-8

" Insertar caracteres que no estan en el teclado
inoremap <C-.> >
inoremap <C-,> <
inoremap <C-/> \
"inoremap <C-|> `

filetype plugin indent on
" Mostrar 4 espacios
set tabstop=4
" Cuando encuentre mayor a 4 espacios detenerse
set shiftwidth=4
" Insertar 4 espacios
set expandtab

" Copiar y pegar
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

vmap <silent> <C-c> "+y
nmap <silent> <C-c> "+yy
vmap <silent> <C-v> "+p
imap <silent> <C-v> <Esc>"+pa
