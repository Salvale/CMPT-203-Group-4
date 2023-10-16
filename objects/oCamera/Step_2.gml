/// @description Insert description here
// You can write your code in this editor
#macro view view_camera[0]
camera_set_view_size(view,view_width,view_height);

if (cameraTarget == pointer_null) {
	cameraTarget = defaultTarget;
}

if(instance_exists(cameraTarget))
{
	var _x = clamp(cameraTarget.x-view_width/2,0,room_width-view_width);
	var _y = clamp(cameraTarget.y-view_height/2,0,room_height-view_height);

	var _cur_x = camera_get_view_x(view);
	var _cur_y = camera_get_view_y(view);
	
	var _spd =.5;
	camera_set_view_pos(view, lerp(_cur_x,_x,_spd),lerp(_cur_y,_y,_spd));
}