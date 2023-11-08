// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function tryPossess(playerObj) {
	var possessionRange = 50;
	var possessArray = room.canPossess;
	if(array_length(possessArray) > 0) {
		if (playerObj.moveTarget == playerObj) {
			for(i = 0; i < array_length(possessArray); i++) {
				distTo = sqrt(abs(sqr(playerObj.x-possessArray[i].x) + sqr(playerObj.y-possessArray[i].y)));
				show_debug_message(string(distTo));
				if(distTo < possessionRange) {
					inst = instance_create_depth(playerObj.x, playerObj.y, -500, oMagicBeamTest);
					angleTo = arctan((playerObj.y-possessArray[i].y)/(playerObj.x - possessArray[i].x))
					inst.image_angle = point_direction(playerObj.x, playerObj.y, possessArray[i].x, possessArray[i].y)
					playerObj.moveTarget = possessArray[i];
					break;
				}
			}
		} else {
			playerObj.moveTarget = playerObj;
		}
	}
}