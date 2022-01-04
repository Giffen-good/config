call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
" On-demand loading
Plug 'leafOfTree/vim-vue-plugin'
Plug 'preservim/nerdtree'
Plug 'voldikss/vim-floaterm'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
Plug 'lifepillar/vim-mucomplete'
Plug 'mrdotb/vim-tailwindcss'
call plug#end()


" Add longer undo history + persist even after changing buffers
set undodir=$HOME/.vim/undo
set undofile
set undolevels=1000
set undoreload=10000

" Set tab size
set shiftwidth=2
set tabstop=2


" look and feel
set number
syntax on

" MUcomplete settings
set completeopt+=menuone " mandatory setting
let g:mucomplete#enable_auto_at_startup = 1
set completeopt+=noselect " turn on autocompletion
set shortmess+=c " shut off completion messages


" tailwind not working yet 
nnoremap <leader>tt set completefunc=tailwind#complete<cr>
" Add this autocmd to your vimrc to close the preview window after the completion is done
autocmd CompleteDone * pclose


" Vim session remove autosave prompt
let g:session_autosave = 'no'
let g:session_autosave_periodic = 1

let g:vim_vue_plugin_config = { 
      \'syntax': {
      \   'template': ['html'],
      \   'script': ['javascript'],
      \   'style': ['css'],
      \},
      \'full_syntax': [],
      \'initial_indent': [],
      \'attribute': 0,
      \'keyword': 0,
      \'foldexpr': 0,
      \'debug': 0,
      \}
