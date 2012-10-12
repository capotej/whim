if [[ ! -o interactive ]]; then
    return
fi

compctl -K _whim whim

_whim() {
  local word words completions
  read -cA words
  word="${words[2]}"

  if [ "${#words}" -eq 2 ]; then
    completions="$(whim commands)"
  else
    completions="$(whim completions "${word}")"
  fi

  reply=("${(ps:\n:)completions}")
}
