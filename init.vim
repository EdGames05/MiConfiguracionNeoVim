
call plug#begin(stdpath('data'))

" Soporte para TypeScript
Plug 'leafgarland/typescript-vim'

" NerdTree
" Ctrl+w es para cambiar de ventanta (splits)
Plug 'preservim/nerdtree'

" Formatear diferentes lenguajes de programación
Plug 'rhysd/vim-clang-format'

" Autocompletado
Plug 'valloric/youcompleteme'

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

" Establecer tema de papaya
colorscheme papaya

" Agregar que la terminal flotante se oculte con F7
nmap <F7> :FloatermToggle<CR>
" Agregar cambio de la terminal anterior con F8
nmap <F8> :FloatermPrevious<CR>
" Agregar cambio de la terminal siguiente con F9
nmap <F9> :FloatermNext<CR>
