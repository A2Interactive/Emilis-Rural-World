enum DIR_10
{
	RIGHT,
	UP,
	LEFT,
	DOWN
}

idle_sprites = [];
idle_sprites[DIR_10.RIGHT] = sEmiliIdleR;
idle_sprites[DIR_10.UP] = sEmiliIdleU;
idle_sprites[DIR_10.LEFT] = sEmiliIdleL;
idle_sprites[DIR_10.DOWN] = sEmiliIdleD;

walk_sprites = [];
walk_sprites[DIR_10.RIGHT] = sEmiliWalkR;
walk_sprites[DIR_10.UP] = sEmiliWalkU;
walk_sprites[DIR_10.LEFT] = sEmiliWalkL;
walk_sprites[DIR_10.DOWN] = sEmiliWalkD;

distracted_sprites = [];
distracted_sprites[DIR_10.DOWN] = sEmiliIdleD_2;

sleeping_sprites = [];
sleeping_sprites[DIR_10.UP] = sEmiliSleeping;

watch_sprites = [];
watch_sprites[DIR_10.DOWN] = sEmiliWatchD;

blushing_sprites = [];
blushing_sprites[DIR_10.DOWN] = sEmiliBlushingD_2;

timer = 60 * 4.7;

spd = 4;
move_index = 1;

move = function() {
	switch (move_index) {
		case 1:
		x += spd;
		timer--;
		sprite_index = walk_sprites[DIR_10.RIGHT]
		if (timer = 0) {
			timer = 60 * 1.5;
			move_index = 2;
		}
		break;
		
		case 2:
		timer--;
		sprite_index = idle_sprites[DIR_10.UP]
		if (timer = 0) {
			timer = 60 * 4;
			move_index = 3;
		}
		break;
		
		case 3:
		y -= spd;
		timer--;
		sprite_index = walk_sprites[DIR_10.UP]
		if (timer = 0) {
			timer = 60 * 4;
			move_index = 2;
		}
		break;
	}
}