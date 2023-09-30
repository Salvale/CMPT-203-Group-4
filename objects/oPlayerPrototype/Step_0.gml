//Player Movement: moves players based on the WASD keys

// player movement directions
var _horiz = 0;
var _vert = 0;

// distance at which player moves
var _dist = 5;

// input of player using the WASD keys
if keyboard_check( ord("D") ) _horiz += _dist;
if keyboard_check( ord("A") ) _horiz -= _dist;
if keyboard_check( ord("W") ) _vert -= _dist;
if keyboard_check( ord("S") ) _vert += _dist;


if (_horiz != 0 && _vert != 0) // player is moving diagonally
{
	// Used pythaogrean theorem to get the actual distance travelled for x and y
	//hypotenuse = _dist, and x and y having the same length
	// This fixes the movement speed when player moves diagonally
	_dist = sqrt(power(_dist, 2)/2); 
	
	if _horiz < 0 x -= _dist; // go left
	else x += _dist; // go right
	
	if _vert < 0 y -= _dist; // go up
	else y += _dist; // go down
}
else // player is moving straight (up, down, left, or right exclusive)
{
	x += _horiz;
	y += _vert;
}

