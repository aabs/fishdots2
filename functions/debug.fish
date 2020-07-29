function debug -d "display msg unless suppressed"
   if test $fd2_log_level -le 0 
    fd2_colour_print grey "[debug] "
    fd2_echo "$argv"
   end
end
 