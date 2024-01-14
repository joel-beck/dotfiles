# Dotfiles

This repository contains my configuration files for many MacOS applications and MacOS preferences.

By having a single repository for all configuration files, it is possible to:

1. Easily revert accidental changes to configuration files with Git.
1. Have an additional Backup of all configuration files on GitHub.
1. Quickly set up a new Mac with all configuration files and preferences by cloning this repository and following the steps below.


## Setting up a new Mac

1.  Be **very** careful to set the User Name for the Device Account and the Home directory correctly!
    The default name is `firstnamelastname` (e.g. `joelbeck`) instead of only the firstname (e.g. `joel`) which is often preferred.

    If the name is set incorrectly, it can be changed by [creating a new administrator account](https://support.apple.com/en-us/HT201548) on this device, renaming the main account from the new admin account and finally deleting the new admin account again.

2. Open Safari, navigate to [GitHub](https://github.com) and login to the GitHub account via Apple Keychain.

3. [Create a new GitHub Personal Access Token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens#creating-a-fine-grained-personal-access-token) for the new device.

4.  Open the built-in Terminal App and clone the dotfiles repository from GitHub to the home directory:

    ```bash
    git clone https://github.com/joel-beck/dotfiles.git ~/dotfiles
    ```

    - When requested, accept to install the Xcode Developer Tools first.
    - Enter the GitHub username and the new Personal Access Token from the previous step.

5.  Run `01_homebrew.zsh` to install Homebrew Packages, MacOS Apps and Nerd Fonts:

    ```bash
    cd ~/dotfiles/scripts
    zsh 01_homebrew.zsh
    ```

    Enter the password for the user account when requested.

6.  Run `02_symlinks.zsh` to create symbolic links from iCloud to a new `~/iCloud` folder and to run the `dotbot` installation script for the dotfiles:

    ```bash
    cd ~/dotfiles/scripts
    zsh 02_symlinks.zsh
    ```

    Now that the development environment is set, continue with the remaining process using Warp and VSCode for convenience.

7.  Run `03_oh-my-zsh.zsh` to install OH MY ZSH:

    ```bash
    cd ~/dotfiles/scripts
    zsh 03_oh-my-zsh.zsh
    ```

8.  **Restart the shell** (such that OH MY ZSH can set required environment variables).
    Then run `04_oh-my-zsh-plugins.zsh` to install OH MY ZSH plugins:

    ```bash
    cd ~/dotfiles/scripts
    zsh 04_oh-my-zsh-plugins.zsh
    ```

9.  Run `05_perl.zsh` to install `perlbrew` to manage Perl versions, the latest perl version and `cpanm` to install Perl modules.
    Then install the required Perl modules for formatting LaTeX files with `latexindent` (used by the VSCode `LaTeX Workshop` extension):

    ```bash
    cd ~/dotfiles/scripts
    zsh 05_perl.zsh
    ```

    It might be necessary to manually specify the desired Perl version in the `latexindent.pl` script such that latexindent find all perl modules for the new version and does not use the system perl version:

    i) Open the `latexindent.pl` script in VSCode:

    ```bash
    code /usr/local/texlive/2023/texmf-dist/scripts/latexindent/latexindent.pl
    ```

    ii) Assuming the Perl version `11.11.0`, replace the first line

    ```perl
    #!/usr/bin/env perl
    ```

    with

    ```perl
    #!/Users/joel/perl5/perlbrew/perls/perl-12.12.0/bin/perl
    ```

    Then save the file with sudo permissions.

10. While Apps are installing:
    - Check frequently for prompts in the terminal to enter the password for the user account if requested.
    - Setup the [desired file system directory structure](#file-system-structure) and copy the following folders from an SSD backup disk to the new machine:
        - `~/iCloud`
        - `~/Documents/AppBackups`
        - `~/Documents/LargeFiles`
    - Clone the Obsidian Vault from its GitHub directory to `~/Documents/ObsidianVault`.
    - Clone all other repositories needed for the new machine from GitHub to
        - `~/Documents/ProjectsPrivate`
        - `~/Documents/ProjectsPublic`
    - Log into accounts of already installed apps and start the sync process or the manual configuration.

Wait until the installation of all Apps is finished.
Breathe 🧘‍♂️ Time for a cup of tea!

11. Run `06_macos.zsh` to set MacOS System Preferences:

    ```bash
    cd ~/dotfiles/scripts
    zsh 06_macos.zsh
    ```

    When requested, enter the password for the user account.
    Then, restart the Mac.
    After rebooting, check that the custom MacOS System Preferences were set correctly.

12. Install the remaining MacOS Apps that are not available via Homebrew. Lookup the list of missing Apps in Obsidian.

13. Restart the MacBook again and check that all steps were completed successfully.

Done 🎉 Enjoy your new Mac!


### File System Structure

```bash
/Users/joel/
    │
    ├── dotfiles
    │
    ├── Documents
    │   ├── AppBackups
    │   ├── LargeFiles
    │   ├── ObsidianVault
    │   ├── Playlists
    │   ├── ProjectsPrivate
    │   └── ProjectsPublic
    │
    ├── iCloud
    │   ├── Bachelorstudium
    │   ├── Masterstudium
    │   ├── Sonstiges
    │   └── KeyboardMaestro (containing the sync file)
    │
    ├── iCloudBackup
    ├── GoogleDriveBackup
    ├── ownCloudBackup
    │
    ├── Pictures (generated automatically)
    ├── Zotero (generated automatically)
    └── Default MacOS folders (generated automatically)
```
