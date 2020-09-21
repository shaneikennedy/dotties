# Zsh
export ZSH="/Users/shanekennedy/dotties/oh-my-zsh"
ZSH_THEME="refined"
DEFAULT_USER="shanekennedy"
source "$ZSH/oh-my-zsh.sh"
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
plugins=(
    git
    zsh-syntax-highlighting
    zsh-autosuggestions
    python
    fzf
    yarn
    pyenv
    github
    emacs
)

# Airflow
alias af="airflow"

# Nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Z cli
source /usr/local/etc/profile.d/z.sh

# Pyenv
PYENV_ROOT="$HOME/.pyenv"
PATH="${PYENV_ROOT}/shims:${PYENV_ROOT}/bin:${PATH}"
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

# Golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Haskell
export STACKPATH=$HOME/.local
export PATH=$PATH:$STACKPATH/bin

# Misc
export LESS="-SRXF"
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
alias ls="lsd"

# Convenience functions
openemacs() {
    # this function receives a folder name that's inside of ~/emacs folder
    # it's useful when we want to open multi emacs instances with different settings files

    EMACS_USER_FOLDER="$HOME/$1/"
    EMACS_USER_INIT_FILE="$HOME/$1/init.el"
    EVAL_EMACS="'(setq user-emacs-directory \"$EMACS_USER_FOLDER\")'"
    eval "open -a Emacs -n --args -q --eval=$EVAL_EMACS  -l $EMACS_USER_INIT_FILE"
}

cbranch() {
    git rev-parse --abbrev-ref HEAD
}
