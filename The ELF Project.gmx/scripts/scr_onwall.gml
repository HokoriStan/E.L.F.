if !scr_onTopOf_Wall(){
    if scr_place_meeting_wall(x-1,y,obj_wall){
    if scr_place_meeting_wall(x-1,y-sprite_get_height(sprite_index),obj_wall)==2{
    if scr_place_meeting_wall(x-1,y+sprite_get_height(sprite_index),obj_wall)==2{ 
    //if !scr_place_meeting_wall(x-1,y,o_ledge){
    if PlayerAnimation != 'wall_left'{
    if keyboard_check(key_left){
        //left Wall
        //Onwall = 'left';
        PlayerAnimation = 'wall_left';
        PlayerLook = 1;
        if state != scr_state_walljump{
            state = scr_state_walljump;
        }
    }}}}}//}
    if scr_place_meeting_wall(x+1,y,obj_wall)==2{
    if scr_place_meeting_wall(x+1,y-sprite_get_height(sprite_index),obj_wall)==2{
    if scr_place_meeting_wall(x+1,y+sprite_get_height(sprite_index),obj_wall)==2{ 
    //if !scr_place_meeting_wall(x-1,y,o_ledge){
    if PlayerAnimation != 'wall_right'{
    if keyboard_check(key_right){
        //left Wall
        //Onwall = 'left';
        PlayerAnimation = 'wall_right';
        PlayerLook = -1;
        if state != scr_state_walljump{
            state = scr_state_walljump;
        }
    }}}}}//}
}else{
    if state != scr_state_walljump{
        state = scr_state_normal;
    }
}
