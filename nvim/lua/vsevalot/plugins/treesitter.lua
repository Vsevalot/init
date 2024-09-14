return {
        "nvim-treesitter/nvim-treesitter",  -- abstract syntax tree highlighter
        config = function()
            require("nvim-treesitter.configs").setup(
                {
                    ensure_installed = {"c", "lua", "vim", "vimdoc", "query", "go", "rust", "python", "yaml"},
                    auto_install = false,  -- install new language when open file with this language
                    highlight = {
                        enable = true,
                    },
                    incremental_selection = {
                        enable = true,
                        keymaps = {
                            init_selection = "<Leader>ss",
                            node_incremental = "<Leader>si",
                            scope_incremental = "<Leader>sc",
                            node_decremental = "<Leader>sd",
                        },
                    },
                    refactor = {
                        highlight_definitions = {
                            enable = true,
                            clear_on_cursor_move = true,
                        },
                    },
                }
            )
        end,
        -- look at this https://github.com/nvim-treesitter/nvim-treesitter-textobjects
    }
