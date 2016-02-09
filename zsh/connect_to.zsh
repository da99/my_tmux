
connect_to () {
  local name=$1; shift
  session_file="/apps/tmux_setup/config/$name.tmux"
  if [[ -f "$session_file" ]]; then
    tmux new-session -A -s "$name" \; source-file "$session_file"
  else
    echo "=== Creating: $name"
    tmux new-session -A -s "$name"
  fi
}
