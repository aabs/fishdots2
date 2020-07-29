function error -d "display msg unless suppressed"
  if test $fd2_log_level -le 3 
    fd2_colour_print red "[error] "
    fd2_echo "$argv"
  end
end
 