enum DIR_5
{
	RIGHT,
	UP,
	LEFT,
	DOWN
}

idle_sprites = [];
idle_sprites[DIR_5.RIGHT] = sEmiliIdleR;
idle_sprites[DIR_5.UP] = sEmiliIdleU;
idle_sprites[DIR_5.LEFT] = sEmiliIdleL;
idle_sprites[DIR_5.DOWN] = sEmiliIdleD;

walk_sprites = [];
walk_sprites[DIR_5.RIGHT] = sEmiliWalkR;
walk_sprites[DIR_5.UP] = sEmiliWalkU;
walk_sprites[DIR_5.LEFT] = sEmiliWalkL;
walk_sprites[DIR_5.DOWN] = sEmiliWalkD;

distracted_sprites = [];
distracted_sprites[DIR_5.RIGHT] = sEmiliDistractedR;

distracted_sprites_2 = [];
distracted_sprites_2[DIR_5.RIGHT] = sEmiliWalkR_2;

distracted_sprites_3 = [];
distracted_sprites_3[DIR_5.RIGHT] = sEmiliWalkR_3;

sleeping_sprites = [];
sleeping_sprites[DIR_5.UP] = sEmiliSleeping;

watch_sprites = [];
watch_sprites[DIR_5.DOWN] = sEmiliWatchD;

timer = 60;

spd = 4;
move_index = 1;

move = function() {
	switch (move_index) {
		case 1:
		timer--;
		sprite_index = watch_sprites[DIR_5.DOWN];
		if (timer = 0) {
			timer = 60;
			move_index = 2;
		}
		break;
		
		case 2:
		timer--;
		sprite_index = idle_sprites[DIR_5.DOWN];
		if (timer = 0) {
			timer = 60 * 2.7;
			move_index = 3;
		}
		break;
		
		case 3:
		x -= spd;
		timer--;
		sprite_index = walk_sprites[DIR_5.LEFT];
		if (timer = 0) {
			move_index = 4;
		}
		break;
		
		case 4:
		y += spd;
		sprite_index = walk_sprites[DIR_5.DOWN];
		break;
	}
}