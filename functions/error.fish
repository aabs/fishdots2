function error -d "display msg unless suppressed"
  if test $fd2_log_level -le 3 
    __fd2_error "$argv" 
  end
end
