local material = require('material')
local colors = require ('material.colors')

material.setup({
    custom_highlights = {
        SignColumn = { bg = 'none' },
        CursorLine = { fg = colors.editor.constrast , underline = false },
    },
     styles = {
         comments = { italic = true },
         strings = {},
         keywords = { italic = true },
         functions = {},
         variables = {},
         operators = {},
         types = {},
     },
     contrast = {
        terminal = true,
        sidebars = true,
        floating_windows = true,
        curor_line = false,
        non_current_windows = true,
        filetypes = {},
     },
    plugins = { -- Uncomment the plugins that you use to highlight them
        -- "dap",
         "gitsigns",
         "indent-blankline",
         "nvim-cmp",
         "telescope",
         "trouble",
         "which-key",
    },
     high_visibility = {
         lighter = true, -- Enable higher contrast text for lighter style
         darker = true -- Enable higher contrast text for darker style
    },
})

function MyColor(color)
	color = color or "tokyonight-night"
	vim.cmd.colorscheme(color)
end

MyColor()



