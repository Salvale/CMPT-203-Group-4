/// @description Insert description here
view_width=1920/3;
view_height=1080/3;

window_scale=2;

window_set_size(view_width*window_scale,view_height*window_scale);
alarm[0]=1;

surface_resize(application_surface,view_width*window_scale,view_height*window_scale);

cameraTarget = oPlayerPrototype;