w = argument0;
s = argument1;

switch(weapon){
    case "sword":
        if(s == "S") obj_player.strengthPointsSword++; 
        if(s == "A") obj_player.agilityPointsSword++; 
        if(s == "I") obj_player.intelligencePointsSword++; 
        break;
    case "bow":
        if(s == "S") obj_player.strengthPointsBow++;
        if(s == "A") obj_player.agilityPointsBow++; 
        if(s == "I") obj_player.intelligencePointsBow++; 
        break;
    case "staff":
        if(s == "S") obj_player.strengthPointsStaff++; 
        if(s == "A") obj_player.agilityPointsStaff++; 
        if(s == "I") obj_player.intelligencePointsStaff++; 
        break;            
}
