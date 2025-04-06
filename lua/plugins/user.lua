-- You can add or configure plugins by creating files in the `plugins/` folder
-- Remove the examples you have no interest in before enabling this file

---@type LazySpec
return {
  -- == Examples of Adding Plugins ==
  "andweeb/presence.nvim",
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function()
      require("lsp_signature").setup()
    end,
  },

  -- == Examples of Overriding Plugins ==
  -- Customize dashboard options
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = table.concat({
            " █████  ███████ ████████ ██████   ██████ ",
            "██   ██ ██         ██    ██   ██ ██    ██",
            "███████ ███████    ██    ██████  ██    ██",
            "██   ██      ██    ██    ██   ██ ██    ██",
            "██   ██ ███████    ██    ██   ██  ██████ ",
            "",
            "███    ██ ██    ██ ██ ███    ███",
            "████   ██ ██    ██ ██ ████  ████",
            "██ ██  ██ ██    ██ ██ ██ ████ ██",
            "██  ██ ██  ██  ██  ██ ██  ██  ██",
            "██   ████   ████   ██ ██      ██",
          }, "\n"),
        },
      },
    },
  },

  -- You can disable default plugins as follows:
  { "max397574/better-escape.nvim", enabled = false },

  -- LuaSnip configuration
  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      -- Load AstroNvim's default LuaSnip config
      require("astronvim.plugins.configs.luasnip")(plugin, opts)
      -- Load custom snippets from the snippets directory
      require("luasnip.loaders.from_vscode").lazy_load({ paths = { "./snippets" } })
      -- Extend typescriptreact to include html snippets
      require("luasnip").filetype_extend("typescriptreact", { "html" })
    end,
  },

  -- Autopairs configuration
  {
    "windwp/nvim-autopairs",
    config = function(plugin, opts)
      require("astronvim.plugins.configs.nvim-autopairs")(plugin, opts) -- Include default Astronvim config
      -- Add more custom autopairs configuration, such as custom rules
      local npairs = require("nvim-autopairs")
      local Rule = require("nvim-autopairs.rule")
      local cond = require("nvim-autopairs.conds")
      npairs.add_rules({
        Rule("$", "$", { "tex", "latex" })
          -- Don't add a pair if the next character is %
          :with_pair(cond.not_after_regex("%%"))
          -- Don't add a pair if the previous character is xxx
          :with_pair(cond.not_before_regex("xxx", 3))
          -- Don't move right when repeat character
          :with_move(cond.none())
          -- Don't delete if the next character is xx
          :with_del(cond.not_after_regex("xx"))
          -- Disable adding a newline when you press <cr>
          :with_cr(cond.none()),
      })
    end,
  },
}
