margin = obj_ice_block.margin
layer_id = tile_layer_find(5,x+margin+movX,y+margin+movY)
if(place_free(x+margin+movX,y+margin+movY)){    
    //show_debug_message("move: " + string(movX) + "  " + string(movY));
    hspeed = movX
    vspeed = movY    
}
if(layer_id){
    bg = tile_get_background(layer_id);
    if(bg != 0){
        hspeed = 0
        vspeed = 0
    }
}

if(x+margin+movX >= room_width || x-margin-movX <= 0 || y+margin+movY >= room_height || y-margin-movY <= 0){
    hspeed = 0
    vspeed = 0
}

