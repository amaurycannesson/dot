return {
  "yetone/avante.nvim",
  build = "make",
  event = "VeryLazy",
  version = false,
  opts = {
    provider = "openai",
    auto_suggestions_provider = "openai",
    providers = {
      openai = {
        endpoint = "https://api.openai.com/v1",
        model = "gpt-4o",
        timeout = 30000,
        disable_tools = true,
        extra_request_body = {
          temperature = 0,
          max_completion_tokens = 4096,
          reasoning_effort = "medium",
        },
      },
    },
    behaviour = {
      auto_suggestions = false,
      auto_suggestions_respect_ignore = true,
    },
    mappings = {
      suggestion = {
        accept = "<C-a>",
        dismiss = "<C-c>",
      }
    }
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
  },
}
