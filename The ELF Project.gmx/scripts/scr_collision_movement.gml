for(i = 0;i < abs(hspd)*delta;i += 1){//*delta
    if scr_place_meeting_wall(x+(sign(hspd)),y,obj_wall) == 2{
        if scr_place_meeting_wall(x+(sign(hspd)),y - 1,obj_wall) == 2 || inAir == true {
            if scr_place_meeting_wall(x+(sign(hspd)),y -2, obj_wall) || inAir == true {
                hspd = 0;
                movespeed = 0;
            }else{ 
                x += (sign(hspd));
                y -= 2;
            }
        }else{
            x += (sign(hspd));
            y -= 1;
        }
    }else{
        x += (sign(hspd));
        if inAir == false && !place_meeting(x,y + 1,obj_wall) && place_meeting(x, y + 2,obj_wall){
            y += 1;
        }
        if inAir == false && !place_meeting(x, y + 2,obj_wall) && place_meeting(x, y + 3,obj_wall){
            y += 2;
        }
    }
}

inAir = true;
for(i = 0;i < abs(vspd)*delta;i += 1){//*delta
    if scr_place_meeting_wall(x,y+sign(vspd),obj_wall){
        if scr_place_meeting_wall(x, y+sign(vspd),obj_wall) == 2{
            if vspd > 0{
                var slope = scr_inclination();
                if slope <= -2{
                    x -= 1;
                }else if slope >= 2{
                    x += 1;
                }else{
                    vspd = 0;
                    inAir = false;
                }
            }else{
                vspd = 0;
            }
        }else if scr_place_meeting_wall(x, y+sign(vspd),obj_wall) == 1{
            var _inst = instance_nearest(x,y+ sprite_get_yoffset(sprite_index)+1,obj_wall);
            if !scr_place_meeting_wall(x, y,obj_wall){
                if vspd > 0{
                    vspd = 0;
                    inAir = false;
                }else{
                    y += sign(vspd);
                    //inAir = true;
                }
            }
            else if scr_place_meeting_wall(x, y+sign(vspd),obj_wall) == 2{
                vspd = 0;
            }else if scr_onTopOf_Wall(){ //scr_place_meeting_wall(x, y,obj_wall) == 1 && y + sprite_get_yoffset(sprite_index) + 1 == _inst.y{
                if vspd > 0{
                    vspd = 0;
                    inAir = false;
                }else{
                    y += sign(vspd);
                }
            }else{
                y += sign(vspd);
                //inAir = true;
            }
        }
    }else{
        y += sign(vspd);
        //inAir = true;
    }
}
