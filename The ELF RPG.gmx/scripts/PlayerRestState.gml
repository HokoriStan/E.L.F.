///PlayerRestState()
//Stop
image_speed = 0;
image_index = 0;

//Change State
if (rightKey || leftKey || upKey || downKey || dashKey) state = PlayerMoveState;