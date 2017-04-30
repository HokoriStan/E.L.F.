///scr_player_crouching
//var key_d
if(grounded)
{
    if(key_down)
    {
        state = 1;
        if(key_jump&&place_meeting(x,y+1,obj_ledge))
        {//This will allow the player to go through ledge
            alarm[2]=5;
            go_through = true;
            grounded = false;
            velocity = 0;
            air_speed_counter = 0;
        }
    }
    else if(!key_down && state==1) state = 2;
}
