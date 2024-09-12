require 'config'
require 'plugins'

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
    local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
    if vim.v.shell_error ~= 0 then
        error('Error cloning lazy.nvim:\n' .. out)
    end
end

vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    require 'plugins.everforest',
    require 'plugins.neovim-lspconfig',
    require 'plugins.telescope',
    require 'plugins.lazydev',
    require 'plugins.luvit-meta',
    require 'plugins.nvim-cmp',
    require 'plugins.lualine',
    require 'plugins.todo-comments',
    require 'plugins.treesitter',
    require 'plugins.autopairs',
    require 'plugins.indent-lines',
    require 'plugins.harpoon',
    require 'plugins.undotree',
    require 'plugins.fugitive',
    require 'plugins.debug',
    require 'plugins.hop',
    require 'plugins.oil',
})
