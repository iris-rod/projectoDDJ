stat = argument0;
number = argument1;
weapon = argument2;

switch(weapon){
    case "sword":
        if(stat == "S" && obj_player.strengthPointsSword == number-1) obj_player.strengthPointsSword++; 
        if(stat == "A" && obj_player.agilityPointsSword == number-1) obj_player.agilityPointsSword++; 
        if(stat == "I" && obj_player.intelligencePointsSword == number-1) obj_player.intelligencePointsSword++; 
        break;
    case "bow":
        if(stat == "S" && obj_player.strengthPointsBow == number-1) obj_player.strengthPointsBow++;
        if(stat == "A" && obj_player.agilityPointsBow == number-1) obj_player.agilityPointsBow++; 
        if(stat == "I" && obj_player.intelligencePointsBow == number-1) obj_player.intelligencePointsBow++; 
        break;
    case "staff":
        if(stat == "S" && obj_player.strengthPointsStaff == number-1) obj_player.strengthPointsStaff++; 
        if(stat == "A" && obj_player.agilityPointsStaff == number-1) obj_player.agilityPointsStaff++; 
        if(stat == "I" && obj_player.intelligencePointsStaff == number-1) obj_player.intelligencePointsStaff++; 
        break;            
}
obj_player.pointsToAdd--;

script_execute(drawSkillPoints,weapon);


