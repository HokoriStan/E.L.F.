if keyboard_check_released(vk_tab)
    {
    if WeaponEquipped = "no"
        {
        WeaponEquipped = "yes"
        exit
        }
    if WeaponEquipped = "yes"
        {
        WeaponEquipped = "no"
        exit
        }
    }
