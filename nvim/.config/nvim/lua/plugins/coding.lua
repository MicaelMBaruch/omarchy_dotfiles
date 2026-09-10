return {
  -- Auto pairs
  -- Automatically inserts a matching closing character
  -- when you type an opening character like `"`, `[`, or `(`.

    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true,
        opts = {
            enabled = function(bufnr) return true end, -- control if auto-pairs should be enabled when attaching to a buffer
            disable_filetype = { "TelescopePrompt", "spectre_panel", "snacks_picker_input" },
            disable_in_macro = true, -- disable when recording or executing a macro
            disable_in_visualblock = false, -- disable when insert after visual block mode
            disable_in_replace_mode = true,
            ignored_next_char = [=[[%w%%%'%[%"%.%`%$]]=],
            enable_moveright = true,
            enable_afterquote = true, -- add bracket pairs after quote
            enable_check_bracket_line = true, --- check bracket in same line
            enable_bracket_in_quote = true, --
            enable_abbr = false, -- trigger abbreviation
            break_undo = true, -- switch for basic rule break undo sequence
            check_ts = false,
            map_cr = true,
            map_bs = true, -- map the <BS> key
            map_c_h = false, -- Map the <C-h> key to delete a pair
            map_c_w = false, -- map <c-w> to delete a pair if possible
            fast_wrap = {
                map = '<M-e>',
                chars = { '{', '[', '(', '"', "'" },
                pattern = [=[[%'%"%>%]%)%}%,]]=],
                end_key = '$',
                before_key = 'h',
                after_key = 'l',
                cursor_pos_before = true,
                keys = 'qwertyuiopzxcvbnmasdfghjkl',
                manual_position = true,
                highlight = 'Search',
                highlight_grey='Comment'
            },
        },
    },

  -- Improves comment syntax, lets Neovim handle multiple
  -- types of comments for a single language, and relaxes rules
  -- for uncommenting.
  {
    "folke/ts-comments.nvim",
    event = "VeryLazy",
    opts = {},
  },

  -- Configures LuaLS to support auto-completion and type checking
  -- while editing your Neovim configuration.
  -- {
  --   "folke/lazydev.nvim",
  --   ft = "lua",
  --   cmd = "LazyDev",
  --   opts = {
  --     library = {
  --       { path = "${3rd}/luv/library", words = { "vim%.uv" } },
  --       { path = "snacks.nvim", words = { "Snacks" } },
  --       { path = "nvim-lspconfig", words = { "lspconfig.settings" } },
  --     },
  --   },
  -- },
}
