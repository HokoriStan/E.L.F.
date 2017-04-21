//Get the player's input
key_right = keyboard_check(ord("D"))
key_left = -keyboard_check(ord("A"))
key_up = keyboard_check_pressed(ord("W"))
key_down = keyboard_check(ord("S"))

//React to players' input
move = key_left + key_right;
if obj_player.WeaponEquipped = "yes"
    {
    move*=2
    }
hspd = move * movespeed;
if (vspd < 10) vspd += grav;

//Change Character Animation
//----------------------------------------------------------------------WALK SECTION--------------------------------------------------------------------------------------  
    if move = 1                                 //walk right
        {
        PlayerLook = 1
        PlayerAnimation = "walk"
        image_xscale = 1
        if !(place_meeting(x,y+1,obj_wall))
            {
                PlayerAnimation = "jump"
            }
        }
    if move = -1                                //walk left
        {
        PlayerLook = -1
        PlayerAnimation = "walk"
        image_xscale = -1
        if !(place_meeting(x,y+1,obj_wall))
            {
                PlayerAnimation = "jump"
            }
        }
//----------------------------------------------------------------------IDLE SECTION--------------------------------------------------------------------------------------    
if (move = 0 && place_meeting(x,y+1,obj_wall))                    //stand still
    {
    PlayerAnimation = "idle"
    AirJump = 1
    }
//----------------------------------------------------------------------IDLE SECTION--------------------------------------------------------------------------------------  
//----------------------------------------------------------------------DUCK SECTION--------------------------------------------------------------------------------------    
if (key_down = 1 && move = 0 && place_meeting(x,y+1,obj_wall))
    {
    PlayerAnimation = "duck"
    }
//----------------------------------------------------------------------DUCK SECTION--------------------------------------------------------------------------------------  

//----------------------------------------------------------------------WALK SECTION--------------------------------------------------------------------------------------  
if obj_player.WeaponEquipped = "yes"
{
//----------------------------------------------------------------------RUN SECTION--------------------------------------------------------------------------------------  
/*if !key_down
{
player_doublepress()
}*/
    
        if move = 2                     //run right
        {
        PlayerLook = 1
        PlayerAnimation = "run"
        image_xscale = 1
        if !(place_meeting(x,y+1,obj_wall))
            {
                PlayerAnimation = "jump"
            }
        }
    if move = -2                   //run left
        {
        PlayerLook = -1
        PlayerAnimation = "run"
        image_xscale = -1
        if !(place_meeting(x,y+1,obj_wall))
            {
                PlayerAnimation = "jump"
            }
        }
//----------------------------------------------------------------------RUN SECTION--------------------------------------------------------------------------------------    
}
//----------------------------------------------------------------------JUMP SECTION--------------------------------------------------------------------------------------
if AirJump > 0 //Check if double jump is possible                   //Double Jump
    {
    if key_up && Energy > 1//Is the jump button pressed?
        {
        vspd = -jumpspeed/1.25 //Jump in mid-air
        AirJump -= 1 //Double Jump not possible anymore.
        Energy -= 1
        instance_create(obj_player.x,obj_player.y+7,obj_player_doublejump)
        }
    }
    
if key_up = 1                                                       //Jump
    {
        PlayerAnimation = "jump"
        if (place_meeting(x,y+1,obj_wall))
        {
            vspd = key_up* -jumpspeed
            AirJump = 1
        }
    }
//----------------------------------------------------------------------JUMP SECTION--------------------------------------------------------------------------------------

check_collision()
