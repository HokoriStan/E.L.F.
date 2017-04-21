//
var inst = scr_nearest_collision(x,y+1,obj_wall, false, true);
var inst2 = scr_nearest_collision(x,y+sprite_get_yoffset(sprite_index)+1,obj_wall, false, true);

if scr_place_meeting_wall(x, y + 1, obj_wall) == 2 || (scr_place_meeting_wall(x, y + 1, obj_wall) == 1 && !scr_place_meeting_wall(x, y, obj_wall)) || (inst != noone && (scr_place_meeting_wall(x,y+1,inst2) && inst != inst2) && !scr_place_meeting_wall(x,y,inst2)){
    if vspd >= 0{
        return true;
    }else{
        return false;
    }
}else{
    return false;
}
