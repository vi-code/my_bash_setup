if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
. ~/.bash_prompt
. ~/.bash_aliases
export PATH="/usr/local/opt/curl/bin:$PATH"
alias python=python3
export PATH="/usr/local/sbin:$PATH"

