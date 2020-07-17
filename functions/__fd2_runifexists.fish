# Defined in /home/d235108/.config/fishdots/home/fishdots-0.1.44/init/helpers.fish @ line 40
function __fd2_runifexists --argument path_of_file
	if test -f $path_of_file
        __fd2_ok "running $path_of_file"
        command cat $path_of_file | source
    else
        __fd2_warn "$path_of_file not found."
    end
end
