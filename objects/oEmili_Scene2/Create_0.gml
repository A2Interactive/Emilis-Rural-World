enum DIR_2
{
	RIGHT,
	UP,
	LEFT,
	DOWN
}

idle_sprites = [];
idle_sprites[DIR_2.RIGHT] = sEmiliIdleR;
idle_sprites[DIR_2.UP] = sEmiliIdleU;
idle_sprites[DIR_2.LEFT] = sEmiliIdleL;
idle_sprites[DIR_2.DOWN] = sEmiliIdleD;

walk_sprites = [];
walk_sprites[DIR_2.RIGHT] = sEmiliWalkR;
walk_sprites[DIR_2.UP] = sEmiliWalkU;
walk_sprites[DIR_2.LEFT] = sEmiliWalkL;
walk_sprites[DIR_2.DOWN] = sEmiliWalkD;

timer = 60 * 5;

spd = 4;
move_index = 1;

move = function() {
	switch (move_index) {
		case 1:
		y -= spd;
		sprite_index = walk_sprites[DIR_2.UP];
		/*
		timer--;
		if (timer = 0) {
			timer = 60 * 2;
			move_index = 2;
		}
		*/
		break;
	}
}