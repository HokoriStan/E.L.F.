///scr_player_wall_cling
var clinging = false;

if(move>0&&place_meeting(x+1,y,obj_wall))
{
    wall_jump_dir = -1;
    state = 3;
    clinging = true;
}
else if(move<0&&place_meeting(x-1,y,obj_wall))
{
    wall_jump_dir = 1;
    state = 3;
    clinging = true;
}
else
{
    wall_jump_dir = 0;
    state = 0;
}


if(clinging)
{
    sprinting = false;
    air_jumps = 1;
    if(key_jump)
    {
        alarm[3] = 10;
        wall_jump_recover = false;
        wall_jump = true;
        state = 0;
        vsp = -jump_speed;
    }
}
