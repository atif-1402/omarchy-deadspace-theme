return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#010101", -- Default background
                base01 = "#dddbdb", -- Lighter background (status bars)
                base02 = "#010101", -- Selection background
                base03 = "#dddbdb", -- Comments, invisibles
                base04 = "#F6F6F5", -- Dark foreground
                base05 = "#ffffff", -- Default foreground
                base06 = "#ffffff", -- Light foreground
                base07 = "#F6F6F5", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#958a8a", -- Variables, errors, red
                base09 = "#ada5a5", -- Integers, constants, orange
                base0A = "#b2aaaa", -- Classes, types, yellow
                base0B = "#a49a9a", -- Strings, green
                base0C = "#dedada", -- Support, regex, cyan
                base0D = "#c1baba", -- Functions, keywords, blue
                base0E = "#cfcaca", -- Keywords, storage, magenta
                base0F = "#cac5c5", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
