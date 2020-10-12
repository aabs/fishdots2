# Defined in /home/d235108/.config/fishdots/home/fishdots-0.1.44/init/rc1.d/03-functions.fish @ line 65
function fd2_select_from_find
    set root_path ''
    set pattern ''

    argparse 'r/=+' 'p/=+' -- $argv

    if test -z $_flag_r
        error "fd2_find: root_path must be set (use the -r option)" >&2
        return 1
    else
        set root_path $_flag_r
    end

    if test -z $_flag_p
        error "fd2_find: pattern must be set (use the -p option)" >&2
        return 1
    else
        set pattern $_flag_p
    end

    set -e fd2_selected_file
    fd2_select_item (fd2_find -r "$root_path" -p "$pattern")
    if test $status -eq 0
        set -g fd2_selected_file "$fd2_selected_item"
    end
end
