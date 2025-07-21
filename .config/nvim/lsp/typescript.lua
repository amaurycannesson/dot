---@type vim.lsp.Config
return {
  cmd = { "typescript-language-server", "--stdio" },
  filetypes = {
    "typescript",
    "typescriptreact",
  },
  root_markers = { "tsconfig.json", },
}
