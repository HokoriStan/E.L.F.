// gravity, so the player can fall when not on the floor
scr_gravity();
// keycheck, check to see what the player is pressing and how to go about it
scr_player_movement();
// jump
// collision check of movements (includes walking up and down slopes, sliding down steeps)
scr_collision_movement();
// Enables Wall jumping
//scr_onwall();
//
scr_getAngle();
