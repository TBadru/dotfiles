-- This removes the incompatible setting:
-- main = 'nvim-treesitter.configs'

-- It also replaces the removed ensure_installed, auto_install, highlight, and legacy indent options with the new API.

-- Synchronize and update:
-- nvim --headless "+Lazy! sync" "+TSUpdate" "+qa"

local parsers = {
  'lua',
  'python',
  'javascript',
  'typescript',
  'vimdoc',
  'vim',
  'regex',
  'terraform',
  'sql',
  'dockerfile',
  'toml',
  'json',
  'java',
  'groovy',
  'go',
  'gitignore',
  'graphql',
  'yaml',
  'make',
  'cmake',
  'markdown',
  'markdown_inline',
  'bash',
  'tsx',
  'css',
  'html',
}

return {
  'nvim-treesitter/nvim-treesitter',

  -- The rewritten plugin must not be lazy-loaded.
  lazy = false,
  build = ':TSUpdate',

  config = function()
    local treesitter = require 'nvim-treesitter'

    treesitter.setup {}

    -- Replaces the old ensure_installed option.
    treesitter.install(parsers)

    -- Highlight buffers when a compatible parser is available.
    vim.api.nvim_create_autocmd('FileType', {
      callback = function(args)
        pcall(vim.treesitter.start, args.buf)
      end,
    })

    -- Enable Treesitter indentation except for Ruby.
    vim.api.nvim_create_autocmd('FileType', {
      callback = function(args)
        if vim.bo[args.buf].filetype ~= 'ruby' then
          vim.bo[args.buf].indentexpr =
            "v:lua.require'nvim-treesitter'.indentexpr()"
        end
      end,
    })
  end,
}

--