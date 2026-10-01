timerAmount = 130.3;
timer = timerAmount;

metronome_is_playing = false;
metronome_movement = function() {
	timer--;
	if (!metronome_is_playing) {
		audio_play_sound(metronomesound, 3, false);
		metronome_is_playing = true;
	}
	
	if (timer <= 0) {
		timer = timerAmount;
		metronome_is_playing = false
	}
}