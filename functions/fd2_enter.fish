# Defined in /home/d235108/.config/fishdots/home/fishdots-0.1.44/init/rc0.d/02-functions.fish @ line 45
function fd2_enter --argument abs_path
  emit fd2_entering_folder $abs_path
# consider invoking any autorun functions in folder.
  pushd $abs_path
  emit fd2_entered_folder $abs_path
end
