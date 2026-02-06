return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                -- Background colors
                bg = "#2c2e27",
                bg_dark = "#2c2e27",
                bg_highlight = "#a2a49a",

                -- Foreground colors
                -- fg: Object properties, builtin types, builtin variables, member access, default text
                fg = "#fdfefd",
                -- fg_dark: Inactive elements, statusline, secondary text
                fg_dark = "#dde5ca",
                -- comment: Line highlight, gutter elements, disabled states
                comment = "#a2a49a",

                -- Accent colors
                -- red: Errors, diagnostics, tags, deletions, breakpoints
                red = "#d9bc87",
                -- orange: Constants, numbers, current line number, git modifications
                orange = "#eedec3",
                -- yellow: Types, classes, constructors, warnings, numbers, booleans
                yellow = "#dfdfb9",
                -- green: Comments, strings, success states, git additions
                green = "#d2dfc1",
                -- cyan: Parameters, regex, preprocessor, hints, properties
                cyan = "#c1cead",
                -- blue: Functions, keywords, directories, links, info diagnostics
                blue = "#c6d0b6",
                -- purple: Storage keywords, special keywords, identifiers, namespaces
                purple = "#cfc9af",
                -- magenta: Function declarations, exception handling, tags
                magenta = "#eceae0",
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
