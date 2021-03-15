title() { export TITLE_OVERRIDDEN=1; echo -en "\e]0;$*\a"}
autotitle() { export TITLE_OVERRIDDEN=0 }; autotitle
overridden() { [[ $TITLE_OVERRIDDEN == 1 ]]; }
gitDirty() { [[ $(git status 2> /dev/null | grep -o '\w\+' | tail -n1) != ("clean"|"") ]] && echo "*" }
precmd() {
   pwd=$(pwd)
   cwd=${pwd##*/}
   print -Pn "\e]0;$cwd\a"
}
preexec() {
   if overridden; then return; fi
   printf "\033]0;%s\a" "${1%% *} | $xcwd"
}

