enum DIR_7
{
	RIGHT,
	UP,
	LEFT,
	DOWN
}

idle_sprites = [];
idle_sprites[DIR_7.RIGHT] = sEmiliIdleR;
idle_sprites[DIR_7.UP] = sEmiliIdleU;
idle_sprites[DIR_7.LEFT] = sEmiliIdleL;
idle_sprites[DIR_7.DOWN] = sEmiliIdleD;

walk_sprites = [];
walk_sprites[DIR_7.RIGHT] = sEmiliWalkR;
walk_sprites[DIR_7.UP] = sEmiliWalkU;
walk_sprites[DIR_7.LEFT] = sEmiliWalkL;
walk_sprites[DIR_7.DOWN] = sEmiliWalkD;

distracted_sprites = [];
distracted_sprites[DIR_7.DOWN] = sEmiliIdleD_2;

sleeping_sprites = [];
sleeping_sprites[DIR_7.UP] = sEmiliSleeping;

watch_sprites = [];
watch_sprites[DIR_7.DOWN] = sEmiliWatchD;

blushing_sprites = [];
blushing_sprites[DIR_7.DOWN] = sEmiliBlushingD_2;

timer = 60 * 9.5;

spd = 4;
move_index = 1;

move = function() {
	switch (move_index) {
		case 1:
		x -= spd;
		timer--;
		sprite_index = walk_sprites[DIR_7.LEFT];
		if (timer = 0) {
			timer = 60 * 1.3;
			move_index = 2;
		}
		break;
		
		case 2:
		y += spd;
		timer--;
		sprite_index = walk_sprites[DIR_7.DOWN];
		if (timer = 0) {
			timer = 60 * 2.4;
			move_index = 3;
		}
		break;
		
		case 3:
		x += spd;
		timer--;
		sprite_index = walk_sprites[DIR_7.RIGHT];
		if (timer = 0) {
			timer = 60 * 1.5;
			move_index = 4;
		}
		break;
		
		case 4:
		timer--;
		sprite_index = idle_sprites[DIR_7.DOWN];
		if (timer = 0) {
			timer = 60 * 4.5;
			move_index = 5;
		}
		break;
		
		case 5:
		timer--;
		sprite_index = distracted_sprites[DIR_7.DOWN];
		if (timer = 0) {
			move_index = 6;
		}
		break;
		
		case 6:
		sprite_index = blushing_sprites[DIR_7.DOWN];
		break;
	}
}