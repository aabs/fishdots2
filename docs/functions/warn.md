function warn -d "display msg unless suppressed"
  if test $fd2_log_level -le 2 
    __fd2_warn "$argv" 
  end
end
