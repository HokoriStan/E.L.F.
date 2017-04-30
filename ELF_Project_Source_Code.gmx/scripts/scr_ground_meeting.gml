///scr_ground_meeting
if(vsp>0)var ledge = instance_place(x,y+vsp,obj_ledge);
else var ledge = instance_place(x,y+1,obj_ledge);

//this is to check if player is touching a wall or one way platform
if(place_meeting(x,y+1,obj_wall))||(place_meeting(x,y+1,obj_ledge)&&ledge!=noone&&bbox_bottom<=ledge.bbox_top&&vsp>=0&&!go_through)
{
    grounded = true;
}
else
{
    grounded = false;
}




if(grounded)
{
    wall_jump_recover = true;
    keep_ground_speed = true;
    air_jumps = 1;
    //air_speed = 0;
    //air_speed_counter = 0;
    alarm[0] = -1;
    if(key_jump&&!key_down)//Performs the jump
    {
        vsp = -jump_speed;
        air_speed = hsp;
        air_speed_counter = 0;
    }
}
else if(!grounded&&keep_ground_speed)
{
    keep_ground_speed = false;
    air_speed = hsp;
    air_speed_counter = 0;
}

