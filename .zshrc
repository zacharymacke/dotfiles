# Path to your zplug installation.
source ~/.zplug/init.zsh

export M2_HOME=/Users/zmacke/opt/apache-maven-3.6.1
export MAVEN_HOME=$M2_HOME
export PATH="$PATH:$JAVA_HOME/bin:$M2_HOME/bin:$MAVEN_HOME/bin"

autoload -U compinit promptinit

# zplug plugins
zplug "mafredri/zsh-async", from:github
zplug "plugins/git", from:oh-my-zsh
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Autosugestion changes
# source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# ZSH_AUTOSUGGEST_USE_ASYNC = true
# bindkey '^ ' autosuggest-accept
#
compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=*' 'r:|=*'



# Aliases
alias ls="ls -G"
alias zshrc="nvim ~/.zshrc"
alias nvimrc="nvim ~/.config/nvim/init.vim"
alias lsa="ls -a"
alias c="clear"
alias rf="rm -rf"
alias ktmux="tmux kill-session"
alias tmuxk="tmux kill-session"
alias tmuxconf="nvim ~/.tmux.conf"
alias src="source ~/.zshrc"
alias eslintrc="nvim ~/.eslintrc.js"
alias hyperconf="nvim ~/.hyper.js"
alias nvimcolors="nvim ~/.config/nvim/colorschemes.vim"
alias krc="nvim ~/.config/kitty/kitty.conf"
alias fixyarn="rm -rf node_modules/ && rm -rf ~/.yarn-cache/ && mkdir -p ~/.yarn-cache"

# Things that must be at the end
zplug load 

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh
export MAVEN_OPTS="-Xms256m -Xmx512m"
export NVM_DIR=~/.nvm
source /usr/local/opt/nvm/nvm.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
