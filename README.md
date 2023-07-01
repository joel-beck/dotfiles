# Dotfiles

TODO: Add description of this directory and the purpose of dotfiles.

## Setup a new MacBook

1.  Be **very** careful to set the User Name for the Device Account and the Home directory correctly!
    The default name is `firstnamelastname` (e.g. `joelbeck`) instead of only the firstname (e.g. `joel`) which is often preferred.

    If the name is set incorrectly, it can be changed by [creating a new administrator account](https://support.apple.com/en-us/HT201548) on this device, renaming the main account from the new admin account and finally deleting the new admin account again.

1.  Open Safari, navigate to [GitHub](https://github.com) and authenticate.

2. [Create a new GitHub Personal Access Token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens#creating-a-fine-grained-personal-access-token) for the new device.

2.  Open the built-in Terminal App and clone the dotfiles repository from GitHub to the home directory:

    ```bash
    git clone https://github.com/joel-beck/dotfiles.git ~/dotfiles
    ```

    - When requested, accept to install the Xcode Developer Tools first.
    - Enter the GitHub username and the new Personal Access Token from the previous step.


3.  Run `01_homebrew.zsh` to install Homebrew Packages, MacOS Apps and Nerd Fonts:

    ```bash
    cd ~/dotfiles/install
    zsh 01_homebrew.zsh
    ```

4.  Run `02_stow.zsh` to symlink the dotfiles to the home directory.
    Note that this step has to follow step 1 since it requires the `stow` package to be installed via Homebrew:

    ```bash
    cd ~/dotfiles/install
    zsh 02_stow.zsh
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

8.  Run `06_directory_structure.zsh` to create the [desired file system directory structure](#file-system-structure):

    ```bash
    cd ~/dotfiles/install
    zsh 06_directory_structure.zsh
    ```

9.  Install the [remaining MacOS Apps](#apps-to-install-manually) that are not available via Homebrew manually.

10. Copy important files from hard drive backup to the new machine.
    The files should be in the same location in the file system.

11. Log into iCloud and all apps to sync data. Trigger manual syncs for apps that do not sync automatically.

12. Restart the MacBook.

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
- Bartender 4
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
- One Switch
- Peek
- PDFgear
- Readwise
- xSearch
- SmartConverter
- Snippety
- TempBox
- Twitter
- Velja
- Yoink




