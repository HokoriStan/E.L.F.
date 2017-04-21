if obj_player.XP >= obj_player.MaxXP
    {
    XP = 0
    LVL += 1
    MaxXP = (LVL*12)*(LVL*2)
    MaxHP += (LVL*2)*(LVL)
    HP = MaxHP
    }
