///scr_ground_speed_control
var key_left_pressed = keyboard_check_pressed(vk_left);
var key_right_pressed = keyboard_check_pressed(vk_right);
var limit = 1;
var air_limit = 4;


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

if(velocity==-4||velocity==4)sprinting = true;

