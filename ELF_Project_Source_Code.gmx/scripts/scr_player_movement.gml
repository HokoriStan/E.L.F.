///scr_player_movement
//Location: obj_player step_event

//----------Warning!! Never have Players & Enemies in floating values!!!!------------------

//Horizontal Movement
if(!wall_jump)
{
    if(grounded)move = key_left + key_right;
    else scr_air_speed_control();
}
//else move = wall_jump_dir;


if(grounded)hsp = move * move_speed;
else hsp = 1 * air_speed;

//Direction
if(hsp>0)dir = 1;
else if(hsp<0)dir = -1;


//When not grounded, trigger alarm[0] to add gravity
if(!grounded)if(alarm[0]==-1)alarm[0]=2;


//-------------------Ground & Jump System----------------------
//Ground Jump and Air Jump Recovery
scr_ground_meeting();
scr_air_movement();





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















