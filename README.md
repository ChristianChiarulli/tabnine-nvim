# tabnine-nvim

Tabnine client for neovim

![Tabnine neovim client](https://github.com/codota/tabnine-nvim/blob/master/expamples/javascript.gif)

## Install

Using [vimplug](https://github.com/junegunn/vim-plug)

```
Plug 'codota/tabnine-nvim', { 'do': './dl_binaries.sh' }
```

Basic configuration activation:
```lua
require('tabnine').setup({
  disable_auto_comment=true,
  accept_keymap="<Tab>"
})
```

## lualine integration

This plugin exposes a lualine `tabnine` component. e.g:

```lua
require'lualine'.setup {
    tabline = {
        lualine_a = {},
        lualine_b = {'branch'},
        lualine_c = {'filename'},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {}
    },
    sections = {lualine_c = {'lsp_progress'}, lualine_x = {'tabnine'}}
}
```
