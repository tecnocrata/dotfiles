# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/bashrc.pre.bash" ]] && builtin source "$HOME/.fig/shell/bashrc.pre.bash"
export DOTFILES_PATH="/Users/enriqueortuno/.dotfiles"
export DOTLY_PATH="$DOTFILES_PATH/modules/dotly"
export DOTLY_THEME="codely"

source "$DOTFILES_PATH/shell/init.sh"

EXPORTED_PATH=$(
  IFS=":"
  echo "${path[*]}"
)
export PATH="$PATH:$EXPORTED_PATH"

themes_paths=(
  "$DOTFILES_PATH/shell/bash/themes"
  "$DOTLY_PATH/shell/bash/themes"
)

for THEME_PATH in ${themes_paths[@]}; do
  THEME_PATH="${THEME_PATH}/$DOTLY_THEME.sh"
  [ -f "$THEME_PATH" ] && source "$THEME_PATH" && THEME_COMMAND="${PROMPT_COMMAND:-}" && break
done

if [[ "$(ps -p $$ -ocomm=)" =~ (bash$) ]]; then
  __right_prompt() {
    RIGHT_PROMPT=""
    [[ -n $RPS1 ]] && RIGHT_PROMPT=$RPS1 || RIGHT_PROMPT=$RPROMPT
    if [[ -n $RIGHT_PROMPT ]]; then
      n=$(($COLUMNS - ${#RIGHT_PROMPT}))
      printf "%${n}s$RIGHT_PROMPT\\r"
    fi

    if
      [[ -n "${THEME_COMMAND:-}" ]] &&
      declare -F "${THEME_COMMAND:-}" &> /dev/null
    then
      "${THEME_COMMAND:-}"
    fi
  }
  export PROMPT_COMMAND="__right_prompt"
fi

for bash_file in "$DOTLY_PATH"/shell/bash/completions/_*; do
  source "$bash_file"
done

if [ -n "$(ls -A "$DOTFILES_PATH/shell/bash/completions/")" ]; then
  for bash_file in "$DOTFILES_PATH"/shell/bash/completions/_*; do
    source "$bash_file"
  done
fi
export PATH="/Users/enriqueortuno/Library/Python/3.9/bin:$PATH"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/bashrc.post.bash" ]] && builtin source "$HOME/.fig/shell/bashrc.post.bash"

PATH=~/.console-ninja/.bin:$PATH