///scr_player_sprint
//Location: obj_player step_event
var key_double_right = keyboard_check_pressed(vk_right) || (gamepad_button_check_pressed(0,gp_padr)) || (gamepad_axis_value(0,gp_axislh)>0)&&(!joystick_limit);
var key_double_left = -(keyboard_check_pressed(vk_left) || (gamepad_button_check_pressed(0,gp_padl)) || (gamepad_axis_value(0,gp_axislh)<0)&&(!joystick_limit));


//joystick_limit will treat the joystick as check_pressed
if(key_right>0 || key_left<0)joystick_limit = true;
else joystick_limit = false;

//only perform these when on ground
if(grounded)
{
    if(key_double_right==1 && double_tap<3)//This will increment the double_tap
    {
        if(double_tap<0)//if double_tap is in the negatives, then set it to 0 because we want to go in the positives
        {
            double_tap = 0;
        }
        alarm[1]=15;
        double_tap++;//increment
    }
    else if(key_double_left==-1 && double_tap>-3)//This will decrement the double_tap
    {
        if(double_tap>0)//if double_tap is in the positives, then set it to 0 because we want to go in the negatives
        {
            double_tap = 0;
        }
        alarm[1]=15;
        double_tap--;//decrement
    }
    
    
    //sets the sprinting true
    if(double_tap == 2 || double_tap == -2)
    {
        sprinting = true;
    }
}

//If double_tap gets to 3, set it to 1
//If double_tap gets to -3, set it to -1
if(double_tap==3)
{
    sprinting = false;
    double_tap = 1;
}
else if(double_tap==-3)
{
    sprinting = false;
    double_tap = -1;
}

//this will only trigger when alarm[1] = -1
if(alarm[1]==-1)
{   
    //if both left and right keys are pressed, then set sprinting to false
    if(key_left==-1 && key_right==1)
    {
        sprinting = false;
    }
    
    //if both left and right keys are not pressed, then set sprinting to false
    if(key_left==0 && key_right==0)
    {
        sprinting = false;
    }
}




/*

//this deals with the speed whenever sprinting is true or false
if(sprinting)move_speed = run_speed;
else move_speed = walk_speed;


