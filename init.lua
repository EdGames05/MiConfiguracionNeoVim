local impatient_ok, impatient = pcall(require, "impatient")
if impatient_ok then impatient.enable_profile() end

for _, source in ipairs {
  "core.utils",
  "core.options",
  "core.bootstrap",
  "core.plugins",
  "core.autocmds",
  "core.mappings",
  "configs.which-key-register",
} do
  local status_ok, fault = pcall(require, source)
  if not status_ok then vim.api.nvim_err_writeln("Failed to load " .. source .. "\n\n" .. fault) end
end

astronvim.conditional_func(astronvim.user_plugin_opts("polish", nil, false))


-- Función para mapear teclas
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Teclas especiales que no salen solas
map("i", "<C-.>", ">", { silent = true })
map("i", "<C-,>", "<", { silent = true })
map("i", "<C-/>", "\\", { silent = true })
map("i", "<C-|>", "`", { silent = true })

-- Ctrl+Z (Deshacer)
map("n", "<C-z>", ":u", { silent = true })
map("i", "<C-z>", "<C-o>", { silent = true })