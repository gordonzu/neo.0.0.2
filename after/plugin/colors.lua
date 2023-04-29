--require('lsp-zero').setup{}
require('lsp-zero')

require("tokyonight").setup({
    style = "night",
    --style = "storm",
    --style = "moon",
    --style = "day",
    transparent = true,
    terminal_colors = true,
    styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
        sidebars = dark,
        floats = dark,
    },
   sidebars = {},
    on_colors = function(colors)
        colors.hint = colors.orange
        colors.error = "#ff0000"
    end
})

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
	--color = color or "orbital"
	color = color or "tokyonight-night"
	--color = color or "PaperColor"
	--color = color or "github"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

MyColor()



