
return {
  "Pocco81/auto-save.nvim",
  event = { "InsertLeave", "TextChanged" },
  config = function()
    require("auto-save").setup({
      enabled = true,
      execution_message = { message = "" },
      trigger_events = { "InsertLeave", "TextChanged" },
      debounce_delay = 135,
      condition = function(buf)
        local fn = vim.fn
        local utils = require("auto-save.utils.data")
        return fn.getbufvar(buf, "&modifiable") == 1 and utils.not_in(fn.getbufvar(buf, "&filetype"), {})
      end,
    })
  end,
}
