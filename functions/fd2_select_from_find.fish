# Defined in /home/d235108/.config/fishdots/home/fishdots-0.1.44/init/rc1.d/03-functions.fish @ line 65
function fd2_select_from_find --argument root_path pattern
  set -e fd2_selected_file
  fd2_select_item (fd2_find $root_path $pattern)
  if test $status -eq 0
    set -g fd2_selected_file "$fd2_selected_item"
  end
end
