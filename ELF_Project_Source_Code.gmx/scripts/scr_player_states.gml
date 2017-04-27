///scr_player_states

switch(state)
{
    case 0://Free
        crouch_index = 0;
    break;
    
    case 1://Crouching
        hsp = 0;
        sprinting = false;
        if(!grounded)state=0;
    break;
    
    case 2://Un-Crouching
        if(crouch_index==0)state=0;
        if(hsp!=0)state=0;
        if(!grounded)state=0;
    break;
}
