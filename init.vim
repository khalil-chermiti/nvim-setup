"****************** basic setup ******************"
"****************** Plug extensions ******************"
"****************** wilder config ******************"
source ~/.config/nvim/plugins.vim
" Key bindings can be changed, see below
call wilder#setup({'modes': [':', '/', '?']})
call wilder#set_option('renderer', wilder#wildmenu_renderer(
      \ wilder#wildmenu_lightline_theme({
      \   'highlights': {},
      \   'highlighter': wilder#basic_highlighter(),
      \   'separator': ' · ',
      \ })))
"****************** coc config ******************"

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" TAB key to select completion 



" GoTo code navigation.
"****************** Nerd tree config ******************"

let NERDTreeMinimalUI=1
let NERDTreeShowHidden=1

" remove underline from nerd tree 
:hi cursorLine cterm=NONE gui=NONE

" toggle nerdtree
augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

"****************** lightline ******************"
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }
"****************** webdevicons ******************"

"loading the plugin
let g:webdevicons_enable = 1

" adding the flags to NERDTree
let g:webdevicons_enable_nerdtree = 1

" whether or not to show the nerdtree brackets around flags
let g:webdevicons_conceal_nerdtree_brackets = 1

" the amount of space to use after the glyph character (default ' ')
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '

" Force extra padding in NERDTree so that the filetype icons line up vertically
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1

source /home/khalil/.config/nvim/keymaps.vim 
