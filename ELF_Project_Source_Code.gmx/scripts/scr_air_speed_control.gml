///scr_air_speed_control
var key_left_pressed = keyboard_check_pressed(vk_left);
var key_right_pressed = keyboard_check_pressed(vk_right);
var limit = 3;
var air_limit = 2;


if(key_left_pressed)air_speed_counter = 0;
else if(key_right_pressed)air_speed_counter = 0;

if(key_left==-1)
{
    if(air_speed>-air_limit)
    {
        air_speed_counter--;
        limit = 2;
    }
}
else if(key_right==1)
{
    if(air_speed<air_limit)
    {
        air_speed_counter++;
        limit = 2;
    }
}
else
{
    limit = 6;
    if(air_speed>0)air_speed_counter--;
    else if(air_speed<0)air_speed_counter++;
}


if(air_speed_counter==-limit)
{
    if(air_speed>-air_limit)
    {
        air_speed--;
        air_speed_counter=0;
    }
}
if(air_speed_counter==limit)
{
    if(air_speed<air_limit)
    {
        air_speed++;
        air_speed_counter=0;
    }
}

if(air_speed==-4||air_speed==4)sprinting = true;
