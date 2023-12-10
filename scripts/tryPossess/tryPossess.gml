// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function tryPossess(playerObj) {
	var possessionRange = 50;
	if (!instance_exists(oNPC)) {
		return
	}
	var target = instance_nearest(oPlayerPrototype.x,oPlayerPrototype.y,oNPC)
	if(true) {
		if (playerObj.moveTarget == playerObj) {
			//for(i = 0; i < array_length(possessArray); i++) {
				distTo = sqrt(abs(sqr(playerObj.x-target.x) + sqr(playerObj.y-target.y)));
				show_debug_message(string(distTo));
				if(distTo < possessionRange) {
					inst = instance_create_depth(playerObj.x, playerObj.y, -500, oMagicBeamTest);
					angleTo = arctan((playerObj.y-target.y)/(playerObj.x - target.x))
					inst.image_angle = point_direction(playerObj.x, playerObj.y, target.x, target.y)
					audio_play_sound(soundPossess,1,false)
					playerObj.moveTarget = target;
			//		break;
			//	}
			}
		} else {
			playerObj.moveTarget = playerObj;
		}
	}
}