enum DIR_4
{
	RIGHT,
	UP,
	LEFT,
	DOWN
}

idle_sprites = [];
idle_sprites[DIR_4.RIGHT] = sEmiliIdleR;
idle_sprites[DIR_4.UP] = sEmiliIdleU;
idle_sprites[DIR_4.LEFT] = sEmiliIdleL;
idle_sprites[DIR_4.DOWN] = sEmiliIdleD;

walk_sprites = [];
walk_sprites[DIR_4.RIGHT] = sEmiliWalkR;
walk_sprites[DIR_4.UP] = sEmiliWalkU;
walk_sprites[DIR_4.LEFT] = sEmiliWalkL;
walk_sprites[DIR_4.DOWN] = sEmiliWalkD;

distracted_sprites = [];
distracted_sprites[DIR_4.RIGHT] = sEmiliDistractedR;

distracted_sprites_2 = [];
distracted_sprites_2[DIR_4.RIGHT] = sEmiliWalkR_2;

distracted_sprites_3 = [];
distracted_sprites_3[DIR_4.RIGHT] = sEmiliWalkR_3;

sleeping_sprites = [];
sleeping_sprites[DIR_4.UP] = sEmiliSleeping;

timer = 60 * 2.8;

spd = 4;
move_index = 1;

move = function() {
	switch (move_index) {
		case 1:
		y -= spd;
		sprite_index = walk_sprites[DIR_4.UP];
		timer--;
		if (timer = 0) {
			timer = 30;
			move_index = 2;
		}
		break;
		
		case 2:
		sprite_index = idle_sprites[DIR_4.RIGHT];
		timer--;
		if (timer = 0) {
			timer = 30;
			move_index = 3;
		}
		break;
		
		case 3:
		x -= spd;
		sprite_index = walk_sprites[DIR_4.LEFT];
		timer--;
		if (timer = 0) {
			timer = 60;
			move_index = 4;
		}
		break;
		
		case 4:
		y -= spd;
		sprite_index = walk_sprites[DIR_4.UP];
		timer--;
		if (timer = 0) {
			timer = 45;
			move_index = 5;
			with (oLightSwitch_1) {
				instance_destroy();
				instance_create_depth(x, y, depth, sDarkScreen);
				instance_create_depth(x, y, depth, oLightSwitch_2);
			}
		}
		break;
		
		case 5:
		sprite_index = idle_sprites[DIR_4.UP];
		timer--;
		if (timer = 0) {
			timer = 60;
			move_index = 6;
		}
		break;
		
		case 6:
		y += spd;
		sprite_index = walk_sprites[DIR_4.DOWN];
		timer--;
		if (timer = 0) {
			timer = 60 * 3.2;
			move_index = 7;
		}
		break;
		
		case 7:
		x += spd;
		sprite_index = walk_sprites[DIR_4.RIGHT];
		timer--;
		if (timer = 0) {
			move_index = 8;
		}
		break;
		
		case 8:
		sprite_index = sleeping_sprites[DIR_4.UP];
		break;
	}
}