local function test_solution()
  local current_file = vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf())
  if not string.find(current_file, "/solution.go$") then
    return
  end

  vim.cmd.vsplit()
  vim.cmd.wincmd("l")

  local temp_buf = vim.api.nvim_create_buf(false, true)

  vim.api.nvim_set_current_buf(temp_buf)

  vim.fn.jobstart({"go", "test", "."}, {
    stdout_buffered = true,
    on_stdout = function (_, data)
      vim.api.nvim_buf_set_lines(temp_buf, -1, -1, false, data)
    end,
    on_stderr = function (_, data)
      vim.api.nvim_buf_set_lines(temp_buf, -1, -1, false, data)
    end,
  })
end

vim.api.nvim_create_user_command("GoTestSolution", test_solution, {})
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "solution.go",
  callback = test_solution
})
