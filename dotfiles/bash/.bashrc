# if not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# append to the history file, don't overwrite it
shopt -s histappend

# history size 
HISTSIZE=10000
HISTFILESIZE=20000

# configuring prompt
PS1='\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# custom aliases
alias ls='ls --color=auto'
alias lha='ls -lha --color=auto'
alias grep='grep --color=auto'
alias clipboard='xclip -selection c' 

# custom scripts
export PATH="/home/$USER/Arquivos/projetos/loovi/scripts-publicacao/:$PATH"
export PATH="/home/$USER/Arquivos/projetos/pessoal/dotfiles/scripts/:$PATH"

# configuring asdf
source /home/$USER/.asdf/asdf.sh
source /home/$USER/.asdf/completions/asdf.bash
