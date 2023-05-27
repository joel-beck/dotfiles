# Dotfiles

TODO: Add description of this directory and the purpose of dotfiles.

## Setup a new MacBook

1.  Copy important files from hard drive backup to new machine.
    The files should be in the same location in the file system.

2.  Clone the dotfiles repository from GitHub to the home directory:

    ```bash
    git clone https://github.com/joel-beck/dotfiles.git ~/dotfiles
    ```
3.  Run `01_stow.zsh` to symlink the dotfiles to the home directory:

    ```bash
    cd ~/dotfiles/install
    zsh 01_stow.zsh
    ```

4.  Run `02_homebrew.zsh` to install Homebrew Packages, MacOS Apps and Nerd Fonts:

    ```bash
    cd ~/dotfiles/install
    zsh 02_homebrew.zsh
    ```

5.  Run `03_oh-my-zsh.zsh` to install OH MY ZSH:

    ```bash
    cd ~/dotfiles/install
    zsh 03_oh-my-zsh.zsh
    ```

6.  **Restart the shell** (such that OH MY ZSH can set required environment variables).
    Then run `04_install-oh-my-zsh-plugins.zsh` to install OH MY ZSH plugins:

    ```bash
    cd ~/dotfiles/install
    zsh 04_install-oh-my-zsh-plugins.zsh
    ```

7.  Run `05_macos.zsh` to set MacOS System Preferences:

    ```bash
    cd ~/dotfiles/install
    zsh 05_macos.zsh
    ```

7.  Install the remaining MacOS Apps that are not available via Homebrew manually.

TODO: Add list of remaining MacOS Apps in this README file

8.  Restart the MacBook.

Done 🎉
