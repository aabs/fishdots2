# Defined in /home/d235108/.config/fishdots/home/fishdots-0.1.44/init/rc1.d/03-functions.fish @ line 57
function fd2_search --argument root_path pattern -d "find file by full text search"
    set root_path ''
    set pattern ''

    argparse 'r/=+' 'p/=+' -- $argv

    if test -z $_flag_r
        error "fd2_search: root_path must be set (use the -r option)" >&2
        return 1
    else
        set root_path $_flag_r
    end

    if test -z $_flag_p
        error "fd2_search: pattern must be set (use the -p option)" >&2
        return 1
    else
        set pattern $_flag_p
    end

	rg -li $pattern $root_path
end
