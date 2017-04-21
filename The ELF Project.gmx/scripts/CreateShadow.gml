var shadowy = sprite_height/2
var shadowx = sprite_width/15



if place_meeting(x,y+1,obj_wall)
    {
    draw_sprite_ext(spr_shadow,0,x,y+(shadowy),shadowx-0.1,1,0,c_white,0.35)
    }
else
    {
    draw_sprite_ext(spr_shadow,0,x,y+(shadowy),shadowx,1,0,c_white,0)
    }


draw_self();
