function _step_ssh_hosts() {
  local -a step_hosts
  step_hosts=(${(f)"$(step ssh hosts 2>/dev/null | tail -n +2 | awk '{print $1}')"})
  
  echo ${(j: :)step_hosts}
}

zstyle -e ':completion:*:*:ssh:*:hosts' hosts 'reply=(
  $(_step_ssh_hosts)
)'