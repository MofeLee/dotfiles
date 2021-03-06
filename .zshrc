export ZSH=/Users/mofe/.oh-my-zsh

ZSH_THEME="robbyrussell"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git docker golang)

source $ZSH/oh-my-zsh.sh

source ~/.exports
source ~/.aliases
source ~/.functions

# see https://superuser.com/questions/352788/how-to-prevent-a-command-in-the-zshell-from-being-saved-into-history
setopt HIST_IGNORE_SPACE

# nvm
export NVM_DIR="/Users/mofe/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/mofe/.sdkman"
[[ -s "/Users/mofe/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/mofe/.sdkman/bin/sdkman-init.sh"

source $(brew --prefix autoenv)/activate.sh
