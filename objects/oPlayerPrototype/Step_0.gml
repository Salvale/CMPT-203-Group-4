//Player Movement: moves players based on the WASD keys

// player movement directions
var _horiz = 0;
var _vert = 0;

// distance at which player moves
var _dist = 2.5;
var _dist_d = 2.5 * 0.707

// the tile map the player should avoid
var map_id = layer_tilemap_get_id("Collide");



if keyboard_check(ord("D")) _horiz += 1;
if keyboard_check(ord("A")) _horiz -= 1;
if keyboard_check(ord("W")) _vert -= 1;
if keyboard_check(ord("S")) _vert += 1;


if keyboard_check_pressed(ord("P")) { //prototype posession mechanic. for testing purposes - subject to change
/*	if(moveTarget == self) {
		moveTarget = oNPC;
	} else {
		moveTarget = self;
	}
	*/
	
	tryPossess(self);
}

with (moveTarget) //movetarget set in create. set to an object to control it. 
{
	if (_horiz != 0 && _vert != 0) // player is moving diagonally
	{
		move_and_collide(_horiz*_dist_d, _vert*_dist_d, map_id);
	}
	else // player is moving orthogonally (up, down, left, or right exclusive)
	{
		move_and_collide(_horiz*_dist, _vert*_dist, map_id);
	}
}


