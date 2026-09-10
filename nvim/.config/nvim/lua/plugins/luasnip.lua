  -- Snippets pra acelerar as coisas
  return {
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!).
	build = "make install_jsregexp",
    lazy=false,

    opts = {
        store_selection_keys="<C-k>"
    },
    config = function(_, opts)
        require("luasnip.loaders.from_snipmate").lazy_load()
        require("luasnip").setup(opts)
    end

  }

