set number
call plug#begin("~/.vim/plugged")
  " Plugin Section
  Plug 'dracula/vim'
  Plug 'scrooloose/nerdtree'
  Plug 'ryanoasis/vim-devicons'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'liuchengxu/vim-which-key'
  Plug 'jparise/vim-graphql'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'
  Plug 'yuezk/vim-js'
  Plug 'HerringtonDarkholme/yats.vim'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'neoclide/coc-eslint'
  Plug 'neoclide/coc-prettier'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'lewis6991/gitsigns.nvim'
call plug#end()"Config Section
" Theme
if (has("termguicolors"))
 set termguicolors
endif
syntax enable
colorscheme dracula
" set filetypes as typescriptreact
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact" Leader configuration
" theme for react syntax highlight orange
hi tsxCloseString guifg=#F99575
hi tsxCloseTag guifg=#F99575
hi tsxCloseTagName guifg=#F99575
hi tsxAttributeBraces guifg=#F99575
hi tsxEqual guifg=#F99575

let mapleader = ","
" File Explorer
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://bash
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>
" use alt+hjkl to move between split/vsplit panels
tnoremap <Leader>h <C-\><C-n><C-w>h
tnoremap <Leader>j <C-\><C-n><C-w>j
tnoremap <Leader>k <C-\><C-n><C-w>k
tnoremap <Leader>l <C-\><C-n><C-w>l
nnoremap <Leader>h <C-w>h
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>l <C-w>l
" NerdTree Revel File
nmap ,m :NERDTreeToggle<CR>
nmap ,n :NERDTreeFind<CR>

" Now, to search for a file, press Ctrl+P , search for the file you’re looking for, and press:
" CTRL+T to open it in a new tab.
" CTRL+S to open below (split view).
" CTRL+T to open to the side (vertical split).
" Enter to open it in the currently selected panel.
nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
" Syntax Higlight
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-eslint', 'coc-prettier', 'coc-tsserver', 'coc-yaml']
" Keymap to move between tabs
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>
" set tabs
set smartindent
set tabstop=2
set expandtab
set shiftwidth=2
"  Finding files 
nnoremap <silent> <Leader>d :Files<CR>
"  Finding in files
nnoremap <silent> <Leader>f :Ag<CR>
" WHichKey Config
" Define prefix dictionary for leader
call which_key#register(',', "g:which_key_map_leader")
nnoremap <silent> <leader> :<c-u>WhichKey ','<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual ','<CR>
let g:which_key_map_leader =  {}
" Autocomplete JS
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
" Shortcuts to select items in the autocompletition pop up
inoremap <expr> <TAB> pumvisible() ? "\<C-y>" : "\<CR>"
inoremap <expr> <Esc> pumvisible() ? "\<C-e>" : "\<Esc>"
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<Up>"

" Shortcut to navigation to definitions
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

let g:vim_jsx_pretty_colorful_config = 1 " default 0
" Show doc on hover
nnoremap <silent> K :call CocAction('doHover')<CR>
" rename by COC
nmap <leader>rn <Plug>(coc-rename)
" fix by COC
nmap <leader>do <Plug>(coc-codeaction)

lua require('gitsigns').setup()

