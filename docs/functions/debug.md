function debug -d "display msg unless suppressed"
   if test $fd2_log_level -le 0 
     __fd2_debug "$argv" 
   end
end
