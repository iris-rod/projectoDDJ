///Walking(key,movSpe,playerDir,playerStan)

movSpeX = argument0;
movSpeY = argument1;
playerDir = argument2;

realPlayerDirection = playerDir;

if(place_free(x+movSpeX,y+movSpeY)){
    if(tile_layer_find(2,x+movSpeX,y+movSpeY)){
        friction = 0.2;
        //show_debug_message("here friction: " + string(friction));
    }
    else{

        //show_debug_message("here no friction");
        friction = 1;
        hspeed = 0
        vspeed = 0
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
