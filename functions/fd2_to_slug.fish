function fd2_to_slug -d "create a filename without spaces or other nasties within the folder supplied"
  echo "$argv" | sed 's/[^[:alnum:].]/-/g'  | sed 's/-\+/-/g' | sed 's/-\./\./g'
end

