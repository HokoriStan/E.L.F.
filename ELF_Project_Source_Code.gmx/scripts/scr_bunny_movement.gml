///scr_bunny_movement


//Direction
if(hsp>0)dir = 1;
else if(hsp<0)dir = -1;



//-------------------Jump System----------------------
//Ground Jump and Air Jump Recovery
if(place_meeting(x,y+1,obj_wall))
{
    if(jump)//Performs the jump
    {
        vsp = -jump_speed;
        jump = false;
    }
    hsp = 0;
}
else
{
    hsp = move_speed * dir;
    if(alarm[0]==-1)alarm[0]=4;
}

