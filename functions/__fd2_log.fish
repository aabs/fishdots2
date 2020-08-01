function __fd2_log -d "display a log entry"
  set -l level
  set -l colour
  set -l prefix
  set -l message
  set -l usage "
Function __fd2_log Usage
========================
A general purpose log function.

The following options are available, all of which are mandatory.

    -l <num> | --level=<num>
    -c <colour name> | --colour <colour name>
    -p <string> | --prefix <string>
    -m <string> | --message <string>

"

  getopts $argv | while read -l key value
      switch $key
          case l level
              set level $value
          case c colour color
              set colour $value
          case p prefix
              set prefix $value
          case m message
              set message $value
      end
  end

    if test -z $level
        echo $usage >&2
        return 1
    end
    if test -z $colour
        echo $usage >&2
        return 1
    end
    if test -z $prefix
        echo $usage >&2
        return 1
    end
    if test -z $message
        echo $usage >&2
        return 1
    end
  
   if test $fd2_log_level -le $level 
    fd2_colour_print $colour "[$prefix] " >&2
    fd2_echo $message >&2
   end
end



# vim: set et foldlevelstart=-1 foldmethod=manual sw=4 ts=4 tw=0 : 
