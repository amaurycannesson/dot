-- Leader
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Indentation settings
vim.o.smartindent = true
vim.o.autoindent = true
vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.softtabstop = 2

-- Line numbers and display
vim.o.number = true
vim.o.relativenumber = true
vim.o.scrolloff = 8
vim.o.signcolumn = "yes"
vim.o.cursorline = true

-- Window
vim.o.splitright = true
vim.o.winborder = "rounded"

-- Search settings
vim.o.wrap = false
vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true

-- File handling
vim.o.swapfile = false
vim.o.backup = false
vim.o.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.o.undofile = true

-- Update timing
vim.o.updatetime = 50

-- Netrw settings
vim.g.netrw_banner = 0
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Folding
vim.o.foldmethod = "expr"
vim.o.foldexpr = "nvim_treesitter#foldexpr()"
vim.o.foldenable = false

-- LSP
vim.lsp.enable({
  "lua",
  "typescript",
  "rust",
  "python",
  "ruff",
})
vim.diagnostic.config({ virtual_text = true })

-- Clipboard
vim.opt.clipboard = "unnamed"
