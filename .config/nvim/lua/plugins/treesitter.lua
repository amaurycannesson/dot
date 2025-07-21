return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "lua",
        "vim",
        "vimdoc",
        "bash",
        "markdown",
        "markdown_inline",
        "typescript",
        "tsx",
        "javascript",
        "rust",
        "python",
        "sql",
        "diff",
        "gitignore",
        "gitcommit",
        "yaml",
        "html",
        "css",
        "dockerfile",
        "csv",
        "properties",
        "ini",
        "regex",
        "json",
        "toml",
      },
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = { enable = true },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-s>",
          node_incremental = "<C-s>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
  end,
}

