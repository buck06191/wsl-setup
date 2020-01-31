# wsl-setup
Setup script to speed up a fresh WSL install.

I'm still not sure of the best wayto get this to work in one script, given that it requires zsh after installing it. I also can't get the `oh-my-zsh` script to stop kicking me out after it runs.

Also, this is best when run with the [Fura Mono Nerd Font](https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/FiraMono/Regular/complete/Fura%20Mono%20Regular%20Nerd%20Font%20Complete%20Windows%20Compatible.otf) 

You need to update the Windows Terminal to use this font.

But, general steps are

1. Run `./setup.sh`
2. Run `./setup.sh` again.
3. Run `source ~/.zshrc`
