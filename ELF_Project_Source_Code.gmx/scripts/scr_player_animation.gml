///scr_player_animation

if(dir==1)image_xscale = 1;
if(dir==-1)image_xscale = -1;

if(grounded)
{
    switch(state)
    {
        case 0://Free
            if(hsp==0) 
            {
                image_speed = 0.1;
                sprite_index = spr_elf_idle;
            }
            else if(hsp!=0 && !sprinting) 
            {
                image_speed = 0.15;
                sprite_index = spr_elf_walking;
            }
            else if(hsp!=0 && sprinting) 
            {
                image_speed = 0.18;
                sprite_index = spr_elf_running;
            }
        break;
        
        case 1://Crouching
            sprite_index = spr_elf_crouch;
            image_speed = 0;
            if(crouch_index<24)crouch_index++;
            
            if(crouch_index<=5)image_index = 0;
            if(crouch_index>=6 && crouch_index<=11)image_index = 1;
            if(crouch_index>=12 && crouch_index<=17)image_index = 2;
            if(crouch_index>=18 && crouch_index<=23)image_index = 3;
        break;
        
        case 2://Un-Crouching
            sprite_index = spr_elf_crouch;
            image_speed = 0;
            if(crouch_index>=0)crouch_index--;
            
            if(crouch_index<=5)image_index = 0;
            if(crouch_index>=6 && crouch_index<=11)image_index = 1;
            if(crouch_index>=12 && crouch_index<=17)image_index = 2;
            if(crouch_index>=18 && crouch_index<=23)image_index = 3;
        break;
    }
}
else if(!grounded)
{
    switch(state)
    {
        case 0:
            if(vsp<=-4)
            {
                image_speed = 0.25;
                sprite_index = spr_elf_up_jump;
            }
            if(vsp>-3&&vsp<3)
            {
                sprite_index = spr_elf_mid_jump;
            }
            switch(vsp)
            {
                case -3:
                case -2:
                    image_index = 0;
                break;
                
                case -1:
                case 0:
                    image_index = 1;
                break;
                
                case 1:
                case 2:
                    image_index = 2;
                break;
            }
            
            
            if(vsp>=3)
            {
                image_speed = 0.25;
                sprite_index = spr_elf_falling;
            }
        break;
        
        case 3:
            sprite_index = spr_elf_wall_cling;
            image_xscale = dir*-1;
        break;
    }
}
