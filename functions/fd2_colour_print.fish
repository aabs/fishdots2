# Defined in /home/d235108/.config/fishdots/home/fishdots-0.1.44/init/helpers.fish @ line 3
function fd2_colour_print --argument colour message
	set_color $colour
	set -q fd2_suppress_logging || printf "%s" $message
  set_color normal
end
