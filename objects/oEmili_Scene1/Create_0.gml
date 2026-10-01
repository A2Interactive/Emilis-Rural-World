enum DIR
{
	RIGHT,
	UP,
	LEFT,
	DOWN
}

idle_sprites = [];
idle_sprites[DIR.RIGHT] = sEmiliIdleR;
idle_sprites[DIR.UP] = sEmiliIdleU;
idle_sprites[DIR.LEFT] = sEmiliIdleL;
idle_sprites[DIR.DOWN] = sEmiliIdleD;

walk_sprites = [];
walk_sprites[DIR.RIGHT] = sEmiliWalkR;
walk_sprites[DIR.UP] = sEmiliWalkU;
walk_sprites[DIR.LEFT] = sEmiliWalkL;
walk_sprites[DIR.DOWN] = sEmiliWalkD;

timer = 60 * 5;

spd = 4;
move_index = 1;

move = function() {
	switch (move_index) {
		case 1:
		y += spd;
		sprite_index = walk_sprites[DIR.DOWN];
		timer--;
		if (timer = 0) {
			timer = 60 * 2;
			move_index = 2;
		}
		break;
		
		case 2:
		x += spd;
		sprite_index = walk_sprites[DIR.RIGHT];
		timer--;
		if (timer = 0) {
			timer = 60 * 2;
			move_index = 1;
		}
	}
}