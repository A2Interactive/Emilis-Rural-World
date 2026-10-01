enum DIR_3
{
	RIGHT,
	UP,
	LEFT,
	DOWN
}

idle_sprites = [];
idle_sprites[DIR_3.RIGHT] = sEmiliIdleR;
idle_sprites[DIR_3.UP] = sEmiliIdleU;
idle_sprites[DIR_3.LEFT] = sEmiliIdleL;
idle_sprites[DIR_3.DOWN] = sEmiliIdleD;

walk_sprites = [];
walk_sprites[DIR_3.RIGHT] = sEmiliWalkR;
walk_sprites[DIR_3.UP] = sEmiliWalkU;
walk_sprites[DIR_3.LEFT] = sEmiliWalkL;
walk_sprites[DIR_3.DOWN] = sEmiliWalkD;

distracted_sprites = [];
distracted_sprites[DIR_3.RIGHT] = sEmiliDistractedR;

distracted_sprites_2 = [];
distracted_sprites_2[DIR_3.RIGHT] = sEmiliWalkR_2;

distracted_sprites_3 = [];
distracted_sprites_3[DIR_3.RIGHT] = sEmiliWalkR_3;

timer = 60 * 6;

spd = 4;
move_index = 1;

move = function() {
	switch (move_index) {
		case 1:
		x += spd;
		sprite_index = walk_sprites[DIR_3.RIGHT];
		timer--;
		if (timer = 0) {
			timer = 45;
			move_index = 2;
		}
		break;
		
		case 2:
		sprite_index = distracted_sprites_2[DIR_3.RIGHT];
		x += spd;
		timer--;
		if (timer = 0) {
			timer = 60;
			move_index = 3;
		}
		break;
		
		case 3:
		x += spd;
		sprite_index = distracted_sprites_3[DIR_3.RIGHT];
		timer--;
		if (timer = 0) {
			timer = 60 * 4.5;
			move_index = 4;
		}
		break;
		
		case 4:
		y -= spd;
		sprite_index = walk_sprites[DIR_3.UP];
		timer--;
		if (timer = 0) {
			timer = 55;
			move_index = 5;
		}
		break;
		
		case 5:
		sprite_index = idle_sprites[DIR_3.LEFT];
		timer--;
		if (timer = 0) {
			timer = 60 * 3.1;
			move_index = 6;
		}
		break;
		
		case 6:
		x -= spd;
		sprite_index = walk_sprites[DIR_3.LEFT];
		timer--;
		if (timer = 0) {
			timer = 60 * 3;
			move_index = 7;
		}
		break;
		
		case 7:
		y -= spd;
		sprite_index = walk_sprites[DIR_3.UP];
		timer--;
		if (timer = 0) {
			timer = 60 * 3;
			move_index = 7;
		}
		break;
	}
}