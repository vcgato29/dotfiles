alias gst='git status'
alias gd='git diff'
alias gb='git branch'
alias gba='git branch -a'
alias grm="git status | grep deleted | awk '{\$1=\$2=\"\"; print \$0}' | \
           perl -pe 's/^[ \t]*//' | sed 's/ /\\\\ /g' | xargs git rm"
