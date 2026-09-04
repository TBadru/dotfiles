return {
  'akinsho/toggleterm.nvim',

  version = '*',

  config = function()
    require('toggleterm').setup {
      size = 20,

      open_mapping = [[<c-\>]],

      direction = 'float',

      float_opts = {
        border = 'curved',
      },

      shading_factor = 2,
      persist_size = true,
      persist_mode = true,
      close_on_exit = true,
      start_in_insert = true,
    }
  end,
}