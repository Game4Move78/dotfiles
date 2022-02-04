# dotfiles

Invoke `git submodule update --init --recursive` first to install submodules

Example usage: `stow -R spacemacs`

## spack

Spack comes with a ~/.spackenv dotfile that needs to be sourced from your shell of choice

From then to build the base environment you have to run
```
spack install -j$(nproc)
```

If zsh changes may only take effect after running `rehash`
