:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

" turn on hybrid line numbers 
:set number relativenumber 
:set nu rnu

" key remaping 
inoremap jj <esc>
cnoremap jj <esc> 

" toggle nerdtree
nnoremap tt :NERDTreeToggle<CR>
nnoremap tf :NERDTreeFocus<CR>


" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Ctrl-p to search: 

" Arrow keys to navigate up and down, or <C-n> and <C-p>
" Enter to open in current window
" <C-t> to open in new tab
" <C-v> to open in vertical split
" <C-x> to open in horizontal split

" Formatting selected code.
xmap f  <Plug>(coc-format-selected)
nmap f  <Plug>(coc-format-selected)
nnoremap F :silent %!prettier --stdin-filepath %<CR>

" toggle completion
inoremap <silent><expr> <c-space> coc#refresh()

" TAB key to select completion 

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunctio
