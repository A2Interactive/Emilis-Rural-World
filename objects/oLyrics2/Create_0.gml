audio = audio_play_sound(outro_music, 2, false);

depth = -500;
lyric_text = "";

lyrics = [
    {
        time: 00.00,
        text: "Music by: A2 Interactive"
    },
	
	{
        time: 05.33,
        text: "Coding by: A2 Interactive"
    },
	
	{
        time: 10.66,
        text: "Sprites by: A2 Interactive"
    },
	
	{
        time: 16.00,
        text: "Made possible by: A2 Interactive"
    },
	
	{
        time: 21.33,
        text: "Pretty much everything by: A2 Interactive"
    },
	
	{
        time: 26.66,
        text: "Made in: GameMaker"
    },
	
	{
        time: 32.00,
        text: "A2 would like to thank you for everything."
    },
	
	{
        time: 37.33,
        text: "and good luck."
    },
	
	{
        time: 42.66,
		text: "",
        assigned_room: rOutroScene2
    },
	
	{
        time: 48.00,
		text: "",
        assigned_room: rOutroScene3
    },
	
	{
        time: 53.33,
		text: "",
        assigned_room: rOutroScene4
    },
	
	{
        time: 58.66,
		text: "",
        assigned_room: rOutroScene5
    },
	
	{
        time: 64.00,
		text: "",
        assigned_room: rOutroFinal
    },
];

position = 0;

lyric_movement = function() {
    if (position >= array_length(lyrics)) {
        return;
    }
    
      if (audio_sound_get_track_position(audio) >= lyrics[position].time) {
        lyric_text = lyrics[position].text;
        var _room = lyrics[position][$ "assigned_room"]
        if(_room != undefined)
          room_goto(_room)
        position++;
    }
}

fade = 1;