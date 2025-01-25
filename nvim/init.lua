-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- ノーマルモードに戻るときに英語入力に切り替える
vim.api.nvim_create_autocmd("InsertLeave", {
  callback = function()
    vim.fn.system("macism com.apple.keylayout.ABC")
  end,
})
