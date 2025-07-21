return {
  'stevearc/conform.nvim',
  enabled = true,
  tag = "stable",
  opts = {},
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        css = { "prettier" },
        html = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" },
        markdown = { "prettier" },
        python = {
          "ruff_fix",
          "ruff_format",
          "ruff_organize_imports",
        },
        rust = { "rustfmt" },
      },
      stop_after_first = false,
      format_on_save = {
        lsp_format = "fallback",
        timeout_ms = 500,
      },
    })
  end,
}
