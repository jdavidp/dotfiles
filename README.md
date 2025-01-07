# Dotfiles

To use the files in this repo locally:

1. Make sure you have the folder `~/repos`
2. Move to the folder `cd ~/repos`
3. Clone the repo `git clone git@github.com:jdavidp/dotfiles.git`
4. Create a symbolic link `ln -s ~/repos/dotfiles/.config ~/.config`

## nvim

Neovim config taken from [josean](https://github.com/josean-dev/dev-environment-files) with some minor tweaks.
See this [video](https://youtu.be/6pAG3BHurdM?si=YK5IwCZg6b6xxlJI) for a walkthrough of his nvim setup.

- Node is needed to install the language servers (see lsp plugin subfolder)

```sh
brew update && \
brew install \
  neovim \
  ripgrep \
  node \
  jesseduffield/lazygit/lazygit
```

- I have an override of [conform’s default sqlfluff config](https://github.com/stevearc/conform.nvim/blob/master/lua/conform/formatters/sqlfluff.lua), as shown below. It’s defined in `plugins/formatting.lua` . I set the dialect and also set require_cwd to false so that sqlfluff doesn’t depend on the config file `.sqlfluff` in order to format SQL files.

```lua
formatters = {
  sqlfluff = {
    command = "sqlfluff",
    args = { "fix", "-", "--dialect", "ansi" },
    stdin = true,
    require_cwd = false,
  },
},
```
