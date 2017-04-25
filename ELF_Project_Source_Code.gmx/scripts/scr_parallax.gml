///scr_parallax
draw_set_color(c_white);
var width = room_width div sprite_get_width(spr_forest_depth1);
width = width*2;

parallax_x = view_xview[0];
parallax_y = view_yview[0];

var color = make_colour_rgb(111,182,164);
var color2 = make_colour_rgb(40,67,55);

draw_rectangle_colour(view_xview[0],view_yview[0],view_xview[0]+display_w,view_yview[0]+display_h,color,color,color2,color2,false);

for(var i=0;i<width;i++)
{
    draw_sprite(spr_forest_depth5,0,-320+(i*320)+(parallax_x/1.1),24);
    draw_sprite(spr_forest_depth4,0,-320+(i*320)+(parallax_x/1.5),24);
    draw_sprite(spr_forest_depth3,0,-320+(i*320)+(parallax_x/2),24);
    draw_sprite(spr_forest_depth2,0,-320+(i*320)+(parallax_x/3),150);
    draw_sprite(spr_forest_depth1,0,-320+(i*320)+(parallax_x/4),0);
}

draw_text(view_xview[0]+160,view_yview[0]+32,width);
