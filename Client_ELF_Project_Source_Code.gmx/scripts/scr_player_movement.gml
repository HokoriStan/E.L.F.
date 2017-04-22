///scr_player_movement

//----------Warning!! Never have objects in floating values!!!!------------------

//Horizontal Movement
move = key_left + key_right;
hsp = move * move_speed;

//Direction
if(hsp>0)dir = 1;
else if(hsp<0)dir = -1;


//When not grounded, trigger alarm[0] to add gravity
if(!grounded)if(alarm[0]==-1)alarm[0]=2;


//-------------------Jump System----------------------
//Ground Jump and Air Jump Recovery
if(place_meeting(x,y+1,obj_wall))
{
    grounded = true;
    air_jumps = 1;
    alarm[0] = -1;
    if(key_jump)
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
