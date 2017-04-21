/// Player Gravity

if (scr_place_meeting_wall(x,y+1,obj_wall)){
    if scr_place_meeting_wall(x,y+1,obj_wall) == 2{
        inAir = false;
        AirJump = 1;
    }else{
        if scr_place_meeting_wall(x,y,obj_wall) && !scr_onTopOf_Wall(){
            inAir = true;
            if (sign(vspd) < 10){
                vspd += grav*delta;
            }
        }else if scr_place_meeting_wall(x,y+1,obj_wall){      
        inAir = false;
        AirJump = 1;
        }
    }
}else{
    inAir = true;
    if (vspd < 10){
        vspd += grav*delta;
    }
    if (vspd > 10){
        vspd = 10
    }
}
