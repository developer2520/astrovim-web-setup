
-- prettier.lua inside the plugins folder

-- Prettier plugin setup using Lazy.nvim
return {
  'prettier/vim-prettier',
  ft = {'javascript', 'typescript', 'html', 'tsx'},  -- Make sure Prettier works with .tsx files
  run = 'npm install',  -- Ensures dependencies are installed
}
