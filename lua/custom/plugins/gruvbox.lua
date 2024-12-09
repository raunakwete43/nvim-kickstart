return {
  'luisiacc/gruvbox-baby',
  name = 'gruvbox',
  priority = 1000,
  config = function()
    vim.cmd.hi 'Comment gui=none'
    local ok, _ = pcall(vim.cmd, 'colorscheme catppuccin-mocha')
    if not ok then
      vim.cmd 'colorscheme retrobox' -- if the above fails, then use default
    end
  end,
}
