set nocompatible

call plug#begin()

Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'thedenisnikulin/vim-cyberpunk'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-lua/plenary.nvim'
""Plug 'sheerun/vim-polyglot'
Plug 'romgrk/barbar.nvim'

call plug#end()

"" open file browser
nnoremap <silent> ff <cmd>Telescope file_browser<cr>

"" Buffer (Tab) Control
set hidden
nnoremap <silent> <S-Tab> <C-W>w
nnoremap <silent> <Tab> <Cmd>BufferNext<CR>
nnoremap <silent> <C-W> <Cmd>:bd<CR>

" automatically enter insert mode on new neovim terminals
augroup terminal
  au TermOpen * startinsert
augroup END

" map `1 to escape
inoremap `1 <Esc>
tnoremap `1 <C-\><C-n>

"" Theme
set termguicolors
colorscheme cyberpunk
syntax on

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

"" Basic options
set nu
set tabstop=4
set shiftwidth=4
set colorcolumn=80

autocmd FileType python setlocal foldmethod=marker

"" lua import setups
lua << END
require("telescope").setup()
require("telescope").load_extension "file_browser"
require("lualine").setup()
END

