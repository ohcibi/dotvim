nnoremap gff <cmd>Telescope find_files<cr>
nnoremap gfg <cmd>Telescope live_grep<cr>
nnoremap gfb <cmd>Telescope buffers<cr>

nnoremap ggc <cmd>Telescope git_commits<cr>
nnoremap ggl <cmd>Telescope git_bcommits<cr>
nnoremap ggs <cmd>Telescope git_status<cr>

lua << EOF
local actions = require('telescope.actions')
-- Global remapping
------------------------------
require('telescope').setup{
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  },
  pickers = {
    buffers = {
      ignore_current_buffer = true,
      sort_mru = true,
      sort_lastused = true,
    },
  },
}
EOF
