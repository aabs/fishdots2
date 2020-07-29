# Defined in /home/d235108/.config/fishdots/home/fishdots-0.1.44/init/rc0.d/02-functions.fish @ line 51
function fd2_leave
	emit fd2_leaving_folder (pwd)
  popd
  emit fd2_left_folder (pwd)
end
