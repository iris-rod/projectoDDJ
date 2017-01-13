//EarnExp(exp)

exp0 = argument0;
//level = playerLevel;
obj_player.actualExp = obj_player.actualExp + exp0;
obj_player.expMax = obj_player.expMax;
while(obj_player.actualExp >= obj_player.expMax){
    obj_player.playerLevel +=1;
    obj_player.talentPoint +=1;
    obj_player.expMax = round(obj_player.playerLevel*(log10(obj_player.playerLevel)*10) + 10);
    obj_player.actualExp -= (round((obj_player.playerLevel-1)*(log10(obj_player.playerLevel-1)*10) + 10));
    inst = instance_create(obj_player.x,obj_player.y-50,obj_levelUp);
    with(inst){
        sprite_index = asset_get_index("spr_levelUp");
        image_speed = 0.4;
        
    }
    
}

