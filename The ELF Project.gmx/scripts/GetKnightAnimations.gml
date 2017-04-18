if PlayerClass = "Knight"
    {
    if obj_player.WeaponEquipped = "no"
        {
            if obj_player.PlayerAnimation = "idle"
            {
            obj_player.sprite_index = spr_player
            obj_player.image_speed = 0.10
            }
            if obj_player.PlayerAnimation = "walk"
            {
            obj_player.sprite_index = spr_player_walk
            obj_player.image_speed = 0.25
            }
            if obj_player.PlayerAnimation = "duck"
            {
            obj_player.sprite_index = spr_player_knight_duck
            obj_player.image_speed = 0
            }
            if obj_player.PlayerAnimation = "jump"
            {
            obj_player.sprite_index = spr_player_knight_jump
            obj_player.image_speed = 0
            }
        }
    if obj_player.WeaponEquipped = "yes"
        {
        if obj_player.PlayerAnimation = "idle"
            {
            obj_player.sprite_index = spr_player_knight_idle
            obj_player.image_speed = 0.10
            }
        if obj_player.PlayerAnimation = "run"
            {
            obj_player.sprite_index = spr_player_knight_run
            obj_player.image_speed = 0.25
            }
        if obj_player.PlayerAnimation = "jump"
            {
            obj_player.sprite_index = spr_player_knight_jump
            obj_player.image_speed = 0
            }
        if obj_player.PlayerAnimation = "land"
            {
            obj_player.sprite_index = spr_player_knight_run
            obj_player.image_speed = -0.25
            }
        if obj_player.PlayerAnimation = "duck"
            {
            obj_player.sprite_index = spr_player_knight_duck
            obj_player.image_speed = 0
            }
        }
    }
