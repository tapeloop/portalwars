/// @description Event Loop Check
// Runs 60 times a second

jump = keyboard_check_pressed(vk_space);

if (isJumping == false){
//	hsp =  move * walksp;
}

vsp = vsp + grv;

// Groundcheck & Jump
if(place_meeting(x, y+1, o_Ground)) and jump {
	vsp  = - 3;
	isJumping = true;
}


// Horizontal Collision (place_meeting checks for collision)

if(place_meeting(x+hsp, y, o_Wall)){
	while(!place_meeting(x+sign(hsp), y, o_Wall)){
		x  = x + sign(hsp);
	}
	hsp = 0;
}

x = x + hsp;

// Vertical Collision
if(place_meeting(x, y+vsp, o_Ground)){
	while(!place_meeting(x, y+sign(vsp), o_Ground)){
		y  = y + sign(vsp);
	}
	vsp = 0;
	isJumping = false;
}
 
y = y + vsp;

//if (place_meeting(x, y, o_Portal)) {
  //  draw_sprite_ext(sprite_index, image_index, o_Portal.pair.x, o_Portal.pair.y, 1, 1, 0, image_blend, image_alpha);
//}