# Dotfiles

Configuration files for macOS applications and system preferences, managed as symlinks via [dotbot](https://github.com/anishathalye/dotbot).

Benefits of this setup:
- Revert accidental changes with Git
- Additional backup on GitHub
- Quickly restore a full environment on a new Mac by following the steps below

## Setting up a new Mac

> All script commands below are run from `~/dotfiles/scripts`. You can `cd` there once and leave the terminal open for the entire setup.

### 1. Set the correct username

Be **very** careful to set the User Name for the Device Account and the Home directory correctly during initial macOS setup. The default name is `firstnamelastname` (e.g. `joelbeck`) instead of the preferred first name only (e.g. `joel`).

If the name is set incorrectly afterward, fix it by [creating a new administrator account](https://support.apple.com/en-us/HT201548), renaming the main account from that new admin account, then deleting the admin account.

### 2. Log in to GitHub

Open Safari, navigate to [GitHub](https://github.com) and log in via Apple Keychain.

### 3. Create a Personal Access Token

[Create a new GitHub Personal Access Token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens#creating-a-fine-grained-personal-access-token) for the new device.

### 4. Clone this repository

Open the built-in Terminal and clone the dotfiles repository to the home directory:

```bash
git clone https://github.com/joel-beck/dotfiles.git ~/dotfiles
```

When prompted, accept the Xcode Developer Tools installation, then enter your GitHub username and the Personal Access Token from the previous step.

### 5. Create symlinks (first pass)

Run `01_symlinks.zsh` to create a `~/iCloud` symlink to iCloud Drive and to run dotbot (which symlinks all config files into their correct locations):

```bash
cd ~/dotfiles/scripts && zsh 01_symlinks.zsh
```

This step must run before installing apps because some apps read their config location from environment variables set by the symlinks (XDG Base Directory Specification).

### 6. Install Homebrew packages and apps

```bash
zsh 02_homebrew.zsh
```

Enter the user account password when requested. This installs Homebrew itself, all CLI packages, macOS apps, and Nerd Fonts. It takes a while — use this time for step 7 below.

### 7. While Homebrew is installing (parallel tasks)

- Watch the terminal and enter the password again if prompted.
- Set up the [file system structure](#file-system-structure) and copy these folders from an SSD backup:
  - `~/iCloud`
  - `~/Documents/AppBackups`
  - `~/Documents/LargeFiles`
- Clone the Obsidian Vault: `git clone <repo> ~/Documents/ObsidianVault`
- Clone other repositories to `~/Documents/ProjectsPrivate` and `~/Documents/ProjectsPublic`
- Log in to already-installed apps and start their sync processes

### 8. Create symlinks (second pass)

Re-run `01_symlinks.zsh` once Homebrew has finished, so dotbot can also configure the newly installed apps:

```bash
zsh 01_symlinks.zsh
```

From this point on, Warp and VS Code are available — switch to them for convenience.

### 9. Install Oh My Zsh

```bash
zsh 03_oh-my-zsh.zsh
```

### 10. Install Oh My Zsh plugins

**Restart the shell first** so Oh My Zsh can set its required environment variables. Then:

```bash
zsh 04_oh-my-zsh-plugins.zsh
```

### 11. Install Perl (for LaTeX formatting)

```bash
zsh 05_perl.zsh
```

This installs `perlbrew`, the latest Perl version, `cpanm`, and the Perl modules required by `latexindent` (used by the VS Code LaTeX Workshop extension).

Afterward, you may need to point the `latexindent.pl` script at the perlbrew-managed Perl rather than the system Perl. To do so:

1. Find the installed TeX Live year and open the script:

    ```bash
    TEXLIVE_YEAR=$(ls /usr/local/texlive/ | grep -E '^[0-9]{4}$' | tail -1)
    code /usr/local/texlive/$TEXLIVE_YEAR/texmf-dist/scripts/latexindent/latexindent.pl
    ```

2. Find the installed Perl version:

    ```bash
    perlbrew list
    ```

3. Replace the first line of `latexindent.pl` — for example, if the installed version is `perl-5.38.2`:

    ```perl
    # Before
    #!/usr/bin/env perl

    # After
    #!/Users/joel/perl5/perlbrew/perls/perl-5.38.2/bin/perl
    ```

    Save with sudo permissions.

### 12. Install VS Code extensions

```bash
zsh 06_vscode-extensions.zsh
```

### 13. Apply macOS system preferences

```bash
zsh 07_macos.zsh
```

Enter the user account password when requested, then **restart the Mac**. After rebooting, verify that the custom macOS preferences were applied correctly.

### 14. Install remaining apps

Install any macOS apps not available via Homebrew. The list is maintained in the Obsidian vault under `AppBackups`.

### 15. Final restart

Restart the Mac one more time and verify that everything works as expected.

Done — enjoy the new Mac!

---

## File System Structure

```
/Users/joel/
    │
    ├── dotfiles
    │
    ├── Documents
    │   ├── LargeFiles
    │   ├── ObsidianVault
    │   ├── Playlists
    │   ├── ProjectsPrivate
    │   └── ProjectsPublic
    │
    ├── iCloud                      → ~/Library/Mobile Documents/com~apple~CloudDocs
    │   ├── AppBackups
    │   ├── Personal
    │   ├── KeyboardMaestro         (sync file)
    │   └── Default iCloud folders  (generated by apps)
    │
    ├── iCloudBackup
    ├── GoogleDriveBackup
    ├── ownCloudBackup
    │
    ├── Pictures                    (generated by macOS)
    ├── Zotero                      (generated by macOS)
    └── Default macOS folders       (generated by macOS)
```

## Day-to-day usage

After initial setup, use the `justfile` at the repo root for common tasks:

```bash
just install          # Re-run dotbot to apply symlink changes
just brewfile         # Export current Homebrew state to homebrew/Brewfile
just brewfile-install # Install everything in homebrew/Brewfile
just default-apps     # Re-apply default app associations (duti)
```

> **Note:** `homebrew/Brewfile` is a snapshot export generated by `just brewfile` — it is overwritten on each run. The authoritative source for what gets installed on a new machine is `homebrew/apps/` and `homebrew/packages/`, which are sourced by `02_homebrew.zsh`.

Editing a config file (e.g. `vscode/settings.json`) takes effect immediately — the symlink means the live file and the repo file are the same. Only changes to `install.conf.yaml` (adding/removing symlinks) require running `just install` afterward.
