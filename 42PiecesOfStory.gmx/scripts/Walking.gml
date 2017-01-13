///Walking(key,movSpe,playerDir,playerStan)

movSpeX = argument0;
movSpeY = argument1;
playerDir = argument2;

realPlayerDirection = playerDir;

if(instance_exists(obj_ice_block)){

    blockMargin = obj_ice_block.margin

}


if(place_free(x+movSpeX,y+movSpeY)){
    if(tile_layer_find(5,x+movSpeX,y+movSpeY)){
        bg = tile_get_background(tile_layer_find(5,x+movSpeX,y+movSpeY));
        if(bg ==0 ){
            friction = 0.2;
        }
        else{
            friction = 1
        }
    }
    if(tile_layer_find(5,x,y)){
        bg = tile_get_background(tile_layer_find(5,x,y));
        if(bg !=0 ){
            friction = 1;
            hspeed = 0;
            vspeed = 0;
        }
    }
    //x += movSpeX;
    //y += movSpeY;
    hspeed = movSpeX;
    vspeed = movSpeY;
    script_execute(ImageOrientation);
    
    if (playerDir != pointerDirection){
        playerDirection = pointerDirection;
        if(!attacking){
            sprite_index = asset_get_index("spr_walk_animation_" + string(playerDirection));
            image_speed =  animationSpeed * -1; 
        }
    } 
    else {
        playerDirection = playerDir;
        if(!attacking){
            sprite_index = asset_get_index("spr_walk_animation_" + string(playerDirection));
            image_speed =  animationSpeed; 
        }
    }
    
    
}
