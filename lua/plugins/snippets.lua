
return {
  {
    "L3MON4D3/LuaSnip",  -- LuaSnip plugin for snippets
    config = function()
      -- Load VSCode-style snippets if needed
      require("luasnip.loaders.from_vscode").lazy_load()
      
      -- Load custom snippets
      require("snippets.typescriptreact")  -- Load the custom snippets file
    end,
  },
}
