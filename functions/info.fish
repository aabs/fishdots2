function info -d "display msg unless suppressed"
  if test $fd2_log_level -le 1 
    fd2_colour_print white "[info] "
    fd2_echo "$argv"
  end
end
 