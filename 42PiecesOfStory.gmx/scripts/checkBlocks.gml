left  = argument0
right = argument1
up    = argument2
down  = argument3


if(!place_free(x,y)){
    show_debug_message("collide");
    obj_player.hspeed = 0;
    obj_player.vspeed = 0;
    if(left){
        obj_player.hspeed = 1;
    }
    if(right){
        obj_player.hspeed = 1;
    }
    if(up){
        obj_player.vspeed = 1;
    }
    if(down){
        obj_player.vspeed = -1;
    }
    
}
