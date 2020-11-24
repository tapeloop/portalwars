/// @description Insert description here

draw_self();

inst = instance_place(x, y, o_Portal);
// draw_sprite_part(sprite, subimg, left, top, width, height, x, y);
 
 
if inst != noone {   
	
	
		// if facing left thickness of slice is inst.x - self.x
		// if facing right thickness of slice is self.x - inst.x;
	   
	   var distanceFromLeft = 0; // moves with 
	   var distanceFromTop = 0; // stays permanent
	   var thicknessOfSlice = inst.x - self.x; 
	   
	   var movingX = inst.pair.x;
	   var movingY = inst.pair.y;
	   
	   var xScale = 1;
	   
	   if (self.facing == "right") {
			xScale = -1;
			thicknessOfSlice = self.x - inst.x; 
	   }
	   
	   draw_sprite_part_ext(sprite_index, 0, distanceFromLeft, distanceFromTop, thicknessOfSlice, sprite_height, movingX, movingY, xScale, 1, c_white, 1);
   }
//if(place_meeting(self.x, self.y, o_Portal)){
//	show_debug_message("dimensions: "+string(o_Portal.pair.x) +", "+ string(o_Portal.pair.y));
	
//	draw_sprite_part(sprite_index, 0, 0, 64, 64, sprite_height, 500, 500);
//}