enum DIR_6
{
	RIGHT,
	UP,
	LEFT,
	DOWN
}

idle_sprites = [];
idle_sprites[DIR_6.RIGHT] = sEmiliIdleR;
idle_sprites[DIR_6.UP] = sEmiliIdleU;
idle_sprites[DIR_6.LEFT] = sEmiliIdleL;
idle_sprites[DIR_6.DOWN] = sEmiliIdleD;

walk_sprites = [];
walk_sprites[DIR_6.RIGHT] = sEmiliWalkR;
walk_sprites[DIR_6.UP] = sEmiliWalkU;
walk_sprites[DIR_6.LEFT] = sEmiliWalkL;
walk_sprites[DIR_6.DOWN] = sEmiliWalkD;

distracted_sprites = [];
distracted_sprites[DIR_6.RIGHT] = sEmiliDistractedR;

distracted_sprites_2 = [];
distracted_sprites_2[DIR_6.RIGHT] = sEmiliWalkR_2;

distracted_sprites_3 = [];
distracted_sprites_3[DIR_6.RIGHT] = sEmiliWalkR_3;

sleeping_sprites = [];
sleeping_sprites[DIR_6.UP] = sEmiliSleeping;

watch_sprites = [];
watch_sprites[DIR_6.DOWN] = sEmiliWatchD;

timer = 60 * 2;

spd = 4;
move_index = 1;

move = function() {
	switch (move_index) {
		case 1:
		y += spd;
		timer--;
		sprite_index = walk_sprites[DIR_6.DOWN];
		if (timer = 0) {
			timer = 60;
			move_index = 2;
		}
		break;
		
		case 2:
		x -= spd;
		sprite_index = walk_sprites[DIR_6.LEFT];
		break;
	}
}