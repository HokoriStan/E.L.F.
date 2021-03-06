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
move = 0;
hsp = 0;
vsp = 0;
velocity = 0;
air_speed_counter = 0;//this will add air speed when it hits a certain number

//state
state = 0;//zero meaning free


//indexes
crouch_index = 0;


//sprint prep
double_tap = 0;

//Booleans
grounded = false;
go_through = false;//for ledges
sprinting = false;
joystick_limit = false;
wall_jump = false;
keep_ground_speed = false;

//Direction
dir = 1;
wall_jump_dir = 0;

//set the controller deadzone
gamepad_set_axis_deadzone(0,0.5);
