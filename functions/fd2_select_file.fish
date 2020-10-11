# Defined in /home/d235108/.config/fishdots/home/fishdots-0.1.44/init/rc1.d/03-functions.fish @ line 36
function fd2_select_file --argument root_path pattern -d "nice file selector"
	set -e fd2_selected_item
  set -g fd2_selected_item (find $root_path -iname '*'$pattern'*' | fzf)
end
