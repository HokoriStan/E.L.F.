quality = 10
// i dont suggest putting this over 10 as it is adequite and higher makes for much more cpu use
// i also dont suggest below 5. 2 will blur horozontally only and 1 will blur in one direction, to the right. 
dx = argument0
dy = argument1
sprite = argument2
subimage = argument3
radius = argument4
xscale = argument5
yscale = argument6
rot = argument7
alpha = argument8

dir = 0
rad = 0
repeat radius*2 {

repeat quality
   {
   draw_sprite_ext(sprite,subimage,dx+rad*cos(dir*pi/180),dy-rad*sin(dir*pi/180),xscale,yscale,rot,c_white,1/(quality*2)*alpha)
   dir += 360/quality
   }

rad += .5
}
