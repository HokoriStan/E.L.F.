///scr_shadow(sprite)

sprite = argument[0];

var spr_width = sprite_get_width(sprite)/2;
var spr_height = sprite_get_height(sprite)/2;
var y_point = 0;
var alpha = 0.7;

while(!place_meeting(x,y+y_point,obj_wall))&&(y_point<room_height)
{
    y_point++;
}

//draw_text(x,y-64,y_point);
//draw_text(x,y-74,spr_height);


alpha -= y_point/300;
draw_set_alpha(alpha)
draw_ellipse_colour(x-spr_width-2,(y+spr_height+y_point)-4,x+spr_width,(y+spr_height*1.5+y_point),c_black,c_dkgray,false);
draw_set_alpha(1);
