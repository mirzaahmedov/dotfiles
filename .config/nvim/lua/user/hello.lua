local function greet()
  local buf = vim.api.nvim_create_buf(false, true)
  if buf ~= 0 then
    vim.cmd.new()

    vim.api.nvim_set_current_buf(buf)
    vim.api.nvim_buf_set_text(buf, 0, 0, 0, 0, {"from neovim config"})
  end

end

vim.api.nvim_create_user_command("Hello", greet, {})
