set -gx EDITOR "nvim"
set -gx PAGER "bat"

alias ls eza
alias fb fastboot
complete -c ls -w eza
complete -c fb -w fastboot

if status is-login
  if test -z "$WAYLAND_DISPLAY" -a "$XDG_VTNR" = 1
    exec start-hyprland &>>~/.cache/hyprland.log
  end
end
