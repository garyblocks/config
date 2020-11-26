# config
My personal config files for coding environment setup

## shell
* zsh: .zshrc
* softlink zsh config to home directory: `ln -s zshrc ~/.zshrc`
* install oh-my-zsh
    * link: `https://ohmyz.sh/#install`
    * command: `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
* install zsh-autosuggestions
    * link: `https://github.com/zsh-users/zsh-autosuggestions`
    * command: `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`
* install autojump
    * link: `https://github.com/wting/autojump`
    * command: `brew install autojump`
* install zsh-syntax-highlighting
    * link: `https://github.com/zsh-users/zsh-syntax-highlighting`
    * command: `brew install zsh-syntax-highlighting`
    * `cd ~/.oh-my-zsh/custom/plugins`
    * `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc`
* install powerlevel10k
	* `git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k`

## editor
* vim: .vimrc
* softlink vim config to home directory: `ln -s vimrc ~/.vimrc`
* install vim-plug
    * link: https://github.com/junegunn/vim-plug
    * command: `curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
    * open .vimrc and `:PlugInstall`
* install YouCompleteMe
    * link: https://github.com/ycm-core/YouCompleteMe#macos
    * `brew install cmake macvim python`
    * `brew install mono go nodejs`
    * `cd ~/.vim/plugged/youcompleteme`
    * `python3 install.py --all`

## flow
* git: gitconfig
* softlink git config to home directory: `ln -s gitconfig ~/.gitconfig`
