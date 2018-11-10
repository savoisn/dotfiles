call plug#begin('~/Projects/dotfiles/vim/plugged')

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" languages and librairies
Plug 'vim-erlang/vim-erlang-compiler'
Plug 'vim-erlang/vim-erlang-skeletons'
Plug 'vim-erlang/vim-erlang-runtime'
Plug 'vim-erlang/vim-erlang-omnicomplete'
Plug 'vim-erlang/vim-erlang-tags'
                                                                                
Plug 'elixir-lang/vim-elixir'
Plug 'slashmili/alchemist.vim'
Plug 'powerman/vim-plugin-AnsiEsc'
Plug 'c-brenn/phoenix.vim'

Plug 'ElmCast/elm-vim'
Plug 'ekalinin/Dockerfile.vim'
Plug 'jelera/vim-javascript-syntax'
Plug 'pangloss/vim-javascript'
Plug 'vim-erlang/vim-erlang-runtime'
Plug 'lukerandall/haskellmode-vim'
Plug 'flowtype/vim-flow'
Plug 'digitaltoad/vim-pug'
Plug 'rust-lang/rust.vim'
Plug 'posva/vim-vue'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
Plug 'tomlion/vim-solidity'

" formating
Plug 'sbdchd/neoformat'

let g:neoformat_elixir_exfmt = {
  \ 'exe': 'mix',
  \ 'args': ['exfmt', '--stdin'],
  \ 'stdin': 1
  \ }

let g:neoformat_enabled_elixir = ['exfmt']

"Plug 'vim-syntastic/syntastic'
"Plug 'mtscout6/syntastic-local-eslint.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
                                                                                
" vim tools
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
nmap <F3> :NERDTreeToggle<CR>
map <C-n> :NERDTreeToggle<CR>
map <C-i> :NERDTreeFind<CR>

Plug 'majutsushi/tagbar'
nmap <F4> :TagbarToggle<CR>

Plug 'scrooloose/nerdcommenter'

Plug 'ctrlpvim/ctrlp.vim'
let g:ctrlp_cmd = 'CtrlPBuffer'

Plug 'tpope/vim-projectionist' " required for some navigation features
Plug 'jeetsukumaran/vim-buffergator'
let g:buffergator_viewport_split_policy="B"
let g:buffergator_sort_regime="mru"
let g:buffergator_suppress_keymaps=1
let g:buffergator_hsplit_size=10
map <leader>b :BuffergatorToggle<cr>

" Color
Plug 'jnurmine/Zenburn'

let g:elm_format_autosave = 1


call plug#end()                                                                 
filetype plugin on                                                              
set omnifunc=syntaxcomplete#Complete

if (has_key(g:plugs, 'Zenburn') > 0)
    colors zenburn
endif
set background=dark

" Text options
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set smarttab

set runtimepath^=~/.vim/plugged/vim-erlang-runtime/
