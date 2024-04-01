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

# Misc
export LESS="-SRXF"
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
alias ls="lsd"
