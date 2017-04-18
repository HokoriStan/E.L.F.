//
scr_gravity();

if keyboard_check_pressed(key_up){
    if PlayerAnimation == 'wall_left'{
        vspd = -jumpspeed;
        hspd = 15; 
        PlayerAnimation = 'jump';
        AirJump = 1;
        state = scr_state_normal;
    }else
    if PlayerAnimation == 'wall_right'{
        vspd = -jumpspeed;
        hspd = -15; 
        PlayerAnimation = 'jump';
        AirJump = 1;
        state = scr_state_normal;
    }
}

scr_collision_movement();

if PlayerAnimation == 'wall_left' || PlayerAnimation == 'wall_right'{
    if scr_place_meeting_wall(x,y+1,obj_wall){
        state = scr_state_normal;
    }
}
if PlayerAnimation == 'off_left' || PlayerAnimation == 'off_right'{
    state = scr_state_normal;
}

if !scr_place_meeting_wall(x-1,y,obj_wall) && !scr_place_meeting_wall(x+1,y,obj_wall){
    state = scr_state_normal;
}
