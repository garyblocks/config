# Apps
* MacDown
	* An app to view and edit markdown files
* iTerm2
	* terminal
	* change the profile -> colors to use color preset solarized dark, then also modify ANSI Colors -> Black Bright to a color ligher than Basic Colors -> Background, this is for auto-suggestion in zsh to show up.
	* set the window size in profile -> window, set columns to 160, rows to 40.
    * install consolas
        * `brew install cabextract`
        * `cd ~/Downloads`
        * `mkdir consolas`
        * `curl -LO https://sourceforge.net/projects/mscorefonts2/files/cabs/PowerPointViewer.exe`
        * `cabextract PowerPointViewer.exe`
        * `cabextract ppviewer.cab`
        * `open CONSOLA*.TTF` and click install
        * remove consolas folder
* Chrome
	* browser
	* install Chrome brower
	* install oneTab in Chrome
* Rectangle
	* easier window resize
	* <https://github.com/rxhanson/Rectangle>
* Clocker
	* show time in different timezone
* Caffeine
    * <https://www.macupdate.com/app/mac/24120/caffeine>

# Softwares
* Homebrew
	* software to download other mac softwares
	* <https://brew.sh/>
	* download command: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"`
* Vim
	* text editor
	* command: `brew install macvim`
* The Silver Search
	* text search in terminal
	* <https://github.com/ggreer/the_silver_searcher>
	* install command: `brew install the_silver_searcher`
* Tag ag
    * add tag to ag
    * <https://github.com/aykamko/tag>
    * command: `brew tap aykamko/tag-ag` then `brew install tag-ag`
* fzf
	* <https://github.com/junegunn/fzf>
	* install command: `brew install fzf`
	* install settings: run `/usr/local/opt/fzf/install`, then `source .zshrc`
* mysql
	* relational database
	* download and install from: https://dev.mysql.com/downloads/mysql/
	* add the install path to .zshrc
* poetry
    * <https://python-poetry.org>
    * Install command:
        `curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -`
    * set up auto completion with Oh-My-Zsh:
        * `mkdir $ZSH_CUSTOM/plugins/poetry`
        * `poetry completions zsh > $ZSH_CUSTOM/plugins/poetry/_poetry`
        * add `poetry` to `plugin` in `.zshrc`
* nerd-fonts
	* terminal fonts
	* install commands:
		* `brew tap homebrew/cask-fonts`
		* `brew cask install font-hack-nerd-font`
* install colorls
	* colorful and iconized ls command
	* <https://github.com/athityakumar/colorls#installation>
* pyenv
    * <https://github.com/pyenv/pyenv>
    * install `brew install pyenv`
    * update shell
        * `echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc`
        * `echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc`
        * `echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc`
    * restart shell: `exec "$SHELL"`
    * install python build dependencies: `brew install openssl readline sqlite3 xz zlib`
    * install a python: `pyenv install 3.9.0`
* Tmux
    * `brew install tmux`
