menu = argument0;

//get all options on the menu
var objs;
var i;
for (i = 0; i < instance_number(obj_option_collision); i += 1)
{
   objs[i] = instance_find(obj_option_collision,i);
}


if(sprite_get_name(menu) == "spr_submenu_skill_sword" ){
    show_debug_message("menu sword");
    objs[0].option = "staff"
    objs[1].option = "bow"
}
else if(sprite_get_name( menu) == "spr_submenu_skill_bow") {
    show_debug_message("menu bow");
    objs[0].option = "staff"
    objs[1].option = "sword"
}
else if(sprite_get_name(menu) == "spr_submenu_skill_staff"){
    show_debug_message("menu staff");
    objs[0].option = "bow"
    objs[1].option = "sword"
}




