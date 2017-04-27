///scr_bunny_ledge_collision

if(vsp>0)var ledge = instance_place(x,y+vsp,obj_ledge);
else var ledge = instance_place(x,y+1,obj_ledge);
//Vertical Ledge Collision
 
if(place_meeting(x,y+vsp,obj_ledge)&&ledge!=noone&&bbox_bottom<=ledge.bbox_top&&vsp>=0)
{
    while(!place_meeting(x,y+sign(vsp),obj_ledge))
    {
        y += sign(vsp);
    }
    vsp = 0;
}
