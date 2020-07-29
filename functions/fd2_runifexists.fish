# Defined in /home/d235108/.config/fishdots/home/fishdots-0.1.44/init/helpers.fish @ line 40
function fd2_runifexists --argument path_of_file
	if test -f $path_of_file
        trace "running $path_of_file"
        command cat $path_of_file | source
    else
        debug "$path_of_file not found."
    end
end
