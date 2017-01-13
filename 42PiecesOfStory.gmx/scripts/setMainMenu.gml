openMenu = argument0

if(!openMenu){
    with(obj_button_bag){
        instance_destroy();
    }
    with(obj_button_equipment){
        instance_destroy();
    }
    with(obj_button_skills){
        instance_destroy();
    }
    with(obj_button_totems){
        instance_destroy();
    }

}
else{
    instance_create(130,100,obj_button_bag);
    instance_create(350,100,obj_button_equipment);
    instance_create(130,200,obj_button_skills);
    instance_create(350,200,obj_button_totems);
}
