///scr_player_wall_collision
//Location: obj_player step_event




//Horizontal Wall Collision
if(place_meeting(x+hsp,y,obj_wall))
{
    while(!place_meeting(x+sign(hsp),y,obj_wall))
    {
        x += sign(hsp);
    }
    hsp = 0;
    air_speed = 0;
}
x += hsp;

//Vertical Wall Collision
if(place_meeting(x,y+vsp,obj_wall))
{
    while(!place_meeting(x,y+sign(vsp),obj_wall))
    {
        y += sign(vsp);
    }
    vsp = 0;
    if(state==3)state=0;
}
y += vsp;

















