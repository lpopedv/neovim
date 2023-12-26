return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "tsserver", "rust_analyzer", "hydra_lsp", "prismals" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
     config = function()
      local lspconfig = require("lspconfig")
      -- lsps 
      lspconfig.lua_ls.setup({})
      lspconfig.tsserver.setup({})
      lspconfig.rust_analyzer.setup({})
      lspconfig.hydra_lsp.setup({})
      lspconfig.prismals.setup({})
    end
  }
}
