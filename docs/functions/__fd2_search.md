# Defined in /home/d235108/.config/fishdots/home/fishdots-0.1.44/init/rc1.d/03-functions.fish @ line 57
function __fd2_search --argument root_path pattern -d find file by full text search
	rg -li $pattern $root_path
end
