extends ColorRect

# Button 1 = Dpad Up
# Button 2 = Dpad Left
# Button 3 = Dpad Right
# Button 4 = Dpad Down
# Button 5 = A
# Button 6 = B
# Button 7 = X
# Button 8 = Y
# Button 9 = Back
# Button 10 = Start
# Button 11 = LBumper
# Button 12 = RBumber
# Button 13 = LStick Press
# Button 14 = RStick Press

func _process(_delta):
	var accel = Input.get_accelerometer()
	$VJoy.axis_x = (((accel.x * 32767) / Global.sensitivity) + 16383)
	$Wheel.rotation = accel.x / 8

func _on_a_button_down():
	$VJoy.button_5 = true

func _on_a_button_up():
	$VJoy.button_5 = false

func _on_b_button_down():
	$VJoy.button_6 = true

func _on_b_button_up():
	$VJoy.button_6 = false

func _on_x_button_down():
	$VJoy.button_7 = true

func _on_x_button_up():
	$VJoy.button_7 = false

func _on_y_button_down():
	$VJoy.button_8 = true

func _on_y_button_up():
	$VJoy.button_8 = false

func _on_up_button_down():
	$VJoy.button_1 = true

func _on_up_button_up():
	$VJoy.button_1 = false

func _on_down_button_down():
	$VJoy.button_4 = true

func _on_down_button_up():
	$VJoy.button_4 = false

func _on_left_button_down():
	$VJoy.button_2 = true

func _on_left_button_up():
	$VJoy.button_2 = false

func _on_right_button_down():
	$VJoy.button_3 = true

func _on_right_button_up():
	$VJoy.button_3 = false

func _on_start_button_down():
	$VJoy.button_10 = true

func _on_start_button_up():
	$VJoy.button_10 = false

func _on_select_button_down():
	$VJoy.button_9 = true

func _on_select_button_up():
	$VJoy.button_9 = false

func _on_l_bumper_button_down():
	$VJoy.button_11 = true

func _on_l_bumper_button_up():
	$VJoy.button_11 = false

func _on_r_bumper_button_down():
	$VJoy.button_12 = true

func _on_r_bumper_button_up():
	$VJoy.button_12 = false

func _on_accelerator_drag_ended(_value_changed):
	$Accelerator.value = 16383

func _on_r_stick_button_button_down():
	$VJoy.button_14 = true

func _on_r_stick_button_button_up():
	$VJoy.button_14 = false

func _on_l_stick_button_button_down():
	$VJoy.button_13 = true

func _on_l_stick_button_button_up():
	$VJoy.button_13 = false

func _on_accelerator_value_changed(value):
	$VJoy.axis_y = value

func _on_brake_drag_ended(value_changed):
	$Brake.value = -16383

func _on_brake_value_changed(value):
	$VJoy.axis_y = value * -1
