-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {{
    "neanias/everforest-nvim",
    cond = function()
        return not vim.g.vscode
    end,
    version = false,
    lazy = false,
    priority = 1000,
    background = "hard",
    init = function()
        vim.cmd.colorscheme 'everforest'
        -- vim.cmd.hi 'Comment gui=none'
    end
}, {
    'kylechui/nvim-surround',
    -- version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = 'VeryLazy',
    config = function()
        require('nvim-surround').setup({
            keymaps = {
                insert = '<C-g>z',
                insert_line = 'gC-ggZ',
                normal = 'gz',
                normal_cur = 'gZ',
                normal_line = 'gzgz',
                normal_cur_line = 'gZgZ',
                visual = 'gz',
                visual_line = 'gZ',
                delete = 'gzd',
                change = 'gzc'
            }
        })
    end
}, {
    'ggandor/leap.nvim',
    config = function()
        require('leap').create_default_mappings()
    end
}, {'xiyaowong/transparent.nvim', vim.g.transparent_enabled}}
