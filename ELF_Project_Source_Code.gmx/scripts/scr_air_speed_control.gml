///scr_air_speed_control
var key_right_pressed = keyboard_check_pressed(vk_right) || (gamepad_button_check_pressed(0,gp_padr)) || (gamepad_axis_value(0,gp_axislh)>0)&&(!joystick_limit);
var key_left_pressed = keyboard_check_pressed(vk_left) || (gamepad_button_check_pressed(0,gp_padl)) || (gamepad_axis_value(0,gp_axislh)<0)&&(!joystick_limit);
var limit = 3;
var air_limit = 2;

//if(key_right_pressed||key_left_pressed


if(key_left_pressed)air_speed_counter = 0;
else if(key_right_pressed)air_speed_counter = 0;

if(key_left==-1)
{
    if(velocity>-air_limit)
    {
        air_speed_counter--;
        limit = 2;
    }
}
else if(key_right==1)
{
    if(velocity<air_limit)
    {
        air_speed_counter++;
        limit = 2;
    }
}
else
{
    limit = 6;
    if(velocity>0)air_speed_counter--;
    else if(velocity<0)air_speed_counter++;
}


if(air_speed_counter==-limit)
{
    if(velocity>-air_limit)
    {
        velocity--;
        air_speed_counter=0;
    }
}
if(air_speed_counter==limit)
{
    if(velocity<air_limit)
    {
        velocity++;
        air_speed_counter=0;
    }
}


//if(air_speed_counter<-limit||air_speed_counter>limit)air_speed_counter=0;
if(velocity==-4||velocity==4)sprinting = true;
