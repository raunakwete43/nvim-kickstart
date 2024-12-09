return {
  'xiyaowong/transparent.nvim',
  lazy = false,
  keys = {
    { '<leader>wT', '<Cmd>TransparentToggle<CR>', desc = 'Toggle transparency' },
  },
  config = function()
    local transparent = require 'transparent'
    transparent.setup {
      extra_groups = {
        'NormalFloat',
        'NvimTreeNormal',
      },
    }
    -- transparent.clear_prefix 'BufferLine'
    -- transparent.clear_prefix 'NeoTree'
    -- transparent.clear_prefix 'lualine'
  end,
}
