lua << END
require('lualine').setup {

  options = {
    theme = 'codedark',
    --theme = 'molokai',
    icons_enabled = true,
    component_separators = { left = '|', right = '|'},
    section_separators = { left = '', right = ''},
    always_divide_middle = true,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
      }
  },

  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'diff', 'diagnostics' },
    lualine_c = { 'filename', 'g:coc_status' },
    lualine_x = { 'branch' },
    lualine_y = { 'encoding' },
    lualine_z = { 'filetype', 'progress', 'location' }
  },

  inactive_sections = {
    lualine_a = {'mode'},
    lualine_b = {'filetype'},
    lualine_c = {'filename'},
    lualine_x = {'progress'},
    lualine_y = {'location'},
    lualine_z = {}
  }
}
END
