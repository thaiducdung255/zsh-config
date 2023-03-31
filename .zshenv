#!/bin/sh

# sys envs
export LANG=en_US.UTF-8
export LC_ALL="en_US.UTF-8"
export ARCHFLAGS="-arch x86_64"
export EDITOR=nvim
export VISUAL=nvim
export BROWSER=/usr/bin/brave

# ibus envs
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

# go envs
export GOPATH=$HOME/go

# bat envs
export BAT_THEME="Dracula"

# fzf envs
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

# zsh envs
export ZSH=$HOME/.oh-my-zsh
export UPDATE_ZSH_DAYS=3

# cargo envs
case ":${PATH}:" in
   *:"$HOME/.cargo/bin":*)
      ;;
   *)
      export PATH="$HOME/.cargo/bin:$PATH"
      ;;
esac

# pip envs
case ":${PATH}:" in
   *:"$HOME/.local/bin":*)
      ;;
   *)
      export PATH="$HOME/.local/bin:$PATH"
      ;;
esac

# bun envs
case ":${PATH}:" in
   *:"$HOME/.bun":*)
      ;;
   *)
      export BUN_INSTALL="$HOME/.bun"
      export PATH="$BUN_INSTALL/bin:$PATH"
      ;;
esac

# pnpm envs
case ":${PATH}:" in
   *:"$HOME/.local/share/pnpm":*)
      ;;
   *)
      export PNPM_HOME="$HOME/.local/share/pnpm"
      export PATH="$PNPM_HOME:$PATH"
      ;;
esac

# homebrew envs
export PATH=/opt/homebrew/bin:$PATH
export PATH=/usr/local/bin:$PATH

# fig envs
export PATH=$HOME/.fig/bin:$PATH

# fnm envs
case ":${PATH}:" in
   *:"$HOME/.fnm":*)
      ;;
   *)
      export PATH=~/.fnm:$PATH
      export PATH=~/.fnm/node-versions/v18.6.0/installation/bin:$PATH
      ;;
esac

# yarn envs
case ":${PATH}:" in
   *:"$HOME/.yarn/bin":*)
      ;;
   *)
      export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
      ;;
esac
