if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export GOPATH=$HOME/go
export BAT_THEME="Dracula"

ZSH_THEME="powerlevel10k/powerlevel10k"
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# enable ibus daemon
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

# enable fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS="--preview-window 'right:60%' \
  --layout reverse \
  --margin=1,4 \
  --preview 'bat --color=always --style=header,grid --line-range :300 {}'"

export FZF_DEFAULT_COMMAND='ag -g "" \
  --hidden --ignore-case \
  --skip-vcs-ignores \
  --ignore ".git/*" \
  --ignore "build/*" \
  --ignore ".vim/*" \
  --ignore "package-lock.json" \
  --ignore ".idea/*" \
  --ignore "skypeforlinux/*" \
  --ignore "MongoDB Compass/*" \
  --ignore "libreoffice/*" \
  --ignore "Postman/*" \
  --ignore ".npm/*" \
  --ignore "virtualenvs/*" \
  --ignore "BraveSoftware" \
  --ignore ".gem" \
  --ignore ".mypy_cache/*" \
  --ignore "node_modules/*" \
  --ignore ".oh-my-zsh/plugins" \
  --ignore ".memestra/*" \
  --ignore "node_modules/*"'
export FZF_CONTROL_T_COMMAND='fd . $HOME'
export FZF_ALT_C_COMMAND='fdfind -t d . $HOME'

# set default editor to vim
export EDITOR=nvim
export VISUAL=nvim

# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting pipenv)

source $ZSH/oh-my-zsh.sh
[ -s /etc/zsh/zprofile ] && source "/etc/zsh/zprofile"

# User configuration
source $HOME/.config/zsh/.zsh_aliases

# bindkey
source $HOME/.config/zsh/.zsh_custom_keys

# fnm
export PATH=~/.fnm:$PATH
eval "`fnm --version-file-strategy=recursive --log-level=quiet env --use-on-cd`"

export PNPM_HOME="~/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"

zstyle ':completion:*' matcher-list '' \
  'm:{a-z\-}={A-Z\_}' \
  'r:[^[:alpha:]]||[[:alpha:]]=** r:|=* m:{a-z\-}={A-Z\_}' \
  'r:|?=** m:{a-z\-}={A-Z\_}'

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

export LC_ALL="en_US.UTF-8"

# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# pip binary directory
export PATH="$HOME/.local/bin:$PATH"
