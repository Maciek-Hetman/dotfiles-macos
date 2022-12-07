# Oh my zsh configuration
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"

# Installing oh my zsh and plugins if not installed
if [ ! -d $HOME/.oh-my-zsh ]; then sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"; fi
if [ ! -d $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions ]; then git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions; fi
if [ ! -d $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting ]; then git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting; fi

plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration
alias ls="exa --icons"
alias l="lsd -l"
alias la="lsd -la"
alias lt="lsd --tree"

alias vim=nvim
alias cat=bat
alias find=fd
alias c=clear

alias cn="clear; neofetch"
alias ccd="clear; cd"
alias cl="clear; lsd -l"
alias cla="clear; lsd -la"
alias clt="clear; lsd --tree"

alias rf="rm -rf"
alias htop="sudo htop"

alias bupdate="brew update && brew cleanup"
alias update="bupdate && sudo softwareupdate -ia"

