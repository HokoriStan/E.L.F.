///PlayerDashState()
var canDash = true;
if (len == 0) dir = face*90;
len = spd*4;
action = MOVE;

//Get the hspd and vspd
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

//Move
if ((!place_meeting(x+hspd, y, par_collide)) && (!place_meeting(x, y+vspd, par_collide))) {
    x += hspd;
    y += vspd;
} else {
    state = PlayerMoveState;
}

if ((x != xprevious) || (y != yprevious)) {
    var dashCreated = instance_create(x, y, obj_dash);
    dashCreated.sprite_index = sprite_index;
}
