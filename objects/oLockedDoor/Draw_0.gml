/// @description Insert description here
// You can write your code in this editor

draw_sprite(Sprite12,0,x,y)



if (distance_to_object(oPlayerPrototype.moveTarget) < 50 and keyboard_check_pressed(vk_space)) {
if (distance_to_object(oPlayerPrototype) != distance_to_object(oPlayerPrototype.moveTarget)) {
			instance_destroy(self)
	} else if (!showingLocked){

		showingLocked = true
	} else {
		showingLocked = false
	}
}

if (showingLocked) {
		draw_sprite(sTextBox,0,x,y);
		draw_text(x-200,y+50,"locked!")

}