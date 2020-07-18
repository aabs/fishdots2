function trace -d "display msg unless suppressed"
   if test $fd2_log_level -le -1 
     __fd2_trace "$argv" 
   end
end
