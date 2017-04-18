if state == scr_state_normal{
    if scr_onTopOf_Wall(){
        if hspd == 0{
            if PlayerAnimation == "idle"{
                if sprite_index != spr_player{
                    sprite_index = spr_player;
                    //image_index = 0;
                    
                    image_xscale = 1*PlayerLook;
                }
                image_speed = 0.10*delta
            }else if PlayerAnimation == "crouch"{
                if sprite_index != spr_player_knight_duck{
                    sprite_index = spr_player_knight_duck;
                    //image_index = 0;
                    
                    image_xscale = 1*PlayerLook;
                }
                image_speed = 0.10*delta
            } 
        }else{
            if PlayerAnimation == "walk"{
                if sprite_index != spr_player_walk || image_xscale != 1*PlayerLook{
                    sprite_index = spr_player_walk;
                    //image_index = 0;
                    
                    image_xscale = 1*PlayerLook;
                }
                image_speed = 0.25*delta
            } 
            if PlayerAnimation == "run"{
                if sprite_index != spr_player_run || image_xscale != 1*PlayerLook{
                    sprite_index = spr_player_run;
                    //image_index = 0;
                    
                    image_xscale = 1*PlayerLook;
                }
                image_speed = 0.25*delta
            } 
        }
    }else{
        if vspd < 0{
            if PlayerAnimation == "jump"{
                if AirJump == 1{//First Jump
                    if sprite_index != spr_player_knight_jump{
                        sprite_index = spr_player_knight_jump//spr_player_doublejump;
                        //image_index = 0;
                        image_speed = 0.25;
                    }
                }else{ //second jump
                    if sprite_index != spr_player_knight_jump{
                        sprite_index = spr_player_knight_jump;
                        //image_index = 0;
                        image_speed = 0.25;
                    }
                }
            }
            image_xscale = 1*PlayerLook;
        }else if vspd >= 0{ //fall
            if sprite_index != spr_player_knight_jump{
                sprite_index = spr_player_knight_jump//spr_player_doublejump;
                //image_index = 0;
                image_speed = 0.25;
            }
            image_xscale = 1*PlayerLook;
        } 
    }
}else if state == scr_state_walljump{
    if PlayerAnimation == 'wall_left'{
        if sprite_index != spr_player_wall{
            sprite_index = spr_player_wall//spr_player_doublejump;
            //image_index = 0;
            image_speed = 0.25;
        }
        image_xscale = 1;
    }else if PlayerAnimation == 'wall_right'{
        if sprite_index != spr_player_wall{
            sprite_index = spr_player_wall//spr_player_doublejump;
            //image_index = 0;
            image_speed = 0.25;
        }
        image_xscale = -1;
    }
}
