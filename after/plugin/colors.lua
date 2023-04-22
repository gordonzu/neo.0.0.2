require("tokyonight").setup({
    --style = "night",
    --style = "storm",
    --style = "moon",
    --style = "day",
    transparent = false,
    terminal_colors = true,
    styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
        sidebars = {},
        floats = {},
    },    
   --sidebars = { "qf", "vista_kind", "terminal", "packer" },
   sidebars = {},
    on_colors = function(colors)
        colors.hint = colors.orange
        colors.error = "#ff0000"
    end
})    

function MyColor(color)
	--color = color or "orbital"
	--color = color or "tokyonight"
	--color = color or "afterglow"
	color = color or "PaperColor"
	--color = color or "github"
	--color = color or "atom"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

MyColor()



