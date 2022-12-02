if [ -f $HOME/.bashrc ]; then
  source $HOME/.bashrc
fi

# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

# https://jekyllrb.com/docs/installation/macos/
source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh
chruby ruby-3.1.3

# You can always fall back to using the original commands with \command
# Human readable, exclude . and .., list, dir/ slash, color
alias ls='ls -GhAlp'
alias cd='pushd'
alias pd='popd'
alias cddesktop='pushd ~/Desktop/'
alias cddocuments='pushd ~/Documents/'
alias cddownloads='pushd ~/Downloads/'
alias dsstore='find . -name .DS_Store -type f -delete'
alias sb='source ~/.bash_profile'
alias eb='vim ~/.bash_profile'
alias eg='vim ~/.gitconfig'
alias ev='vim ~/.vimrc'

# Unlimited history and format like PS1
HISTSIZE=
HISTFILESIZE=
HISTTIMEFORMAT='[%a %D %r]: '

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\n\[\033[35m\][\D{%a %D %r}] \w\$(parse_git_branch)\[\033[0m\]\n"
