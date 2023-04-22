local telescope = require 'telescope'
local telescope_builtin = require 'telescope.builtin'

telescope.setup {
  defaults = {
    prompt_position = 'top',
    layout_strategy = 'horizontal',
    sorting_strategy = 'ascending',
    use_less = false,
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case',
      '--hidden',
    },
  }
}

vim.keymap.set('n', '<leader>fs', function() 
	telescope_builtin.find_files({
		find_command = { 'rg', '--files', '-g', '!.git', '--hidden' },});	
end)

vim.keymap.set('n', '<C-p>', telescope_builtin.git_files, {})

vim.keymap.set('n', '<leader>ps', function()
	telescope_builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)





