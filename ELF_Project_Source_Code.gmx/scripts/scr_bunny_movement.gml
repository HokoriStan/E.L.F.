///scr_bunny_movement


//Direction
if(hsp>0)dir = 1;
else if(hsp<0)dir = -1;



//-------------------Jump System----------------------
//Ground Jump and Air Jump Recovery
if(vsp>0)var ledge = instance_place(x,y+vsp,obj_ledge);
else var ledge = instance_place(x,y+1,obj_ledge);

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

