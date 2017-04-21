///PlayerMoveState()
action = MOVE;

//Dash state
if (canDash) {
    if (dashKey) {
        state = PlayerDashState;
        alarm[0] = room_speed/6;
    }
}

//Get the axis
xaxis = rightKey - leftKey;
yaxis = downKey - upKey;

//Get the direction
dir = point_direction(0, 0, xaxis, yaxis);

//Get the length
if ((xaxis == 0) && (yaxis == 0)) {
    len = 0;
} else {
    len = spd;
    GetFace();
}

//Get the hspd and vspd
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

//Horizontal Collision
if (place_meeting(x+hspd, y, par_collide)) {
    while(!place_meeting(x+sign(hspd), y, par_collide)) {
        x += sign(hspd);
    }
    hspd = 0;
}
//Move horizontally
x += hspd;

//Vertical Collision
if (place_meeting(x, y+vspd, par_collide)) {
    while(!place_meeting(x, y+sign(vspd), par_collide)) {
        y += sign(vspd);
    }
    vspd = 0;
}
//Move vertically
y += vspd;

//Control the sprite
//image_speed = .2;
//if (len == 0) image_index = 0;
