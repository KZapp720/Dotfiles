# Dotfiles
This repository holds all the configurations for my personal setup. This repository assumes that it is working in a macOS environment with zsh as the default shell and Homebrew as the package manager.


# First Party Software
This list contains applications that can be installed from the [macOS App Store](https://apple.com/app-store).
* [Amphetamine](https://apps.apple.com/us/app/amphetamine/id937984704)
* [Apple Keynote](https://apps.apple.com/us/app/keynote/id409183694)
* [Apple Numbers](https://apps.apple.com/us/app/numbers/id409203825)
* [Apple Pages](https://apps.apple.com/us/app/pages/id409201541)
* [Final Cut Pro](https://apps.apple.com/us/app/final-cut-pro/id424389933)
* [Logic Pro](https://apps.apple.com/us/app/logic-pro/id634148309)
* [Microsoft Excel](https://apps.apple.com/us/app/microsoft-excel/id462058435)
* [Microsoft PowerPoint](https://apps.apple.com/us/app/microsoft-powerpoint/id462062816)
* [Microsoft Word](https://apps.apple.com/us/app/microsoft-word/id462054704)
* [OneDrive](https://apps.apple.com/us/app/onedrive/id823766827)
* [Xcode](https://apps.apple.com/us/app/xcode/id497799835)
* [Markdown Editor for Safari](https://apps.apple.com/us/app/markdown-editor-for-safari/id6578456621)
* [Raycast Companion for Safari](https://apps.apple.com/us/app/raycast-companion/id6738274497?mt=12)
* [SurfingKeys for Safari](https://apps.apple.com/us/app/surfingkeys/id1609752330)


# Third Party Software
This list contains applications that can be installed from the Internet.
* [PostgreSQL](https://postgresapp.com/downloads.html)
* [Scroll](https://ryanhanson.dev/scroll)
* [Supercharge](https://sindresorhus.com/supercharge)


# Home Directory Setup
The following scripts add minimal configuration files to the <b> <i> <span style="color: #75a5f9;">$<span style="color: #fb7cb3;">HOME</span> </span> <i> <b> directory.
<details> <summary> <b> $HOME/Cloud/ </b> </summary>

```zsh
ln -s "$HOME/Library/Mobile Documents/com~apple~CloudDocs" "$HOME/Cloud"
ln -s "$HOME/Library/Mobile Documents/iCloud~com~omz-software~Pythonista3/Documents" "$HOME/Scripts"
command mkdir "$HOME/One Drive"
command mkdir "$HOME/Projects"
```
</details>

<details> <summary> <b> $HOME/.ignore </b> </summary>

```zsh
cat <<EOF > "$HOME/.ignore"
.DS_Store
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
*.WOFF2
EOF
```
</details>

<details> <summary> <b> $HOME/.zshenv </b> </summary>

```zsh
cat <<EOF > "$HOME/.zshenv"
export XDG_CACHE_HOME="\${XDG_CACHE_HOME:-\$HOME/Library/Caches}"
export XDG_CONFIG_HOME="\${XDG_CONFIG_HOME:-\$HOME/.config}"
export XDG_DATA_HOME="\${XDG_DATA_HOME:-\$HOME/.local}"
export ZDOTDIR="\${ZDOTDIR:-\$XDG_CONFIG_HOME/zsh}"
source "\$ZDOTDIR/.zprofile"
EOF
```
</details>


# Config Directory Setup
The following script clones this repository to <b> <i> <span style="color: #75a5f9;">$<span style="color: #fb7cb3;">XDG_CONFIG_HOME</span> </span> <i> <b> (deleting its existing content beforehand).
```zsh
rm -rf $XDG_CONFIG_HOME
git clone https://github.com/KZapp720/Dotfiles $XDG_CONFIG_HOME
```


# Package Manager
All other third-party software is installed through [Homebrew](https://brew.sh/), install Homebrew with the command below then run the installations scripts below:
```zsh
if ! command -v brew &>/dev/null; then
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
brew install fish
brew install fzf
brew install gh
brew install git
brew install git-delta
brew install git-who
brew install helix
brew install nushell
brew install ripgrep
brew install sqlite
brew install starship
brew install typst
brew install yazi
brew install yq
brew install zellij
brew install zoxide
brew install zsh-autosuggestions
```
</details>

<details> <summary> <span style="font-size: 16px;"> <b> Homebrew Casks </b> </span> </summary>

```zsh
brew install bettertouchtool
brew install chatgpt
brew install dimentium/autoraise/autoraiseapp
brew install font-fira-code-nerd-font
brew install homerow
brew install karabiner-elements
brew install nikitabobko/tap/aerospace
brew install pearcleaner
brew install raycast
brew install wezterm
brew install zed
brew install zen
```
</details>

<details> <summary> <span style="font-size: 16px;"> <b> Developer Tools </b> </span> </summary>

```zsh
brew install rust rust-analyzer
brew install ghc  haskell-language-server
```
</details>


# System Preferances
TBA


# License
This repository is licensed under the [MIT License](./LICENSE.md).
