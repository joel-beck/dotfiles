# Dotfiles

TODO: Add description

## Setup new Machine

TODO: Set up file system from hard drive backup.

TODO: Clone the dotfiles repository from GitHub to the home directory.

1.  Use stow to symlink the dotfiles to the home directory.

TODO: Instructions for stow. Add file which runs the necessary code.

2.  Run `homebrew/01_install-homebrew.zsh` to install homebrew:

    ```bash
    cd ~/dotfiles/homebrew
    zsh 01_install-homebrew.zsh
    ```

3.  Run `homebrew/02_install-homebrew-packages.zsh` to install homebrew packages:

    ```bash
    cd ~/dotfiles/homebrew
    zsh 02_install-homebrew-packages.zsh
    ```

4.  Run `homebrew/03_install-oh-my-zsh.zsh` to install OH MY ZSH:

    ```bash
    cd ~/dotfiles/homebrew
    zsh 03_install-oh-my-zsh.zsh
    ```

5.  Restart the shell (such that OH MY ZSH can set required environment variables).
    Then run `homebrew/04_install-oh-my-zsh-plugins.zsh` to install OH MY ZSH plugins:

    ```bash
    cd ~/dotfiles/homebrew
    zsh 04_install-oh-my-zsh-plugins.zsh
    ```

6. Install MacOS Preferences

    ```bash
    cd ~/dotfiles/macos
    zsh install.zsh
    ```

TODO: Install Fonts with Homebrew: Cascaydia Code NF, Fira Code NF, JetBrains Mono NF

7. Install MacOS Apps with Homebrew if possible

Install remaining MacOS Apps manually

8. Restart the MacBook


Done 🎉