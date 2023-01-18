lvim.builtin.which_key.mappings["s"]["b"] = {
  "<cmd>Telescope buffers previewer=false<cr>", "Buffers"
}

lvim.builtin.which_key.mappings["s"]["F"] = {
  "<cmd>Telescope flutter commands<cr>", "Flutter"
}

lvim.builtin.which_key.mappings["r"] = {
  ":%s/<C-r><C-w>/<C-r><C-w>/gI<Left><Left><Left>", "Replace"
}

lvim.builtin.which_key.mappings["t"] = {
  name = "Neotest",
  t = { "<CMD>lua require'neotest'.run.run()<CR>", "Run nearest test" },
  d = { "<CMD>lua require'neotest'.run.run({strategy = 'dap'})<CR>", "Debug nearest test" },
  f = { "<CMD>lua require'neotest'.run.run(vim.fn.expand('%'))<CR>", "Run current file" },
  p = { "<CMD>lua require'neotest'.output.open({ enter = true, auto_close = true })<CR>", "Preview current test output" },
  o = { "<CMD>lua require'neotest'.output_panel.toggle()<CR>", "Toggle output panel" },
  s = { "<CMD>lua require'neotest'.summary.toggle()<CR>", "Toggle summary panel" },
}
