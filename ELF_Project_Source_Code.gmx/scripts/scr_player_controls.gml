///scr_controls
//Location: obj_player step_event

key_right = keyboard_check(vk_right) || (gamepad_button_check(0,gp_padr)) || (gamepad_axis_value(0,gp_axislh)>0);
key_left = -(keyboard_check(vk_left) || (gamepad_button_check(0,gp_padl)) || (gamepad_axis_value(0,gp_axislh)<0));
key_down = keyboard_check(vk_down) || (gamepad_button_check(0,gp_padd)) || (gamepad_axis_value(0,gp_axislv)>0);
key_jump = keyboard_check_pressed(vk_space) || (gamepad_button_check_pressed(0,gp_face1));
