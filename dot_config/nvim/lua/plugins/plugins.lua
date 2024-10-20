return { 
 "theprimeagen/harpoon",
 "rebelot/kanagawa.nvim",
 "theprimeagen/harpoon",
 "tpope/vim-fugitive",
 "rebelot/kanagawa.nvim",
 {'nvim-telescope/telescope.nvim', tag = '0.1.8'},
 {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
 -- LSP
 {'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'},
 {'neovim/nvim-lspconfig'},
 "williamboman/mason.nvim",
 "williamboman/mason-lspconfig.nvim",
 -- Autocompletion
 {'hrsh7th/cmp-nvim-lsp'},
 {'hrsh7th/cmp-buffer'},
 {'hrsh7th/cmp-path'},
 {'saadparwaiz1/cmp_luasnip'},
 {'hrsh7th/nvim-cmp'},
 -- Snippets
 {'L3MON4D3/LuaSnip', version = "v2.*",
   dependencies = {'rafamadriz/friendly-snippets'},
 },
 'Civitasv/cmake-tools.nvim',
 {
  "folke/trouble.nvim",
  opts = {}, -- for default options, refer to the configuration section for custom setup.
  cmd = "Trouble",
  keys = {
    {
      "<leader>d",
      "<cmd>Trouble diagnostics toggle<cr>",
      desc = "Diagnostics (Trouble)",
    },
  },
}
 }
