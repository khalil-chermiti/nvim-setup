call plug#begin()

Plug 'https://github.com/preservim/nerdtree' 

Plug 'ryanoasis/vim-devicons' 


Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'} 

let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier']

"this will auto close ( [ {

Plug 'jiangmiao/auto-pairs'

" add highlighting and indenting to JSX and TSX files.

Plug 'yuezk/vim-js'

Plug 'HerringtonDarkholme/yats.vim'

Plug 'maxmellon/vim-jsx-pretty'


Plug 'itchyny/lightline.vim'

" add wilder
if has('nvim')
  function! UpdateRemotePlugins(...)
    " Needed to refresh runtime files
    let &rtp=&rtp
    UpdateRemotePlugins
  endfunction

  Plug 'gelguy/wilder.nvim', { 'do': function('UpdateRemotePlugins') }
else
  Plug 'gelguy/wilder.nvim'

  " To use Python remote plugin features in Vim, can be skipped
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif 

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

