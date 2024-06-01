
#############################################
# Aliases
#############################################

alias zshplugins="la $ZGEN_SOURCE/sources/ohmyzsh/ohmyzsh/___/plugins"
alias pslist="ps -U nick | grep Applications | sed -E 's/.*Applications\/(.*)\.app\/.*/\1/g' | sed -E 's/.*Web App.*bundlepath.*Applications\/(.*)\.app --sand.*/\1/g' | grep -v 'tty' | grep -v 'Frameworks' | g | sort -u"

# Fast config edit
alias eze="$EDITOR $ZDOTDIR/zshenv"
alias ezr="$EDITOR $ZDOTDIR/.zshrc"
alias ezz="$EDITOR $ZDOTDIR/{zshenv,.zshrc,.zprofile,zsh.$HOST}"
alias ea="$EDITOR $ZDOTDIR/aliases.zsh"
alias eaa="$EDITOR $ZDOTDIR/*.zsh"

# Crontab
alias crontab-save="crontab -l > $HOME/.crontab"

# Dotfiles
dot-save() {
  test -z $1 && return 1

  mv "$1" "$HOME/.dotfiles/home"
  ln -s "$HOME/.dotfiles/home/$1"
}

# Homebrew
alias bi="brew install"
alias brm="brew remove"
alias bs="brew search"
alias bsd="brew search --desc --eval-all"
alias bdump="brew bundle dump --all --describe --force --global"
alias badopt="brew install --cask --adopt"
alias bl="brew list -ltr"
alias bcall="brew caveats $(brew list)"

# Python
alias vact="source ./venv/bin/activate"
alias venv="virtualenv venv && vact"
alias pipreq="pip install -r requirements.txt"
if _exists python3; then
  alias py="python3"
else
  alias py="python"
fi
alias pym="py main.py"

# CLI
alias grab="sudo chown $USER"
alias rmf="rm -f"
alias rmr="rm -r"
alias rmrf="rm -rf"

# Extract helper
alias unrar="7z"
alias unzip="7z x"
alias xr="x -r"

