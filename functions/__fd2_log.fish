function __fd2_log -d "display a log entry"
    set level ''
    set colour ''
    set prefix ''
    set message ''

    argparse 'l/=+' 'c/=+' 'p/=+' 'm/=+' -- $argv

    if test -z $_flag_l
        error "__fd2_log: level must be set (use the -l option)" >&2
        return 1
    else
        set level $_flag_l
    end

    if test -z $_flag_c
        error "__fd2_log: colour must be set (use the -f option)" >&2
        return 1
    else
        set colour $_flag_c
    end

    if test -z $_flag_p
        error "__fd2_log: prefix must be set (use the -p option)" >&2
        return 1
    else
        set prefix $_flag_p
    end

    if test -z $_flag_m
        error "__fd2_log: message must be set (use the -d option)" >&2
        return 1
    else
        set message $_flag_m
    end

    if test $fd2_log_level -le $level
        fd2_colour_print $colour "[$prefix] " >&2
        fd2_echo $message >&2
    end
end



# vim: set et foldlevelstart=-1 foldmethod=manual sw=4 ts=4 tw=0 : 
