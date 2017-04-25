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
                image_speed = 0.2;
                sprite_index = spr_elf_walking;
            }
            else if(hsp!=0 && sprinting) 
            {
                image_speed = 0.3;
                sprite_index = spr_elf_running;
            }
        break;
    }
}
else if(!grounded)
{
    switch(state)
    {
        case 0:
            if(vsp<=-3)
            {
                image_speed = 0.3;
                sprite_index = spr_elf_up_jump;
            }
            else if(vsp>-3&&vsp<1)
            {
                sprite_index = spr_elf_mid_jump;
                image_index = vsp;
            }
            else if(vsp>0)
            {
                image_speed = 0.3;
                sprite_index = spr_elf_falling;
            }
        break;
    }
}
