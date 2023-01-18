require("flutter-tools").setup {
  ui = {
    border = "rounded",
  },
  decorations = {
    statusline = {
      app_version = true,
      device = true,
    },
  },
  debugger = {
    enabled = true,
    run_via_dap = true,
    register_configurations = function(_)
      require("dap").adapters.dart = {
        type = "executable",
        command = ".fvm/flutter_sdk/bin/flutter",
        args = { "debug-adapter" },
      }
      require("dap").configurations.dart = {}
      require("dap.ext.vscode").load_launchjs()
    end,
  },
  fvm = true,
}
