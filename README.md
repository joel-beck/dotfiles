# Dotfiles

TODO: Add description of this directory and the purpose of dotfiles.

## Setup a new MacBook

1.  Be **very** careful to set the User Name for the Device Account and the Home directory correctly!
    The default name is `firstnamelastname` (e.g. `joelbeck`) instead of only the firstname (e.g. `joel`) which is often preferred.

    If the name is set incorrectly, it can be changed by [creating a new administrator account](https://support.apple.com/en-us/HT201548) on this device, renaming the main account from the new admin account and finally deleting the new admin account again.

2.  Open Safari, navigate to [GitHub](https://github.com) and login to the GitHub account via Apple Keychain.

3. [Create a new GitHub Personal Access Token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens#creating-a-fine-grained-personal-access-token) for the new device.

4.  Open the built-in Terminal App and clone the dotfiles repository from GitHub to the home directory:

    ```bash
    git clone https://github.com/joel-beck/dotfiles.git ~/dotfiles
    ```

    - When requested, accept to install the Xcode Developer Tools first.
    - Enter the GitHub username and the new Personal Access Token from the previous step.


5.  Run `01_macos.zsh` to set MacOS System Preferences:

    ```bash
    cd ~/dotfiles/install
    zsh 01_macos.zsh
    ```

6.  Run `02_symlinks.zsh` to create symlinks within the file system:

    ```bash
    cd ~/dotfiles/install
    zsh 02_symlinks.zsh
    ```

7.  Run `03_homebrew.zsh` to install Homebrew Packages, MacOS Apps and Nerd Fonts:

    ```bash
    cd ~/dotfiles/install
    zsh 03_homebrew.zsh
    ```

    Enter the password for the user account when requested.


8.  While Apps are installing:
    - Check frequently for prompts in the terminal to enter the password for the user account.
    - Log into accounts of already installed apps.
    - Setup the [desired file system directory structure](#file-system-structure) and copy important files from an external SSD backup.


9.  Run `04_stow.zsh` to symlink the dotfiles to the home directory.
    Note that this step has to follow step 1 since it requires the `stow` package to be installed via Homebrew:

    ```bash
    cd ~/dotfiles/install
    zsh 04_stow.zsh
    ```

10. Run `05_oh-my-zsh.zsh` to install OH MY ZSH:

    ```bash
    cd ~/dotfiles/install
    zsh 05_oh-my-zsh.zsh
    ```

11. **Restart the shell** (such that OH MY ZSH can set required environment variables).
    Then run `06_install-oh-my-zsh-plugins.zsh` to install OH MY ZSH plugins:

    ```bash
    cd ~/dotfiles/install
    zsh 06_install-oh-my-zsh-plugins.zsh
    ```

12. Run `07_perl.zsh` to install `perlbrew` to manage Perl versions, the latest perl version and `cpanm` to install Perl modules.
    Then install the required Perl modules for formatting LaTeX files with `latexindent` (used by the VSCode `LaTeX Workshop` extension):

    ```bash
    cd ~/dotfiles/install
    zsh 07_perl.zsh
    ```

    It might be necessary to manually specify the desired Perl version in the `latexindent.pl` script such that latexindent find all perl modules for the new version and does not use the system perl version:

    i) Open the `latexindent.pl` script in VSCode:

    ```bash
    code /usr/local/texlive/2023/texmf-dist/scripts/latexindent/latexindent.pl
    ```

    ii) Assuming the Perl version `5.38.0`, replace the first line

    ```perl
    #!/usr/bin/env perl
    ```

    with

    ```perl
    #!/Users/joel/perl5/perlbrew/perls/perl-5.38.0/bin/perl
    ```

    Then save the file with sudo permissions.

13. Install the [remaining MacOS Apps](#apps-to-install-manually) that are not available via Homebrew manually.

14. Copy important files from hard drive backup to the new machine.
    The files should be in the same location in the file system.

15. Log into all apps to sync data. Trigger manual syncs for apps that do not sync automatically.

16. Restart the MacBook.

Done 🎉


### File System Structure

```bash
/Users/joel/
    │
    ├── dotfiles
    ├── Documents
    │   ├── AppBackups
    │   ├── LargeFiles
    │   ├── ObsidianVault
    │   ├── Playlists
    │   ├── ProjectsPrivate
    │   └── ProjectsPublic
    ├── iCloud
    │   ├── Bachelorstudium
    │   ├── Masterstudium
    │   ├── Sonstiges
    │   └── StudiumSonstiges
    ├── iCloudBackup
    ├── ownCloudBackup
    │
    ├── Pictures (generated automatically)
    ├── zshrc (symlinked from dotfiles)
    └── Zotero (generated automatically)
```



### Apps to install manually

- Actions
- AdBlock Pro
- Aiko
- Amphetamine
- Command X
- Data Jar
- Drafts
- GIPHY CAPTURE
- GoodNotes
- Google Docs
- Google Sheets
- Google Slides
- Hand Mirror
- Kit
- Noir
- Peek
- PDFgear
- Readwise
- xSearch
- SmartConverter
- Snippety
- TempBox
- Velja
- Yoink




