require('material').setup({

    contrast = {
        terminal = true, -- Enable contrast for the built-in terminal
        sidebars = true, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
        floating_windows = true, -- Enable contrast for floating windows
        cursor_line = false, -- Enable darker background for the cursor line
        non_current_windows = true, -- Enable darker background for non-current windows
        filetypes = {}, -- Specify which filetypes get the contrasted (darker) background
    },

    styles = { -- Give comments style such as bold, italic, underline etc.
        comments = { italic = true },
        strings = {},
        keywords = { underline = true },
        --functions = { bold = true, undercurl = true },
        functions = { italic = true },
        variables = {},
        operators = {},
        types = {},
    },

    plugins = { -- Uncomment the plugins that you use to highlight them
        -- Available plugins:
        -- "dap",
        -- "dashboard",
        "gitsigns",
        -- "hop",
        -- "indent-blankline",
        -- "lspsaga",
        -- "mini",
        -- "neogit",
        -- "neorg",
        "nvim-cmp",
        -- "nvim-navic",
        -- "nvim-tree",
        -- "nvim-web-devicons",
        -- "sneak",
        "telescope",
        -- "trouble",
        -- "which-key",
    },

    disable = {
        colored_cursor = false, -- Disable the colored cursor
        borders = true, -- Disable borders between verticaly split windows
        background = false, -- Prevent the theme from setting the background (NeoVim then uses your terminal background)
        term_colors = false, -- Prevent the theme from setting terminal colors
        eob_lines = false -- Hide the end-of-buffer lines
    },

    high_visibility = {
        lighter = false, -- Enable higher contrast text for lighter style
        darker = false -- Enable higher contrast text for darker style
    },

    lualine_style = "default", -- Lualine style ( can be 'stealth' or 'default' )

    async_loading = true, -- Load parts of the theme asyncronously for faster startup (turned on by default)

    custom_colors = nil, -- If you want to everride the default colors, set this to a function

    custom_highlights = {}, -- Overwrite highlights with your own
})

function MyColor(color)
	--color = color or "tokyonight-night"
	color = color or "material"
	--color = color or "cake16"
	--color = color or "rose-pine"
	vim.cmd.colorscheme(color)
end

MyColor()



