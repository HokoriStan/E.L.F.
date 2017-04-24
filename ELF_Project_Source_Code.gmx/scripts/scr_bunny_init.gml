///scr_bunny_init(move_speed,jump_speed,grav)


//Arguments
arg_move_speed = argument[0];
arg_jump_speed = argument[1];
arg_grav = argument[2];


//Movement Speeds
move_speed = arg_move_speed;
jump_speed = arg_jump_speed;
grav = arg_grav;
hsp = 0;
vsp = 0;

//booleans
jump = false;

//Direction
dir = 1;

//Spawn On Floor
while(!place_meeting(x,y+1,obj_wall))
{
    y++;
}

