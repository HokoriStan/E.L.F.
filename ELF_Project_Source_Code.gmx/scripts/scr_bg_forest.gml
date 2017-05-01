///scr_bg_forest
draw_set_color(c_white);
var width = room_width div sprite_get_width(spr_forest_depth1);
width = width*2;

parallax_x = view_xview[0];
parallax_y = view_yview[0];

var color = make_colour_rgb(111,182,164);
var color2 = make_colour_rgb(40,67,55);
var color3 = make_colour_rgb(37,53,41);

draw_rectangle_colour(view_xview[0],view_yview[0],view_xview[0]+display_w,view_yview[0]+display_h,color,color,color2,color2,false);


for(var i=0;i<width;i++)
{
    draw_sprite(spr_forest_depth5,0,-320+(i*320)+(parallax_x/1.1),(room_height-275)+(parallax_y/1.1));
    draw_sprite(spr_forest_depth4,0,-320+(i*320)+(parallax_x/1.5),(room_height-215)+(parallax_y/1.5));
    draw_sprite(spr_forest_depth3,0,-320+(i*320)+(parallax_x/2),(room_height-200)+(parallax_y/2));
    draw_sprite(spr_forest_depth2,0,-320+(i*320)+(parallax_x/3),(room_height-150)+(parallax_y/2.2));
    draw_sprite(spr_forest_depth1,0,-320+(i*320)+(parallax_x/4),(room_height-160)+(parallax_y/2.5));
}
draw_rectangle_colour(0,0,room_width,(room_height-380)+(parallax_y/2.5),color3,color3,color3,color3,false);

