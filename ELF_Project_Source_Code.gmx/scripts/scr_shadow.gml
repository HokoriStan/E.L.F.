///scr_shadow()

var spr_width = sprite_width/2;
var spr_height = sprite_height/4;
//var spr_height = sprite_height;
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
//draw_ellipse_colour(x-spr_width,(y+y_point)+spr_height,x+spr_width,(y+y_point)+spr_height/distance,c_black,c_dkgray,false);
draw_ellipse_colour(x-spr_width-2,(y+spr_height*2+y_point)-spr_height,x+spr_width,(y+spr_height*2+y_point)+spr_height,c_black,c_dkgray,false);
draw_set_alpha(1);
