require('lualine').setup {
    options = {
        icons_enabled = false,
        theme = 'material',
        component_separators = '|',
        section_separators = '',
    },
    sections = {
      lualine_c = {
        {
          'filename',
          path = 1,
        }
      }
    }
}

