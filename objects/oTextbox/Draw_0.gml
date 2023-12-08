/// @description Insert description here
// You can write your code in this editor


if (instance_nearest(oPlayerPrototype.x,oPlayerPrototype.y,oTextbox) == id and distance_to_object(oPlayerPrototype) < 100) {
	if(keyboard_check_pressed(vk_space)) {
		if (textIndex == array_length(text)-1) {
			oPlayerPrototype.canMove = true
			showingText = false
			textIndex = 0;
		} else if (showingText) {
			textIndex++;
		} else {
			oPlayerPrototype.canMove = false
			showingText = true
		}	
	} else if(showingText) {
		draw_sprite(sTextBox,0,x-200,y+50);
		stringHeight = string_height(text[textIndex]);
		draw_text_ext(x-200,y+50,text[textIndex], stringHeight, boxWidth);
	} else {
		draw_sprite(sTextPrompt,0,x,y)
	}


}


