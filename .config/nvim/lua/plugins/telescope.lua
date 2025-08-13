return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = { "plenary.nvim" },
  config = function()
    local telescope = require("telescope")

    telescope.setup({
      defaults = {
        border = true,
        preview = {
          hide_on_startup = false,
          treesitter = true,
        },
        sorting_strategy = "ascending",
        wrap_result = true,
        layout_strategy = "horizontal",
        layout_config = {
          horizontal = {
            prompt_position = "top",
            preview_width = 0.55,
            width = 0.80,
            height = 0.80,
            preview_cutoff = 90,
          },
        },
      },
    })
  end,
}
