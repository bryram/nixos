return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "SmiteshP/nvim-navic"
    },
    config = function()
      local navic = require('nvim-navic')
      require("lualine").setup ({
        options = {
          icons_enabled = true,
          theme = 'material',
          component_separators = { left = '>', right = '|'},
          section_separators = { left = '', right = ''},
          disabled_filetypes = {
            statusline = {},
            winbar = {},
          },
          ignore_focus = {},
          always_divide_middle = true,
          globalstatus = true,
          refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
          }
        },
        sections = {
          lualine_a = {'mode'},
          lualine_b = {'branch', 'diff', 'diagnostics'},
          lualine_c = {
            {'filename'},
            { function() return require("nvim-navic").get_location() end, cond = function()
                return require("nvim-navic").is_available()
              end,
            },
          },
          lualine_x = {'filetype'},
          lualine_y = {'progress'},
          lualine_z = {'location'}
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = {},
          lualine_x = {},
          lualine_y = {},
          lualine_z = {}
        },
        tabline = {},
        winbar = {},
        inactive_winbar = {},
        extensions = {
          'lazy',
          'neo-tree',
        }
      })
    end
  }
}
