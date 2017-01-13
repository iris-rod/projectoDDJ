playerDir = argument0;

switch(playerDir){

    case "up":
        obj_player.leftDiag = 45;
        obj_player.rightDiag = 135;
        break;
    case "down":
        obj_player.leftDiag = 225;
        obj_player.rightDiag = 305;
        break;
    case "right":
        obj_player.leftDiag = 305;
        obj_player.rightDiag = 45;
        break;
    case "left":
        obj_player.leftDiag = 135;//135
        obj_player.rightDiag = 225;//225
        break;
}

