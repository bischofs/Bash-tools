 # .bashrc                                                            
#Linux bashrc
# User specific aliases and functions                                 
export PATH=$PATH:/home/steve/bin
LS_COLORS='di=0;33' ; export LS_COLORS


# Source global definitions                                           
if [ -f  /lab/DefaultSetups/bashrc ]; then
        . /lab/DefaultSetups/bashrc

fi


echo "  "
alias git="SSH_ASKPASS='' git"
alias ct='cat -n'
alias w='watch -n 1 date +%s'
alias l='ls -F'
PS1="\e[0;33m[\W]\e[m "
alias lpp='lp -o cpi=14 -o lpi=9 -o prettyprint -o page-left=50 -o pa\
ge-right=50 -o page-top=25 -o page-bottom=25'
alias e='emacs -nw'
alias c='cd'

alias ..='cd ..'

function path(){
    old=$IFS
    IFS=:
    printf "%s\n" $PATH
    IFS=$old
}


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
