enum DIR_11
{
	RIGHT,
	UP,
	LEFT,
	DOWN
}

idle_sprites = [];
idle_sprites[DIR_11.RIGHT] = sEmiliIdleR;
idle_sprites[DIR_11.UP] = sEmiliIdleU;
idle_sprites[DIR_11.LEFT] = sEmiliIdleL;
idle_sprites[DIR_11.DOWN] = sEmiliIdleD;

walk_sprites = [];
walk_sprites[DIR_11.RIGHT] = sEmiliWalkR;
walk_sprites[DIR_11.UP] = sEmiliWalkU;
walk_sprites[DIR_11.LEFT] = sEmiliWalkL;
walk_sprites[DIR_11.DOWN] = sEmiliWalkD;

distracted_sprites = [];
distracted_sprites[DIR_11.RIGHT] = sEmiliDistractedR;

distracted_sprites_2 = [];
distracted_sprites_2[DIR_11.RIGHT] = sEmiliWalkR_2;

distracted_sprites_3 = [];
distracted_sprites_3[DIR_11.RIGHT] = sEmiliWalkR_3;

sleeping_sprites = [];
sleeping_sprites[DIR_11.UP] = sEmiliSleeping;

timer = 60 * 2.8;

spd = 4;
move_index = 1;

move = function() {
	switch (move_index) {
		case 1:
		y -= spd;
		sprite_index = walk_sprites[DIR_11.UP];
		timer--;
		if (timer = 0) {
			timer = 60 * 2.7;
			move_index = 2;
		}
		break;
		
		case 2:
		x += spd;
		sprite_index = walk_sprites[DIR_11.RIGHT];
		timer--;
		if (timer = 0) {
			move_index = 3;
		}
		break;
		
		case 3:
		sprite_index = sleeping_sprites[DIR_11.UP];
		break;
	}
}