# ChadShik - A Chad Neovim Configuration for the Chad Developer
[![Maintainer](https://img.shields.io/badge/maintainer-Ashik80-blue?logo=github&style=for-the-badge)](https://github.com/Ashik80)  [![made-with-lua](https://img.shields.io/badge/Made%20with-Lua-blue?logo=lua&style=for-the-badge)](https://www.lua.org/) [![Neovim](https://img.shields.io/badge/Neovim-0.9.0-green?style=for-the-badge&logo=Neovim)](https://neovim.io/) [![MIT license](https://img.shields.io/badge/License-MIT-brightgreen?style=for-the-badge)](https://lbesson.mit-license.org/) [![GitHub issues](https://img.shields.io/github/issues/Ashik80/chadshik?style=for-the-badge&kill_cache=1)](https://github.com/Ashik80/chadshik/issues) [![GitHub tag](https://img.shields.io/github/v/tag/Ashik80/chadshik?style=for-the-badge&kill_cache=1)](https://github.com/Ashik80/chadshik/tags/)

ChadShik is a powerful and feature-rich Neovim configuration designed to enhance your development experience. It comes preloaded with a carefully curated set of plugins and sensible defaults to make your coding sessions more efficient and enjoyable. With ChadShik, you'll get autocompletion, syntax highlighting, code formatting, and much more right out of the box.

![Screenshot-09-05-2023-T-02-54-33.png](https://i.postimg.cc/d3zctYXX/Screenshot-09-05-2023-T-02-54-33.png)
![Screenshot-09-05-2023-T-03-05-20.png](https://i.postimg.cc/L5M1zBky/Screenshot-09-05-2023-T-03-05-20.png)

## Features

-   Plugin management with  [packer.nvim](https://github.com/wbthomason/packer.nvim)
-   Fuzzy file finding and more with  [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
-   Editor tools management using  [mason.nvim](https://github.com/williamboman/mason.nvim)
-   File explorer with  [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
-   Enhanced buffer management with  [barbar.nvim](https://github.com/romgrk/barbar.nvim)
-   Beautiful status line using  [lualine.nvim](https://github.com/hoob3rt/lualine.nvim)
-   Advanced syntax highlighting with  [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
-   Language server integration using  [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
-   Autocompletion with  [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
-   Commenting functionality with [Comment.nvim](https://github.com/numToStr/Comment.nvim)
-   Code formatting with  [eslint](https://eslint.org/)  and  [prettier](https://prettier.io/)
-   Color highlighting with [nvim-colorizer](https://github.com/norcalli/nvim-colorizer.lua)

## Installation

1.  Ensure you have Neovim installed.
2.  Install [packer.nvim](https://github.com/wbthomason/packer.nvim). Follow install instructions on their official repository.
3.  Clone this repository into your Neovim configuration directory:

```bash
git clone https://github.com/Ashik80/chadshik.git ~/.config/nvim
```

4.  Open Neovim with `nvim` and run  `:PackerInstall`  to install all the plugins. You will get some errors when opening nvim and even after running `:PackerInstall`. *Do not panic!* 
5.  Restart Neovim and enjoy your new ChadShik configuration!

## Usage

ChadShik comes with a set of keybindings and commands to make your development experience smoother. Here are some highlights:

- `<Space>fa`: Fuzzy find all files in the current directory using telescope.nvim
- `<Space>ff`: Fuzzy find git files in the current directory using telescope.nvim
- `<Space>fg`: Fuzzy find text in the current project using telescope.nvim. Requires [ripgrep](https://github.com/BurntSushi/ripgrep)
- `<Tab>`: Switch between open buffers using barbar.nvim
- `<C-n>`: Toggle the nvimtree file explorer
- `gcc`: Comment or uncomment the current line
- `gc`: Comment or uncommest a visual block. `gb` for block comment
- `<space>fe`: Format the current buffer using eslint

For a complete list of keybindings and commands, please refer to the `lua/chadshik/mappings.lua` file and plugin specific bindings in `lua/plugins` directory in the repository.

## Customization

ChadShik is designed to be easily customizable. You can modify the `lua/chadshik/init.lua` file to change the default settings, add new plugins in the `lua/plugins/plugins.lua`, or tweak the existing ones in their existing files. If you need to add custom keybindings or commands, you can do so in the mappings.lua file.

## Contributing

I welcome contributions to ChadShik! If you have a feature request, bug report, or want to contribute code, please open an issue or submit a pull request on the [GitHub repository](https://github.com/Ashik80/chadshik).

## License

ChadShik is released under the [MIT License](https://opensource.org/licenses/MIT).
