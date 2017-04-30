///scr_player_wall_cling
//var clinging = false;
var cling_from_right = false;
var cling_from_left = false;

if(key_right==1&&place_meeting(x+1,y,obj_wall))
{
    state = 3;
    cling_from_right = true;
}
else if(key_left==-1&&place_meeting(x-1,y,obj_wall))
{
    state = 3;
    cling_from_left = true;
}
else
{
    wall_jump_dir = 0;
    state = 0;
}


if(cling_from_right||cling_from_left)
{
    sprinting = false;
    if(key_jump)
    {
        alarm[3] = 10;
        wall_jump = true;
        state = 0;
        vsp = -jump_speed;
        if(cling_from_left)air_speed = 4;
        if(cling_from_right)air_speed = -4;
    }
}
