# Defined in /home/d235108/.config/fishdots/home/fishdots-0.1.44/init/rc1.d/03-functions.fish @ line 36
function fd2_select_file -d "nice file selector"
    set root_path ''
    set pattern ''

    argparse 'r/=+' 'p/=+' -- $argv

    if test -z $_flag_r
        error "fd2_search: root_path must be set (use the -l option)" >&2
        return 1
    else
        set root_path $_flag_r
    end

    if test -z $_flag_p
        error "fd2_search: pattern must be set (use the -f option)" >&2
        return 1
    else
        set pattern $_flag_p
    end

    set -e fd2_selected_item
    set -g fd2_selected_item (find $root_path -iname '*'$pattern'*' | fzf)
end
