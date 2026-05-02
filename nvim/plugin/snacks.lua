local status_ok, snacks = pcall(require, 'snacks')
if not status_ok then
  return
end

snacks.setup {
  bigfile = { enabled = true },
  quickfile = { enabled = true },
  words = { enabled = true },
  input = { enabled = true },
  picker = {
    enabled = true,
    ui_select = true,
  },
  dashboard = {
    enabled = true,
    width = 40,
    preset = {
      keys = {
        { icon = ' ', key = 'p', desc = 'Projects', action = ':lua Snacks.picker.projects()' },
        { icon = '󰕰 ', key = 's', desc = 'Restore Session', action = ":lua require('persistence').select()" },
        { icon = ' ', key = 'o', desc = 'Recent Files', action = ':lua Snacks.picker.recent()' },
        { icon = ' ', key = 'f', desc = 'Find Files', action = ':lua Snacks.picker.files()' },
        { icon = ' ', key = 'n', desc = 'New File', action = ':ene | startinsert' },
        { icon = ' ', key = 'q', desc = 'Quit', action = ':qa' },
      },
    },
    sections = {
      { section = 'header' },
      { section = 'keys', gap = 1, padding = 2 },
      { icon = ' ', title = 'Talk is cheap. Show me the code.', align = 'center', padding = 1 },
    },
  },
  styles = {
    input = {
      relative = 'cursor',
      row = -3,
      col = 0,
      width = 30,
      backdrop = false,
    },
  },
}

local map = vim.keymap.set

map('n', '<leader>q', function()
  Snacks.bufdelete()
end, { desc = 'Delete buffer', silent = true })
map('n', '<leader>fp', function()
  Snacks.picker.projects()
end, { desc = 'Projects', silent = true })
map('n', '<leader>fk', function()
  Snacks.picker.keymaps()
end, { desc = 'Keymaps', silent = true })
map('n', '<leader>fb', function()
  Snacks.picker.buffers()
end, { desc = 'Buffers', silent = true })
map('n', '<leader>fg', function()
  Snacks.picker.grep()
end, { desc = 'Live grep', silent = true })
map('n', '<leader>ff', function()
  Snacks.picker.files()
end, { desc = 'Find files', silent = true })
map('n', '<leader>fo', function()
  Snacks.picker.recent()
end, { desc = 'Oldfiles', silent = true })
map('n', '<leader>fh', function()
  Snacks.picker.help()
end, { desc = 'Help page', silent = true })
map('n', '<leader>fc', function()
  Snacks.picker.git_log()
end, { desc = 'Git commits', silent = true })
map('n', '<leader>ls', function()
  Snacks.picker.lsp_symbols()
end, { desc = 'Lsp Symbols', silent = true })
map('n', '<leader>lc', function()
  Snacks.picker.lsp_config()
end, { desc = 'Lsp Config', silent = true })
