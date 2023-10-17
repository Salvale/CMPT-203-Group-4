/// @description Insert description here
// You can write your code in this editor


//Player Movement: moves players based on the WASD keys

// player movement directions
var _horiz = 0;
var _vert = 0;

// distance at which player moves
var _dist = 2;
var _dist_d = 2 * 0.707

// input of player using the WASD keys
if keyboard_check( ord("D") ) _horiz += _dist;
if keyboard_check( ord("A") ) _horiz -= _dist;
if keyboard_check( ord("W") ) _vert -= _dist;
if keyboard_check( ord("S") ) _vert += _dist;

if keyboard_check_pressed( ord("P")) _canMove = !_canMove; //to test _canMove

if (_canMove) { //Added "can move" check - declared in Create. Can be turned off if we do not want player to move (ie, in a cutscene or posessing another character)
	if (_horiz != 0 && _vert != 0) // player is moving diagonally
	{
		// Used pythaogrean theorem to get the actual distance travelled for x and y
		//hypotenuse = _dist, and x and y having the same length
		// This fixes the movement speed when player moves diagonally
		//_dist = sqrt(power(_dist, 2)/2); 
	
		if _horiz < 0 x -= _dist_d; // go left
		else x += _dist_d; // go right
		
		if _vert < 0 y -= _dist; // go up
		else y += _dist_d; // go down
	}
	else // player is moving straight (up, down, left, or right exclusive)
	{
		x += _horiz;
		y += _vert;
	}
}

