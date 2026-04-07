-- --------------------------
-- Leader Keys
-- --------------------------
vim.g.mapleader = ' ' -- Set <Leader> to Space
vim.g.maplocalleader = ' ' -- Set <LocalLeader> to Space

-- --------------------------
-- Documents and Undo
-- --------------------------
vim.opt.autowrite = true -- Automatically save changes when switching buffers
vim.opt.autoread = true -- Automatically reload files changed outside of Neovim
vim.opt.undofile = true -- Enable persistent undo
vim.opt.undolevels = 10000 -- Maximum number of undo steps

-- --------------------------
-- Search and Replace
-- --------------------------
vim.opt.ignorecase = true -- Ignore case in search patterns
vim.opt.smartcase = true -- Override 'ignorecase' if pattern contains uppercase
vim.opt.incsearch = true -- Show search matches as you type
vim.opt.hlsearch = false -- Do not keep matches highlighted after search
vim.opt.inccommand = 'nosplit' -- Show live preview of substitutions

-- --------------------------
-- User Interface
-- --------------------------
vim.opt.number = true -- Show absolute line numbers
vim.opt.relativenumber = true -- Show relative line numbers
vim.opt.cursorline = true -- Highlight the line under the cursor
vim.opt.signcolumn = 'yes' -- Always show the sign column
vim.opt.termguicolors = true -- Enable true color support
vim.opt.scrolloff = 8 -- Keep at least 8 lines visible above/below cursor
vim.opt.sidescrolloff = 8 -- Keep at least 8 columns visible left/right of cursor
vim.opt.laststatus = 3 -- Global statusline for all windows (Neovim 0.9+)
vim.opt.showmode = false -- Hide mode indicator
vim.opt.list = true -- Show invisible characters
vim.opt.pumheight = 10 -- Limit popup menu height
vim.opt.mouse = 'a' -- Enable mouse support in all modes
vim.opt.clipboard = 'unnamedplus' -- Sync Neovim clipboard with system clipboard

-- --------------------------
-- Indentation
-- --------------------------
vim.opt.expandtab = true -- Convert tabs to spaces
vim.opt.shiftwidth = 2 -- Number of spaces per indentation level
vim.opt.tabstop = 2 -- Number of spaces tabs count for
vim.opt.softtabstop = 2 -- Number of spaces a tab inserts/removes
vim.opt.shiftround = true -- Round indent to nearest multiple of 'shiftwidth'
vim.opt.smartindent = true -- Smart auto-indenting for new lines

-- --------------------------
-- Split Windows
-- --------------------------
vim.opt.splitbelow = true -- New horizontal splits open below
vim.opt.splitright = true -- New vertical splits open to the right
vim.opt.splitkeep = 'screen' -- Maintain screen view when splitting (Neovim 0.9+)

-- --------------------------
-- Behavior and Performance
-- --------------------------
vim.opt.wrap = false -- Do not wrap long lines
vim.opt.timeoutlen = 300 -- Time (ms) to wait for a mapped key sequence
vim.opt.updatetime = 200 -- Faster updates for CursorHold and diagnostics

-- --------------------------
-- Command-line and Completion
-- --------------------------
vim.opt.wildmode = 'longest:full,full' -- Command-line completion behavior
