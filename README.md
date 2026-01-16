# .dotfiles

Stowed:
* nvim
* sxhkd
* xinitrc (for some reason)
* git (credentials and some settings)
* kitty
* tmux
* guake
* htop (for fun)
* kanata

Not synced:
* dunno

## TODO

- add all shortcuts stowed here (probably)
- maybe reorganize and move specific details to a separate readme in plugin's directory

### neovim

#### requirements

- rg
- lua-language-server
- clangd
- tree-sitter-cli

#### bindings

- `<c-w d>` LSP diagnostics
- `<K>` hover
- `<leader>o` update + source
- `<leader>w` write
- `<leader>q` quit
- `<leader>e` Ex
- `<leader>y` yank to system clipboard
- `<leader>d` delete to system clipboard
- `<leader>ff` find files by name
- `<leader>fg` grep live
- `<leader>lf` language format

## how to symlink

Replace `module` with required package name, remove `n` to actually do the thing.
```bash
user@host:~/.dotfiles/stow$ stow -nvt ~ module
```

## tmux

Plugins are installed via [tpm](https://github.com/tmux-plugins/tpm),
some other things are reconfigured manually.

Use the script `install-tpm.sh` to do it in one command.

On a fresh system, after cloning TPM repo, hit `C-a I` to install all plugins.

## kanata

### systemd unit
Config is a mish-mash of stuff at github issue #130 on
https://github.com/jtroo/kanata.

### kanata.kbd

there's stuff.
