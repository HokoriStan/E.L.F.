///scr_player_movement

move = key_left + key_right;
hsp = move * move_speed;

if(!grounded)if(alarm[0]==-1)alarm[0]=3;

//Horizontal Wall Collision
if(place_meeting(x+hsp,y,obj_wall))
{
    while(!place_meeting(x+sign(hsp),y,obj_wall))
    {
        x += sign(hsp);
    }
    hsp = 0;
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
}
y += vsp;
