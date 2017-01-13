player_x = obj_player.x
player_y = obj_player.y
movement = obj_player.pixelToMove

//Right push
if(place_meeting(player_x + movement/2,player_y,obj_ice_block)){
    var block = instance_place(player_x + movement/2,player_y,obj_ice_block);
    with(block){
        movX = 2
        movY = 0
        script_execute(moveBlock);
    }
    //obj_player.pixelToMove /=2
}

//Left push
else if(place_meeting(player_x - movement/2,player_y,obj_ice_block)){
    var block = instance_place(player_x - movement/2,player_y,obj_ice_block);
    with(block){        
        movX = -2
        movY = 0
        script_execute(moveBlock);
    }
    //obj_player.pixelToMove /=2
}

//Down push
else if(place_meeting(player_x,player_y+movement/2,obj_ice_block)){
    show_debug_message("down");
    var block = instance_place(player_x ,player_y+movement/2,obj_ice_block);
    with(block){
        movX = 0
        movY = 2
        script_execute(moveBlock);
    }
    //obj_player.pixelToMove /=2
}

//Up push
else if(place_meeting(player_x,player_y-movement/2,obj_ice_block)){
    var block = instance_place(player_x ,player_y-movement/2,obj_ice_block);
    with(block){
        movX = 0
        movY = -2
        script_execute(moveBlock);
    }
    //obj_player.pixelToMove /=2
}


