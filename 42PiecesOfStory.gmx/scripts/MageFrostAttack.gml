speed = 0

if(turnedToTheRight)
    sprite_index = spr_mage_frost_attack_right
else
    sprite_index = spr_mage_frost_attack_left

image_speed = 0.1

nOfFrostAttacks++

instance_create(x,y, obj_frost_attack)

//keeps the mage from moviming while attacking
alarm[5] = stoppedWhileAttTimer
