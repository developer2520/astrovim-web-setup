
-- ~/.config/nvim/lua/plugins/copilot.lua
return {
  "github/copilot.vim",  -- GitHub Copilot plugin
  config = function()
    -- Enable GitHub Copilot
    vim.g.copilot_enabled = 1

    -- You can add other custom configurations here
    vim.g.copilot_no_tab_map = true  -- Disable default tab mapping
    vim.g.copilot_assume_mapped = true  -- Automatically assume mappings
  end,
}
