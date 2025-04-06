
-- init.lua

-- Lazy.nvim bootstrapping (this part is already in your `init.lua`)
local lazypath = vim.env.LAZY or vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.env.LAZY or (vim.uv or vim.loop).fs_stat(lazypath)) then
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(lazypath)
vim.opt.number = true
vim.opt.relativenumber = false

-- Auto-formatting on save for .tsx files (optional)

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.tsx", "*.ts", "*.js", "*.jsx", "*.html" },
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})
if not pcall(require, "lazy") then
  vim.api.nvim_echo({ { ("Unable to load lazy from: %s\n"):format(lazypath), "ErrorMsg" }, { "Press any key to exit...", "MoreMsg" } }, true, {})
  vim.fn.getchar()
  vim.cmd.quit()
end

require "lazy_setup"

-- Load your Prettier configuration here
-- require('plugins.prettier')  -- Ensure you have created a `prettier.lua` file inside the `plugins` folder

require "polish"
