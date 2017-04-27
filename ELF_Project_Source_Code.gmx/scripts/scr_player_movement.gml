///scr_player_movement
//Location: obj_player step_event

//----------Warning!! Never have objects in floating values!!!!------------------

//Horizontal Movement
if(!wall_jump)move = key_left + key_right;
else move = wall_jump_dir;
hsp = move * move_speed;

//Direction
if(hsp>0)dir = 1;
else if(hsp<0)dir = -1;


//When not grounded, trigger alarm[0] to add gravity
if(!grounded)if(alarm[0]==-1)alarm[0]=2;


//-------------------Jump System----------------------
//Ground Jump and Air Jump Recovery

if(vsp>0)var ledge = instance_place(x,y+vsp,obj_ledge);
else var ledge = instance_place(x,y+1,obj_ledge);

if(place_meeting(x,y+1,obj_wall))||(place_meeting(x,y+1,obj_ledge)&&ledge!=noone&&bbox_bottom<=ledge.bbox_top&&vsp>=0&&!go_through)
{
    grounded = true;
    air_jumps = 1;
    alarm[0] = -1;
    if(key_jump&&!key_down)//Performs the jump
    {
        vsp = -jump_speed;
    }
}
else
{
    grounded = false;
}


//Air Jump
if(!grounded && air_jumps > 0)
{
    if(key_jump)
    {
        air_jumps--;
        vsp = floor(-jump_speed/1.5);
        alarm[0] = -1;
    }
}

if(vsp<0)&&(!key_jump_held) vsp = floor(max(vsp,-jump_speed/4 ));














