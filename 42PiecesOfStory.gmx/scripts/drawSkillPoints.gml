weaponOption = argument0
with(obj_point_skill){
    instance_destroy();
}
X[0] = 159
X[1] = 197
X[2] = 299
X[3] = 336

Y[0] = 112
Y[1] = 180
Y[2] = 244

var SPoints;
var APoints;
var IPoints;

switch(weaponOption){
    case "sword":
        SPoints = obj_player.strengthPointsSword;
        APoints = obj_player.agilityPointsSword;
        IPoints = obj_player.intelligencePointsSword;
        break;
    case "bow":
        SPoints = obj_player.strengthPointsBow;
        APoints = obj_player.agilityPointsBow;
        IPoints = obj_player.intelligencePointsBow;
        break;
    case "staff":
        SPoints = obj_player.strengthPointsStaff;
        APoints = obj_player.agilityPointsStaff;
        IPoints = obj_player.intelligencePointsStaff;
        break;    
}

var i;
for(i = 0; i < SPoints; i++){
    var point_inst = instance_create(X[i],Y[0],obj_point_skill);
    point_inst.sprite_index = asset_get_index("spr_point_strength");
}

var j;
for(j = 0; j < IPoints; j++){
    var point_inst = instance_create(X[j],Y[2],obj_point_skill);
    point_inst.sprite_index = asset_get_index("spr_point_intelligence");
}

var k;
for(k = 0; k < APoints; k++){
    var point_inst = instance_create(X[k],Y[1],obj_point_skill);
    point_inst.sprite_index = asset_get_index("spr_point_agility");
}


