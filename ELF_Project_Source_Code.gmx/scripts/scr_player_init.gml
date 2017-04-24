///scr_player_init(walk_speed,run_speed,jump_speed,air_jumps,grav)

//Arguments
walk_speed = argument[0];
run_speed = argument[1];
var arg_jump_speed = argument[2];
var arg_air_jumps = argument[3];
var arg_grav = argument[4];


//Movement Speeds
move_speed = walk_speed;
jump_speed = arg_jump_speed;
air_jumps = arg_air_jumps;
grav = arg_grav;
hsp = 0;
vsp = 0;

//sprint prep
double_tap = 0;

//Booleans
grounded = false;
sprinting = false;
joystick_limit = false;

//Direction
dir = 1;

//set the controller deadzone
gamepad_set_axis_deadzone(0,0.7);
