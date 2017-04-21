/// scr_nearest_collision(x, y, obj, precise, outside);
/***
    x       -   Nearest to x position
    y       -   Nearest to y position
    obj     -   Collision object
    precise -   Precise collision
    outside -   Check Collision 1px outside collision object
***/

var _x,_y,_obj,_precise,_outside,dsid,_myid,_nearest,_distance; 
_x = argument0;
_y = argument1;
_obj = argument2;
_precise = argument3;
_outside = argument4;
dsid = ds_list_create();
_myid = id;
_nearest = noone;
_distance = 9999;

if _outside{
    with(_obj){
        var inst = collision_rectangle(bbox_left-1,bbox_top-1,bbox_right+1,bbox_bottom+1,_myid,_precise,true);
        if inst != noone{
            ds_list_add(dsid, id);
        }
    }
}else{
    with(_obj){
        var inst = collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,_myid,_precise,true);
        if inst != noone{
            ds_list_add(dsid, id);
        }
    }    
}

if !ds_list_empty(dsid){
    for(var i = 0; i < ds_list_size(dsid); i++){
        var _inst = ds_list_find_value(dsid, i);
        with(_inst){
            if distance_to_point(_x,_y) < _distance{
                _nearest = _inst;
                _distance = distance_to_point(_x,_y);
            }
        }
    }
    ds_list_destroy(dsid);
    return _nearest;
}else{
    ds_list_destroy(dsid);
    return noone;
}
