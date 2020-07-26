# Defined in /home/d235108/.config/fishdots/home/fishdots-0.1.44/init/rc1.d/03-functions.fish @ line 61
function __fd2_find --argument root_path pattern -d find item by name
	find $root_path/ -type f -iname "*$pattern*" | sort
end
