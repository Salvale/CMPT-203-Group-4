/// @description Insert description here
// You can write your code in this editor
stringHeight = string_height(text[0])
textAmt = array_length(text)-1
if (instance_nearest(oPlayerPrototype.x, oPlayerPrototype.y, oText) == id and distance_to_object(oPlayerPrototype) < 100) {
	if (textAmt == -1){
		return
	} 
	if (keyboard_check_pressed(vk_space)) {
		audio_play_sound(soundInteract,1,false)
		if(index == 0 and !showingText) {
			oPlayerPrototype.moveTarget.canMove = false;
			showingText = true
		} else {
			index++
		}
			
	} 
	if (index > textAmt) {
			index = 0;
			showingText = false
			oPlayerPrototype.moveTarget.canMove = true;
	} 
	if (showingText) {
	
		draw_sprite(sTextBox,0,x,y);
		draw_text_ext(x-200,y+50,text[index],stringHeight,boxWidth)
	} else if (!showingText) {
		draw_sprite(sTextPrompt,0,x,y)
	}
	
	
}




