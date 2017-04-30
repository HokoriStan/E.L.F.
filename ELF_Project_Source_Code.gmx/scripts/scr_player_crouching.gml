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
        }
    }
    else if(!key_down && state==1) state = 2;
}
