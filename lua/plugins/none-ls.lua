
-- REMOVE this line to activate the plugin
-- if true then return {} end

---@type LazySpec
return {
  "nvimtools/none-ls.nvim",
  opts = function(_, opts)
    local null_ls = require("null-ls")

    opts.sources = require("astrocore").list_insert_unique(opts.sources, {
      -- Enable Prettier for web-related files
      null_ls.builtins.formatting.prettier.with({
        filetypes = {
          "javascript",
          "typescript",
          "typescriptreact",
          "javascriptreact",
          "html",
          "css",
          "json",
          "yaml",
          "markdown",
        },
      }),

      -- Optional: Stylua if you're working with Lua
      -- null_ls.builtins.formatting.stylua,
    })
  end,
}
