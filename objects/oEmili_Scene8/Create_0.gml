enum DIR_8
{
	RIGHT,
	UP,
	LEFT,
	DOWN
}

idle_sprites = [];
idle_sprites[DIR_8.RIGHT] = sEmiliIdleR;
idle_sprites[DIR_8.UP] = sEmiliIdleU;
idle_sprites[DIR_8.LEFT] = sEmiliIdleL;
idle_sprites[DIR_8.DOWN] = sEmiliIdleD;

walk_sprites = [];
walk_sprites[DIR_8.RIGHT] = sEmiliWalkR;
walk_sprites[DIR_8.UP] = sEmiliWalkU;
walk_sprites[DIR_8.LEFT] = sEmiliWalkL;
walk_sprites[DIR_8.DOWN] = sEmiliWalkD;

distracted_sprites = [];
distracted_sprites[DIR_8.DOWN] = sEmiliIdleD_2;

sleeping_sprites = [];
sleeping_sprites[DIR_8.UP] = sEmiliSleeping;

watch_sprites = [];
watch_sprites[DIR_8.DOWN] = sEmiliWatchD;

blushing_sprites = [];
blushing_sprites[DIR_8.DOWN] = sEmiliBlushingD_2;

timer = 60 * 2.6;

spd = 4;
move_index = 1;

move = function() {
	switch (move_index) {
		case 1:
		y -= spd;
		timer--;
		sprite_index = walk_sprites[DIR_8.UP]
		if (timer = 0) {
			timer = 60 * 6;
			move_index = 2;
		}
		break;
		
		case 2:
		x += spd;
		timer--;
		sprite_index = walk_sprites[DIR_8.RIGHT]
		if (timer = 0) {
			timer = 45;
			move_index = 3;
		}
		break;
		
		case 3:
		y -= spd;
		timer--;
		sprite_index = walk_sprites[DIR_8.UP]
		if (timer = 0) {
			timer = 60 * 4.5;
			move_index = 4;
		}
		break;
		
		case 4:
		timer--;
		sprite_index = idle_sprites[DIR_8.UP]
		if (timer = 0) {
			move_index = 5;
		}
		break;
		
		case 5:
		y += spd;
		sprite_index = walk_sprites[DIR_8.DOWN]
		break;
	}
}