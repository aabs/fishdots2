function fd2_log_level -a level -d "display msg unless suppressed"

# levels: 0: debug, 1: info, 2: warn, 3: error

   set -U fd2_log_level $level
end
