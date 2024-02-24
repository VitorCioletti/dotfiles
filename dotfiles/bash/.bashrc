# append to the history file, don't overwrite it
shopt -s histappend

# ignore duplicates and spaces
HISTCONTROL=ignoredups:ignorespace

# commands in history memory 
HISTSIZE=10000

# commands in history file 
HISTFILESIZE=10000

# configuring prompt
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# custom aliases
alias ls='ls --color=auto'
alias lha='ls -lha --color=auto'
alias grep='grep --color=auto'
alias clipboard='xclip -selection c' 
alias open='xdg-open'

# gzip, create, verbose, file
alias compresstarball='tar -zcvf'
# gzip, extract, verbose, file
alias extracttarball='tar -zxvf'

# custom scripts
export PATH="/home/$USER/Arquivos/projetos/loovi/scripts-publicacao/:$PATH"
export PATH="/home/$USER/Arquivos/projetos/pessoal/dotfiles/scripts/:$PATH"
export PATH="/home/$USER/.dotnet/:$PATH"
export PATH="/opt/nvim-linux64/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
