var maxcheck = abs((sprite_get_width(sprite_index)*image_xscale)/2);
if scr_place_meeting_wall(x, y+1, obj_wall) == 2{
//Find p1
for (i=0;i<=maxcheck;i+=1){
    if position_meeting(bbox_left,bbox_bottom+i,obj_wall){
        p1=i;
        break;
    }  
}

//Find p2
for (i=0;i<=maxcheck;i+=1){
    if position_meeting(bbox_right,bbox_bottom+i,obj_wall){
        p2=i;
        break;
    }
}
//Now, rotate the sprite!
angle=round(point_direction(bbox_left,bbox_bottom+p1,bbox_right,bbox_bottom+p2));
//image_angle = angle;
}else if !place_meeting(x + 5,y + 5 ,obj_wall){
    angle = 0;
}
