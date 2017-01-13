inst = argument0;
skill = argument1;
open = argument2;

if(open){
    if(!skill){
        if(object_get_name(inst.object_index)=="obj_button_bag"){
            show_debug_message("bag");
        }
        
        if(object_get_name(inst.object_index)=="obj_button_equipment"){
            show_debug_message("equipment");
        }
        
        if(object_get_name(inst.object_index)=="obj_button_skills"){
            show_debug_message("skill");
            instance_create(250,200,obj_submenu_skill);
            script_execute(drawSkillPoints,"sword");
        }
        
        if(object_get_name(inst.object_index)=="obj_button_totems"){
            show_debug_message("totems");
            instance_create(250,200,obj_submenu_totem);
            if(!obj_totem.totemSpeedUpBought){
                obj_submenu_totem.sprite_index = asset_get_index("spr_submenu_totem_not_bought");
            }else{
                obj_submenu_totem.sprite_index = asset_get_index("spr_submenu_totem");
            }
        }
        
        script_execute(setMainMenu,false);
        show_debug_message(open);
    }
    
    else{
        var menu = instance_find(obj_submenu_skill,1);
        with(inst){
        show_debug_message(option);
            if(option == "sword"){
                menu.sprite_index = asset_get_index("spr_submenu_skill_sword");
                script_execute(setOptionsSubmenu,menu.sprite_index);
                script_execute(setSkillCollisions,"sword");
                script_execute(drawSkillPoints,"sword");
            }
            else if(option == "bow"){
                menu.sprite_index = asset_get_index("spr_submenu_skill_bow");
                script_execute(setOptionsSubmenu,menu.sprite_index);
                script_execute(setSkillCollisions,"bow");
                script_execute(drawSkillPoints,"bow");
            }
            else if(option == "staff"){
                menu.sprite_index = asset_get_index("spr_submenu_skill_staff");
                script_execute(setOptionsSubmenu,menu.sprite_index);
                script_execute(setSkillCollisions,"staff");
                script_execute(drawSkillPoints,"staff");
            }
        }
    
    }
}

if(!open){
    with(obj_submenu_skill){
        instance_destroy();
    }
    with(obj_option_collision){
        instance_destroy();
    }
    with(obj_point_skill){
        instance_destroy();
    }
    with(obj_point_collision){
        instance_destroy();
    }
    with(obj_submenu_totem){
        instance_destroy();
    }
    with(obj_totem_collision){
        instance_destroy();
    }
    with(obj_buy_collision){
        instance_destroy()
    }
}



