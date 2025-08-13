local wk = require("which-key")
local telescope_builtin = require("telescope.builtin")
local oil = require("oil")
local gitsigns = require("gitsigns")

wk.add({
  { "<Tab>",      ":bnext<CR>",                  desc = "Next buffer" },
  { "<S-Tab>",    ":bprev<CR>",                  desc = "Previous buffer" },

  { "K",          ":m '<-2<CR>gv=gv",            desc = "Move line up",         mode = "v" },
  { "J",          ":m '>+1<CR>gv=gv",            desc = "Move line down",       mode = "v" },

  { "<leader>s",  ":w<CR>",                      desc = "Save file" },

  { "<leader>f",  group = "File" },
  { "<leader>fv", oil.open_float,                desc = "Open folder" },
  { "<leader>ff", telescope_builtin.find_files,  desc = "Find files" },
  { "<leader>fg", telescope_builtin.live_grep,   desc = "Live grep" },
  { "<leader>fb", telescope_builtin.buffers,     desc = "Buffers" },
  { "<leader>fd", telescope_builtin.diagnostics, desc = "Diagnostics" },

  { "<leader>g",  group = "Git hunks" },
  { "<leader>gs", gitsigns.stage_hunk,           desc = "Stage hunk" },
  { "<leader>gr", gitsigns.reset_hunk,           desc = "Reset hunk" },
  { "<leader>gS", gitsigns.stage_buffer,         desc = "Stage buffer" },
  { "<leader>gR", gitsigns.reset_buffer,         desc = "Reset buffer" },
  { "<leader>gj", gitsigns.next_hunk,            desc = "Next hunk" },
  { "<leader>gk", gitsigns.prev_hunk,            desc = "Previous hunk" },

  { "<leader>u",  vim.cmd.UndotreeToggle,        desc = "Toggle UndoTree" },

  { "<leader>a",  "qa",                          desc = "Start macro recording" },
  { "<leader>A",  "@a",                          desc = "Play macro" },

  { "<leader>q",  ":bp|bd #<CR>",                desc = 'Close buffer' },
  { "<leader>Q",  ":q<CR>",                      desc = 'Close window' },

  { "<leader>l",  group = "LSP Actions" },
  { "<leader>lr", vim.lsp.buf.rename,            desc = "Rename" },
  { "<leader>la", vim.lsp.buf.code_action,       desc = "Code actions" },

  { "<leader>d",  group = "Diagnostics" },
  { "<leader>dj", vim.diagnostic.goto_next,      desc = "Next diagnostic" },
  { "<leader>dk", vim.diagnostic.goto_prev,      desc = "Previous diagnostic" },
  { "<leader>dv", vim.diagnostic.open_float,     desc = "Show diagnostic" },

  { "g",          group = "LSP" },
  { "gd",         vim.lsp.buf.definition,        desc = "Go to definition" },
  { "gD",         vim.lsp.buf.declaration,       desc = "Go to declaration" },
  { "gr",         vim.lsp.buf.references,        desc = "Go to references" },
  { "gi",         vim.lsp.buf.implementation,    desc = "Go to implementation" },
})
