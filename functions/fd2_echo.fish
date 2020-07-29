# Defined in /home/d235108/.config/fishdots/home/fishdots-0.1.44/init/helpers.fish @ line 9
function fd2_echo --description 'just echo if we are allowed to'
	set -q fd2_suppress_logging || echo $argv
end
