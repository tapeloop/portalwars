/// @description Insert description here



var inst = instance_place(x, y, o_Portal);
 
if (inst != noone) {
	
		var distanceFromLeft = 0; // moves with 
		var distanceFromTop = 0;
		var thicknessOfSlice = inst.x + 32 - self.x;
	   
		var movingX = inst.pair.x - thicknessOfSlice + 32;
		var xScale = 1;
		
		// in - needs work
		draw_sprite_part_ext(sprite_index, 0, thicknessOfSlice +32, distanceFromTop, 64 - thicknessOfSlice, sprite_height, x, y, xScale, 1, c_white, 1);
	 
		// out - WORKING
		draw_sprite_part_ext(sprite_index, 0, 0, 0, thicknessOfSlice, sprite_height, movingX, y, xScale, 1, c_white, 1);
		inPortal = true;
   }
   else {
	draw_self();
   }
   
if ((inst == noone) && (inPortal == true)){
	var inst2 = instance_furthest(self.x,self.y, o_Portal);
	self.x = inst2.x - 32;;
	inPortal = false;
   }