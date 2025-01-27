# Dotfiles

To use the files in this repo locally:

1. Make sure you have the folder `~/repos`
2. Move to the folder `cd ~/repos`
3. Clone the repo `git clone git@github.com:jdavidp/dotfiles.git`
4. Create symbolic links

```
ln -s ~/repos/dotfiles/.config ~/.config
ln -s ~/repos/dotfiles/.config/aider/config.yml ~/.aider.conf.yml
```

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

## wezterm and starship

See this [video](https://www.youtube.com/watch?v=e34qllePuoc)

- My Wezterm config is simple and I use the default font, which is JetBrains Mono.
- I also use the default Starship config.

## zsh

- I installed zsh-autosuggestions and zsh-syntax-highlighting via brew. Had to update `.zshrc` to initialize those tools.

## aider

- Global Aider settings should go in `~/.config/aider/config.yml`, which is symlinked to `~/.aider.conf.yml`.
- Private settings (like API key) should go in an `.env` file inside the project folder. This is so that the file doesn't get checked into Git. It's common for `.env` files to be include in `.gitignore`.
