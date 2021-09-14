
call plug#begin(stdpath('data'))
" NerdTree
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

call plug#end()

" Iniciar nerdtree cuando se abra neovim
autocmd VimEnter * NERDTree
" Toggle NerdTree
nmap <F6> :NERDTreeToggle<CR>

" Establecer tema de papaya
colorscheme papaya
