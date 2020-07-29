function warn -d "display msg unless suppressed"
  if test $fd2_log_level -le 2 
    fd2_colour_print yellow "[warn] "
    fd2_echo "$argv"
  end
end
 