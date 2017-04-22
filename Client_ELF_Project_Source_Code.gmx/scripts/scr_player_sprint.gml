///scr_player_sprint
var key_double_right = keyboard_check_pressed(ord('D'));
var key_double_left = -keyboard_check_pressed(ord('A'));


if(key_double_right==1 && double_tap<2)
{
    if(double_tap<0)
    {
        double_tap = 0;
    }
    alarm[1]=15;
    double_tap++;
}
else if(key_double_left==-1 && double_tap>-2)
{
    if(double_tap>0)
    {
        double_tap = 0;
    }
    alarm[1]=15;
    double_tap--;
}


if(key_right==0 && double_tap == 2)
{
    double_tap = 0;
}
else if(key_left==0 && double_tap == -2)
{
    double_tap = 0;
}







if(double_tap == 2 || double_tap == -2)
{
    sprinting = true;
}

if(key_left==-1 && key_right==1)
{
    sprinting = false;
}

if(key_left==0 && key_right==0)
{
    sprinting = false;
}

if(sprinting)move_speed = 6;
else move_speed = 3;


