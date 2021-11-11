filetype plugin on


" indentation
set shiftwidth=2
set tabstop=2
set autoindent
set smartindent
set expandtab
set number

set cursorline

" swap
set noswapfile
set nobackup
set nowb

call plug#begin('~/.vim/plugged')

Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'alvan/vim-closetag'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kien/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'projekt0n/github-nvim-theme'
Plug 'ryanoasis/vim-devicons'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

call plug#end()

" theme
colorscheme github_dark_default

"nerdtree
nnoremap <C-e> :NERDTreeFocus<CR>
nnoremap <C-b> :NERDTreeToggle<CR>

"airline
noremap t1 1gt
noremap t2 2gt
noremap t3 3gt
noremap t4 4gt
noremap t5 5gt
noremap t6 6gt
noremap t7 7gt
noremap t8 8gt
noremap t9 9gt
noremap t0 :tablast<cr>
nnoremap tl :tabnext<CR>
nnoremap th :tabprev<CR>
nnoremap tn :tabnew<CR>

"close tag
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.php,*.js,*.jsx,*.tsx"

"ctrlp
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|dist\|.next\|node_modules\|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }

"coc
set updatetime=300

"coc extensions
let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-prettier']

"coc prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

"coc select suggestion with tab
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

