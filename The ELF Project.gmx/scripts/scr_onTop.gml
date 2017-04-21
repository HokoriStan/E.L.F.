///scr_onTop();
if place_meeting(bbox_left,bbox_bottom+1,obj_wall) && 
!place_meeting(bbox_left,bbox_bottom,obj_wall) &&
place_meeting(bbox_right,bbox_bottom+1,obj_wall) && 
!place_meeting(bbox_right,bbox_bottom,obj_wall){
    return true;
}else{
    return false;
}
