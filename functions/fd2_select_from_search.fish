# Defined in /home/d235108/.config/fishdots/home/fishdots-0.1.44/init/rc1.d/03-functions.fish @ line 71
function fd2_select_from_search --argument root_path pattern
	set -l opts (fd2_search $root_path $pattern)
  fd2_select_item $opts
end
