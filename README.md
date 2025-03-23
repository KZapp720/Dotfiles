
# Dotfiles
This repository holds all the configurations for my personal setup. This repository assumes that it is working in a macOS environment with zsh as the default shell and homebrew as the package manager.
<details> <summary> <span style="font-size: 20px;"> <b> Table of Contents </b> </span> </summary>

* [Features](#features)
* [System Defaults](#system-defaults)
* [Home Directory Setup](#home-directory-setup)
* [Config Directory Setup](#config-directory-setup)
* [Package Manager](#package-manager)
* [License](#license)
</details>


# Features
- [ ] aerospace: For tiling window management.
- [ ] arc: For Arc configurations.
- [ ] automater: For Finder automations.
- [ ] gh: For CLI github integrations.
- [ ] git: For global git configurations.
- [ ] helix: For editor configurations.
- [ ] karabiner: For emulating keyboard layering, see [Keyboard Layout](./keyboard-layouts.png) for details.
- [ ] safari: For Safari configurations.
- [ ] surfingkeys: For VIM emulation in the web browser.
- [ ] wezterm: For terminal emulation and terminal multiplexing.
- [ ] xdg compliance: For zsh.


# System Defaults
The following scripts change ***System Settings*** towards my preferances and lists ***First Party*** and ***Third Party*** DMG links to download.
<details> <summary> <b> System Settings </b> </summary>

* TBA
</details>

<details> <summary> <b> First Party Applications </b> </summary>

* Final Cut Pro
* Logic Pro
* Xcode
</details>

<details> <summary> <b> Third Party Applications </b> </summary>

* Auto Raise
* Chat GPT
* PostgreSQL
* Better Touch Tool
* Home Row
* Scroll
* Supercharge
</details>


# Home Directory Setup
The following scripts add minimal configuration files to the <b> <i> <span style="color: #75a5f9;">$<span style="color: #fb7cb3;">HOME</span> </span> <i> <b> directory.


<details> <summary> <b> $HOME/.ignore </b> </summary>

```zsh
echo '.DS_Store
.cargo/
.cache/
.config/helix/runtime
.config/raycast/extensions
.git/
.local/
Library/
Movies/
Music/
Pictures/
Public/
*.git-credentials
*.heic
*.jpeg
*.jpg
*.mov
*.mp4
*.pdf
*.png
*.ttf
*.woff2
*.HEIC
*.JPEG
*.JPG
*.MOV
*.MP4
*.PDF
*.PNG
*.TTF
*.WOFF2\n' > $HOME/.ignore
```
</details>


<details> <summary> <b> $HOME/.zshenv </b> </summary>

```zsh
echo 'export XDG_CACHE_HOME="${XDG_CACHE_HOME:-$HOME/Library/Caches}"
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
export XDG_DATA_HOME="${XDG_DATA_HOME:-$HOME/.local/share}"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
source "$ZDOTDIR/.zprofile"\n' > $HOME/.zshenv
```
</details>


# Config Directory Setup
The following script clones this repository to <b> <i> <span style="color: #75a5f9;">$<span style="color: #fb7cb3;">XDG_CONFIG_HOME</span> </span> <i> <b> (deleting its existing content beforehand). 
<details> <summary> <b> Cloning Script </b> </summary>

```zsh
rm -rf $XDG_CONFIG_HOME
git clone https://github.com/KZapp720/Dotfiles $XDG_CONFIG_HOME
```
</details>


# Package Manager
All third-party software is installed through [Homebrew](https://brew.sh/), install Homebrew with the command below then run the installations scripts below:
```bash
if ! command -v brew &>/dev/null; then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
```


<details> <summary> <span style="font-size: 16px;"> <b> Homebrew Formulaes </b> </span> </summary>

```zsh
brew install bat
brew install entr
brew install eza
brew install fd
brew install felixkratz/formulae/borders
brew install fzf
brew install git
brew install git-delta
brew install git-who
brew install gh
brew install ripgrep
brew install starship
brew install typst
brew install yazi
brew install yq
brew install zoxide   
```
</details>


<details> <summary> <span style="font-size: 16px;"> <b> Homebrew Casks </b> </span> </summary>

```zsh
brew install aerospace
brew install alt-tab
brew install arc
brew install karabiner-elements              
brew install mactex-no-gui
brew install pearcleaner
brew install raycast
brew install wezterm
```
</details>


# License
This repository is licensed under the [MIT License](./LICENSE.md).

