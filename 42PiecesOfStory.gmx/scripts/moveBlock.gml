instance_block = argument0
iX = instance_block.x
iY = instance_block.y
margin = obj_ice_block.margin

if(place_free(iX+margin+movX,iY+margin+movY)){    
    show_debug_message("move: " + string(movX) + "  " + string(movY));
    hspeed = movX
    vspeed = movY    
}



