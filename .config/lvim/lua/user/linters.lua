local diagnostics = require("null-ls").builtins.diagnostics

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  diagnostics.pylint,
  diagnostics.mypy,
}
