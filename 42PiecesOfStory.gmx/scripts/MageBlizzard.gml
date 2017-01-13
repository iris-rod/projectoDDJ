speed         = 0

if(turnedToTheRight)
    sprite_index = spr_mage_blizzard_right
else
    sprite_index = spr_mage_blizzard_left

image_speed = 0.1
    
with(obj_frost_attack)
    instance_destroy()
//keeps the mage from moviming while attacking
alarm[5] = stoppedWhileAttTimer

var blizzard = instance_create(room_width/2, room_height/2, obj_blizzard)

with(blizzard)
{
    image_speed = room_speed / 4
}
