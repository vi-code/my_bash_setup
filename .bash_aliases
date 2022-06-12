#   A better copy
alias cp='cp -iv'

#   A better move
alias mv='mv -iv'

#   A better mkdir
alias mkdir='mkdir -pv'

#   A better ls
alias l='ls -FGlAhp'

#   A better less
alias less='less -FSRXc'

#   Show dir tree
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'

#   Quick export of AWS_PROFILE
ea () { export AWS_PROFILE="$1" ; }

#   Login to AWS
o () { oa -p "$1" && ea "$1" ; }

#   Activate virtualenv
v () { . ~/.local/"$1"/bin/activate ; }

#   showa: to remind yourself of an alias (given some part of it)
#   ------------------------------------------------------------
showa () { /usr/bin/grep --color=always -i -a1 $@ ~/.bash_aliases | grep -v '^\s*$' | less -FSRXc ; }

#   Start a virtualenv
startvenv () { cd ~ && virtualenv $1 ; }
#   Enter a virtualenv
entervenv () { cd ~ && . ~/$1/bin/activate  ; }
