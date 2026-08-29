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

  branch = 'main',
  lazy = false,
  build = ':TSUpdate',

  config = function()
    local treesitter = require 'nvim-treesitter'

    treesitter.setup {}

    treesitter.install(parsers)

    vim.api.nvim_create_autocmd('FileType', {
      callback = function(args)
        pcall(vim.treesitter.start, args.buf)

        if vim.bo[args.buf].filetype ~= 'ruby' then
          vim.bo[args.buf].indentexpr =
            "v:lua.require'nvim-treesitter'.indentexpr()"
        end
      end,
    })
  end,
}