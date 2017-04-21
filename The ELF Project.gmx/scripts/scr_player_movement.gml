//Get the player's input
key_right = vk_right // ord("D")
key_left = vk_left // ord("A")
key_up = vk_up // ord("W")
key_down = vk_down // ord("S")

if keyboard_check(key_right) && keycheck != "left"{
    keycheck = "right";
    PlayerLook = 1;
    if vspd == 0{
        hspd = walkspd;
        PlayerAnimation = "walk";
        if runstate == "right" || runstate == "rright"{
            if scr_alarm_check(0) != -1{
                scr_alarm_set(0, -1);
            }
            runstate = "rright";
            hspd = runspd
            PlayerAnimation = "run";
        }else if runstate == "lleft"{
            hspd = 0;
            runstate = "rright";
        }
    }else{
        hspd = airspd;
    }
}else if keyboard_check(key_left) && keycheck != "right"{
    keycheck = "left";
    PlayerLook = -1;
    if vspd == 0{
        hspd = -walkspd
        PlayerAnimation = "walk";
        if runstate == "left" || runstate == "lleft"{
            if scr_alarm_check(0) != -1{
                scr_alarm_set(0, -1);
            }
            runstate = "lleft";
            hspd = -runspd
            PlayerAnimation = "run";
        }else if runstate == "rright"{
            hspd = 0;
            runstate = "lleft";
        }
    }else{
        hspd = -airspd;
    }
}else{
    keycheck = "none";
    hspd = 0;
    //if scr_onTopOf_Wall(){
        if vspd == 0{
            PlayerAnimation = "idle";
        }
    //}    
}



if keyboard_check_released(key_left) && !keyboard_check(key_right){
    var _escape = false
    if runstate == "left" || runstate == "lleft"{
         scr_alarm_set(0, room_speed*0.2);
        _escape = true;
    }else if runstate == "none" || runstate == "right"{ 
        if _escape == false{
            runstate = "left";
            scr_alarm_set(0, room_speed*0.2);
        }
    }
}

if keyboard_check_released(key_right) && !keyboard_check(key_left){
    var _escape = false
    if runstate == "right" || runstate == "rright"{
        scr_alarm_set(0, room_speed*0.2);
        _escape = true;
    }else if runstate == "none" || runstate == "left"{ 
        if _escape == false{
            runstate = "right";
            scr_alarm_set(0, room_speed*0.2);
        }
    }else{
        runstate = "none";
    }
}

if keyboard_check_pressed(key_up){
    if scr_onTopOf_Wall(){
        jumptype = "full_jump";
        scr_alarm_set_timer(2,0);
        PlayerAnimation = "jump";
    }else{
        if AirJump > 0{
            AirJump -= 1;
            vspd = -jumpspeed/1.25;
            PlayerAnimation = "jump";
            instance_create(x,y+7,obj_player_doublejump);
        }
    }
}
if scr_alarm_check_timer(2) != -1{
    if !keyboard_check(key_up) && jumptype == "full_jump"{
        jumptype = "short_jump";
    }
    
    if scr_alarm(2,4){
        if jumptype == "short_jump"{
            vspd = -jumpspeed/1.35;
            PlayerAnimation = "jump";
        }else{
            vspd = -jumpspeed;
            PlayerAnimation = "jump";
        }
    }
}

if keyboard_check(key_down){
    if scr_onTopOf_Wall(){
        if hspd == 0{
            if downtap == false{
                 PlayerAnimation = "crouch";
            }else{
                if scr_place_meeting_wall(x,y+1, obj_wall) == 1{
                    y += 1;
                    vspd = 2;
                }
            }
        }
        if downtap == true{
            scr_alarm_set(1, room_speed * 0.2);
        }
    }
}
if keyboard_check_released(key_down){
    if scr_onTopOf_Wall(){
        if hspd == 0{
            downtap = true;
            scr_alarm_set(1, room_speed * 0.2);
        }
    }
}
