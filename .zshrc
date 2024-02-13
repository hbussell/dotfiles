eval "$(/opt/homebrew/bin/brew shellenv)"

export PATH=$HOME/.gem/bin:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH="$PATH:/Users/pc04406/development/flutter/bin"
export PATH="$PATH":"$HOME/.pub-cache/bin"



export JAVA_HOME=/Library/Java/JavaVirtualMachines/amazon-corretto-8.jdk/Contents/Home




alias gpb='git push origin `git rev-parse --abbrev-ref HEAD`'
alias gst='git status'
alias gbr='git branch'
alias gca='git commit -am'
alias gco='git checkout'



eval "$(starship init zsh)"

# 
export FONTAWESOME_NPM_AUTH_TOKEN=2CD4C561-DA4D-4E05-9F05-752B60FC2B9D

export CCES_ENDPOINT=http://localhost:8080/mockcustomerConfirmationSoapBinding


# Alinta Nexus
export NPM_TOKEN=eca94b70-b085-3473-a2ad-10ae664e59b5;

alias start-core='nvm use && API_BASE=https://holden-core.alkira.alintaenergy.com.au npm start'
alias start-core-ng='nvm use && API_BASE=https://holden-core-ng.alkira.alintaenergy.com.au npm start'
alias start-core-ford='API_BASE=https://ford-core.alkira.alintaenergy.com.au npm start'
alias start-core-prod='API_BASE=https://core.alkira.alintaenergy.com.au npm start'
alias start-core-fisker='API_BASE=https://core.fisker.encore.sh npm start'
alias start-core-local='nvm use && API_BASE=http://localhost:9001 npm start'
alias start-billing="CORS_ENABLED=true sbt -jvm-debug 5005 'run 9001'"
alias start-meter-debug="sbt -jvm-debug 5005 'run 3000'"
alias start-meter="sbt 'run 3000'"


