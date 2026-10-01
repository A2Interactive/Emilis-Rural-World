enum DIR_9
{
	RIGHT,
	UP,
	LEFT,
	DOWN
}

idle_sprites = [];
idle_sprites[DIR_9.RIGHT] = sEmiliIdleR;
idle_sprites[DIR_9.UP] = sEmiliIdleU;
idle_sprites[DIR_9.LEFT] = sEmiliIdleL;
idle_sprites[DIR_9.DOWN] = sEmiliIdleD;

walk_sprites = [];
walk_sprites[DIR_9.RIGHT] = sEmiliWalkR;
walk_sprites[DIR_9.UP] = sEmiliWalkU;
walk_sprites[DIR_9.LEFT] = sEmiliWalkL;
walk_sprites[DIR_9.DOWN] = sEmiliWalkD;

distracted_sprites = [];
distracted_sprites[DIR_9.DOWN] = sEmiliIdleD_2;

sleeping_sprites = [];
sleeping_sprites[DIR_9.UP] = sEmiliSleeping;

watch_sprites = [];
watch_sprites[DIR_9.DOWN] = sEmiliWatchD;

blushing_sprites = [];
blushing_sprites[DIR_9.DOWN] = sEmiliBlushingD_2;

timer = 60 * 2.6;

spd = 4;
move_index = 1;

move = function() {
	switch (move_index) {
		case 1:
		x += spd;
		sprite_index = walk_sprites[DIR_9.RIGHT]
		break;
	}
}