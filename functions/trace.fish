function trace -d "display msg unless suppressed"
   if test $fd2_log_level -le -1 
    fd2_colour_print grey "[trace] "
    fd2_echo "$argv"
   end
end
 