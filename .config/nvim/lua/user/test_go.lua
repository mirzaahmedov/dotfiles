local function test_solution()
  local current_file = vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf())
  if not string.find(current_file, '/solution.go$') then
    return
  end

  vim.cmd.vsplit()
  vim.cmd.wincmd 'l'

  local temp_buf = vim.api.nvim_create_buf(false, true)

  vim.fn.jobstart({ 'go', 'test', '.' }, {
    stdout_buffered = false,
    on_stdout = function(_, data)
      vim.api.nvim_buf_set_lines(temp_buf, -1, -1, false, data)
      vim.api.nvim_set_current_buf(temp_buf)
    end,
    on_stderr = function(_, data)
      vim.api.nvim_buf_set_lines(temp_buf, -1, -1, false, data)
      vim.api.nvim_set_current_buf(temp_buf)
    end,
  })
end

vim.api.nvim_create_user_command('GoTestSolution', test_solution, {})
vim.api.nvim_create_autocmd('BufWritePost', {
  callback = test_solution,
})
