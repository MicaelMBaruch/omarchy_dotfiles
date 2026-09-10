-- Hints on what keymappings I have. It also contains plugins for other hints (motions, vim defaults, etc)
return{
  "folke/which-key.nvim",
  event = "VeryLazy",

      keys = {
      {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
      },
      },

      plugins = {
        marks = true, -- shows a list of your marks on ' and `
        registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
        -- the presets plugin, adds help for a bunch of default keybindings in Neovim
        -- No actual key bindings are created
        spelling = {
          enabled = true, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
          suggestions = 20, -- how many suggestions should be shown in the list?
        },

        presets = {
          operators = false, -- adds help for operators like d, y, ...
          motions = false, -- adds help for motions
          text_objects = true, -- help for text objects triggered after entering an operator
          windows = false, -- default bindings on <c-w>
          nav = true, -- misc bindings to work with windows
          z = true, -- bindings for folds, spelling and others prefixed with z
          g = true, -- bindings for prefixed with g
        },
      },
  opts = {

        spec = {
            { '<leader>t', group = '[t]ypst'}
        },

        win = {
            padding = {1,1},
            no_overlap=true,
            width = 0.5,
            height = {min=4, max=20},
            border="rounded",
            col = -1,
        },

        layout = {
            height = { min = 1, max = 10 }, -- min and max height of the columns
            width = { min = 20, max = 55 }, -- min and max width of the columns
            spacing = 2, -- spacing between columns
            align = "center", -- align columns left, center or right
        },
    }
}


