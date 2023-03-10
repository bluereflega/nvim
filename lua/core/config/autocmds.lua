local f = require("core.config.functions")

local function augroup(name)
    return vim.api.nvim_create_augroup(name, { clear = true })
end

-- automatically resize nvim-tree when resizing nvim
vim.api.nvim_create_autocmd("VimResized", {
    group = augroup("AutoNvimTreeResize"),
    callback = function ()
        vim.cmd(string.format("NvimTreeResize %s", f.get_nvim_tree_width()))
    end
})
