
-- In your user config: ~/.config/nvim/lua/user/plugins/neo-tree.lua
return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true, -- show hidden files
        hide_dotfiles = false,
      },
    },
  },
}
