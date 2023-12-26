return {
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-vsnip',

  config = function()
    local cmp = require('cmp')

    cmp.setup({
      sources = {
        { name = 'nvim_lsp' },
        { name = 'buffer' },
      },
    })
  end
}
