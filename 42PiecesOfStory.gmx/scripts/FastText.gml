//obj,speedText

if(object_exists(argument0)){
    with(argument0){
        if(instance_exists(txt)){
            show_debug_message("entrei");
                with(txt){
                    if(object_index == obj_text){
                        if (spd = 10 || time >= text_length){ 
                        instance_destroy();
                        //spd = 0;
                        //global.timeline_speed = 2;
                        }
                        
                        else{
                        spd = argument1;
                        //global.timeline_speed = 1;
                        }   
                    }
                }
            }
        }
    }



/*if(object_exists(argument0)){
    with(argument0){
        if(object_exists(obj_text)){
            with(obj_text){
                if (spd = 10){ 
                instance_destroy();
                spd = 0;
                timeline_position = timeline_position + 1
                }
                
                else{
                spd = argument1;
                }   
            }
        }
    }
}*/

