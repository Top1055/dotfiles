set nocompatible

call plug#begin()

Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'thedenisnikulin/vim-cyberpunk'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'sheerun/vim-polyglot'
Plug 'romgrk/barbar.nvim'

call plug#end()

"" open file browser
nnoremap <silent> ff <cmd>Telescope file_browser<cr>

"" Buffer (Tab) Control
set hidden
nnoremap <silent> <S-Tab> <C-W>w
nnoremap <silent> <Tab> <Cmd>BufferNext<CR>
nnoremap <silent> <C-W> <Cmd>:bd<CR>

"" Theme
set termguicolors
colorscheme cyberpunk

"" lua import setups
lua << END
require("telescope").setup()
require("telescope").load_extension "file_browser"
require("lualine").setup()
END

"" Basic options
set nu
set tabstop=4
set shiftwidth=4
