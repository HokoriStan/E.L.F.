var _yL = 0;
var _yR = 0;


for(var _i=0; _i < round(sprite_height/2); _i++){
    if scr_place_meeting_wall(x - 2,y + _yL, obj_wall) == 2{
        _yL -= 1
    }else if !scr_place_meeting_wall(x - 2,y + _yL + 1, obj_wall) == 2{
        _yL += 1
    }
    
    if scr_place_meeting_wall(x + 2, y + _yR, obj_wall) == 2{
        _yR -= 1
    }else if !scr_place_meeting_wall(x + 2, y + _yR + 1, obj_wall) == 2{
        _yR += 1
    }
}

return (_yR -_yL)/4;
