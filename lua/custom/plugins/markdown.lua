return {
  {
    'OXY2DEV/markview.nvim',
    lazy = true, -- Recommended
    ft = 'markdown', -- If you decide to lazy-load anyway

    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('markview').setup {
        modes = { 'n', 'no', 'c' },
        hybrid_modes = { 'n' },
        callbacks = {
          on_enable = function(_, win)
            vim.wo[win].conceallevel = 2
            vim.wo[win].concealcursor = 'c'
          end,
        },

        list_items = {
          enable = true,
          shift_width = 2,
          indent_size = 1,
          add_padding = false,

          marker_minus = {},
          marker_plus = {},
          marker_star = {},
          marker_dot = {},
        },

        checkboxes = {
          enable = true,

          checked = {
            text = '󰱒 ',
          },
          unchecked = {
            text = '󰄱 ',
          },
          pending = {},

          custom = {
            {
              match = '~',
              text = '󰥔 ',
              hl = 'CheckboxProgress',
            },
          },
        },

        headings = {
          enable = true,
          shift_width = 0,
        },

        -- Cool Heading
        -- highlight_groups = {
        --   {
        --     group_name = 'Heading1',
        --     value = { fg = '#1e1e2e', bg = '#a6e3a1' },
        --   },
        --   {
        --     group_name = 'Heading1Corner',
        --     value = { fg = '#a6e3a1' },
        --   },
        -- },
        --
        -- headings = {
        --   enable = true,
        --   shift_width = 0,
        --
        --   heading_1 = {
        --     style = 'label',
        --
        --     padding_left = ' ',
        --     padding_right = ' ',
        --
        --     corner_right = '',
        --     corner_right_hl = 'Heading1Corner',
        --
        --     hl = 'Heading1',
        --   },
        -- },

        -- Centered Horizontal Rules
        horizontal_rules = {
          parts = {
            {
              type = 'repeating',
              text = '─',

              direction = 'left',
              hl = {
                'Gradient1',
                'Gradient2',
                'Gradient3',
                'Gradient4',
                'Gradient5',
                'Gradient6',
                'Gradient7',
                'Gradient8',
                'Gradient9',
                'Gradient10',
              },

              repeat_amount = function()
                local w = vim.api.nvim_win_get_width(0)
                local l = vim.api.nvim_buf_line_count(0)

                l = vim.fn.strchars(tostring(l)) + 4

                return math.floor((w - (l + 3)) / 2)
              end,
            },
            {
              type = 'text',
              text = ' <> ',
            },
            {
              type = 'repeating',
              text = '─',

              direction = 'right',
              hl = {
                'Gradient1',
                'Gradient2',
                'Gradient3',
                'Gradient4',
                'Gradient5',
                'Gradient6',
                'Gradient7',
                'Gradient8',
                'Gradient9',
                'Gradient10',
              },

              repeat_amount = function()
                local w = vim.api.nvim_win_get_width(0)
                local l = vim.api.nvim_buf_line_count(0)

                l = vim.fn.strchars(tostring(l)) + 4

                return math.ceil((w - (l + 3)) / 2)
              end,
            },
          },
        },
      }

      vim.cmd 'Markview enableAll'
    end,
  },
}

-- return {
--   {
--     'MeanderingProgrammer/render-markdown.nvim',
--     opts = {},
--     dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
--     config = function()
--       require('render-markdown').setup {}
--     end,
--   },
-- }
