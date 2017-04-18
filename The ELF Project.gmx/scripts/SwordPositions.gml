//--------------------------------Sword
    image_xscale = obj_player.image_xscale
    x = obj_player.x
    y = obj_player.y+6
    image_angle = 0
    depth = obj_player.depth+1
    if obj_player.WeaponEquipped = "yes"
    {
    if obj_player.PlayerAnimation = "idle"
        {   
        depth = obj_player.depth-1
            switch floor(obj_player.image_index)
            {
            case 0: x = obj_player.x+(0*obj_player.PlayerLook); y = obj_player.y+5; break;
            case 1: x = obj_player.x+(1*obj_player.PlayerLook); y = obj_player.y+5; break;
            case 2: x = obj_player.x+(1*obj_player.PlayerLook); y = obj_player.y+6; break;
            case 3: x = obj_player.x+(1*obj_player.PlayerLook); y = obj_player.y+5; break;
            }
        }
    if obj_player.PlayerAnimation = "walk"
        {
        //depth = obj_player.depth+1
        image_angle = -45*obj_player.PlayerLook
        y = obj_player.y-16
        x = obj_player.x-(15*obj_player.PlayerLook)
        }
        
    if obj_player.PlayerAnimation = "run"
        {
        switch floor(obj_player.image_index)
            {
            case 0: x = obj_player.x-(2*obj_player.PlayerLook); y = obj_player.y+5; break;
            case 1: x = obj_player.x-(2*obj_player.PlayerLook); y = obj_player.y+6; break;
            case 2: x = obj_player.x-(2*obj_player.PlayerLook); y = obj_player.y+5; break;
            case 3: x = obj_player.x-(2*obj_player.PlayerLook); y = obj_player.y+5; break;
            case 4: x = obj_player.x-(2*obj_player.PlayerLook); y = obj_player.y+6; break;
            case 5: x = obj_player.x-(2*obj_player.PlayerLook); y = obj_player.y+5; break;
            }
        }
    if obj_player.PlayerAnimation = "jump"
        {
        depth = obj_player.depth-1
        y = obj_player.y+4
        x = obj_player.x-(4*obj_player.PlayerLook)
        }
    if obj_player.PlayerAnimation = "duck"
        {
        y = obj_player.y+15
        x = obj_player.x-1
        }
    }

if obj_player.WeaponEquipped = "no"
    {
    //depth = obj_player.depth+1
    image_angle = -45*obj_player.PlayerLook
    y = obj_player.y-16
    x = obj_player.x-(15*obj_player.PlayerLook)
    }
    
    
