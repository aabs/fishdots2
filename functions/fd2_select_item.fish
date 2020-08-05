# Defined in /home/d235108/.config/fishdots/home/fishdots-0.1.44/init/rc1.d/03-functions.fish @ line 41
function fd2_select_item --description 'fuzzy selector'
  set -e fd2_selected_item
  set -g fd2_selected_item (printf "%s\n" $argv | fzf)
  return $status
end
