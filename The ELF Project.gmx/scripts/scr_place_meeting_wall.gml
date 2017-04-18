/// scr_place_meeting_wall(x, y, object)
/*
0 = didn't collide;
1 = collided, but isnt solid;
2 = collided and is solid;
*/
if place_meeting(argument0, argument1, argument2){
    var inst = instance_place(argument0, argument1, argument2);
    if inst.isSolid{
        return 2;
    }else{
        return 1;
    }
}else{
    return 0;
}
