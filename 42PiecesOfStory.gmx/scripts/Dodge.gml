
objDirection = argument0;
pixeis = argument1;

switch(objDirection){
    case "up":
        if(collision_line(x, y, x, y-5-pixeis, obj_collision_player, false, false) <0
            && collision_line(x, y, x, y-5-pixeis, obj_collision_neutral, false, false) <0){
            vspeed -= pixeis;
        }
        break;
        
    case "down":
        if(collision_line(x, y, x, y+pixeis, obj_collision_player, false, false) <0
            && collision_line(x, y, x, y+pixeis, obj_collision_neutral, false, false)<0){
            vspeed += pixeis;
        }
        break;
        
    case "right":
        if(collision_line(x, y, x+pixeis, y, obj_collision_player, false, false) < 0
            && collision_line(x, y, x+pixeis, y, obj_collision_neutral, false, false) < 0){
            hspeed += pixeis;
        }
        break;
        
    case "left":
        if(collision_line(x, y, x-pixeis, y, obj_collision_player, false, false)<0
            && collision_line(x, y, x-pixeis, y, obj_collision_neutral, false, false)<0 ){
            vspeed -= pixeis;
        }
        break;
}
