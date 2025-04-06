
-- Lazy.nvim bootstrapping (this part is already in your `init.lua`)
local lazypath = vim.env.LAZY or vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.env.LAZY or (vim.uv or vim.loop).fs_stat(lazypath)) then
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(lazypath)
vim.opt.number = true
vim.opt.relativenumber = true

-- Auto-formatting on save for .tsx files (optional)
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.tsx", "*.ts", "*.js", "*.jsx", "*.html" },
  callback = function()
    -- Make sure null-ls is available
    local lsp = vim.lsp.buf.formatting_sync({ async = false })
    if lsp then
      lsp()
    end
  end,
})

-- Make sure Lazy.nvim loads the necessary plugins
if not pcall(require, "lazy") then
  vim.api.nvim_echo({ { ("Unable to load lazy from: %s\n"):format(lazypath), "ErrorMsg" }, { "Press any key to exit...", "MoreMsg" } }, true, {})
  vim.fn.getchar()
  vim.cmd.quit()
end

require "lazy_setup"
