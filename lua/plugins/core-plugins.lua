return {
    "folke/which-key.nvim",

    -- Detect tabstop and shiftwidth automatically
    "tpope/vim-sleuth",

    -- "gc" to comment visual regions/lines
    { 'numToStr/Comment.nvim', opts = {} },

    {
        "nvim-treesitter/nvim-treesitter",
	depedencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
	build = ":TSUpdate",
        config = function ()
            require "treesitter-setup"
        end,
    },

    {
        -- Autocompletion
	"hrsh7th/nvim-cmp",
	dependencies = {
	    -- Snippet Engine & its associated nvim-cmp source
	    "L3MON4D3/LuaSnip",
	    "saadparwaiz1/cmp_luasnip",

            -- Adds LSP completion capabilities
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-path',

            -- Adds a number of user-friendly snippets
            'rafamadriz/friendly-snippets',
	},
        config = function()
            require "cmp-setup"
        end,
    },

    {
	"windwp/nvim-autopairs",
        -- Optional dependency
        dependencies = { 'hrsh7th/nvim-cmp' },
        config = function()
            require("nvim-autopairs").setup {}
            -- If you want to automatically add `(` after selecting a function or method
            local cmp_autopairs = require('nvim-autopairs.completion.cmp')
            local cmp = require('cmp')
            cmp.event:on(
                'confirm_done',
                cmp_autopairs.on_confirm_done()
            )
        end,
    },

    {
        -- Set lualine as statusline
        'nvim-lualine/lualine.nvim',
        -- See `:help lualine.txt`
        opts = {
            options = {
                icons_enabled = true,
                theme = 'auto',
                component_separators = '|',
                section_separators = '',
            },
        },
    },
}
