return {
  'stevearc/conform.nvim',
  enabled = true,
  tag = "stable",
  opts = {},
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        javascript = { "eslint_d", "prettier" },
        typescript = { "eslint_d", "prettier" },
        javascriptreact = { "eslint_d", "prettier" },
        typescriptreact = { "eslint_d", "prettier" },
        astro = { "eslint_d", "prettier" },
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
        lsp_fallback = true,
        lsp_format = "fallback",
        timeout_ms = 500,
      },
    })
  end,
}
