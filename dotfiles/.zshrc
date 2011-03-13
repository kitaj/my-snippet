# env
export PATH=/opt/local/bin:/opt/local/sbin:/usr/local/git/bin:$PATH
export DISPLAY=:0.0
export CLICOLOR=
export LANG=ja_JP.UTF-8
export PERL5LIB=/Users/kita/.cpan/perl/lib/perl5:/Users/kita/.cpan/perl/lib/perl5/site_perl

# alias
alias ls='ls -F'
alias ll='ls -lg'
alias lla='ll -a'

# vars
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh.history
SHARE_HISTORY=true
PROMPT="${WINDOW:+[$WINDOW]}%U%n@%m%%%u "
RPROMPT="[%~]"

function chpwd() {
  ls
}
function cdup() {
  echo
  cd ..
  zle reset-prompt
}
zle -N cdup
bindkey '\^' cdup

# The following lines were added by compinstall

zstyle :compinstall filename '/Users/kita/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
source ~/.cinderella.profile

eval `keychain -q --eval id_dsa`
