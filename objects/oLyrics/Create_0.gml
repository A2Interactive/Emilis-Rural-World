audio = audio_play_sound(music, 2, false);

depth = -500;
lyric_text = "";

lyrics = [
    {
        time: 17.45,
        text: "It's Thursday night and I've"
    },

    {
        time: 19.63,
        text: "wandered through the streets."
    },
	
	{
        time: 21.81,
        text: "Solitude's the only way where"
    },
	
	{
        time: 24.00,
        text: "i would feel a sense of peace."
    },
	
	{
        time: 26.18,
        text: "I've left the major cities to"
    },
	
	{
        time: 28.36,
        text: "relieve the lingering trauma."
    },
	
	{
        time: 30.54,
        text: "I've since then made a new life in a"
    },
	
	{
        time: 32.72,
        text: "small town no one knew existed."
    },
	
	{
        time: 34.90,
        text: "During the morning and the night,"
    },
	
	{
        time: 37.09,
        text: "residents never left their homes."
    },
	
	{
        time: 39.27,
        text: "The town was always absent of any"
    },
	
	{
        time: 41.45,
        text: "people in the street life."
    },
	
	{
        time: 43.63,
        text: "I was the only one who was"
    },
	
	{
        time: 45.81,
        text: "willing to walk the streets."
    },
	
	{
        time: 48.00,
        text: "Always ready to get some"
    },
	
	{
        time: 50.18,
        text: "fresh air in the middle of the night."
    },
	
	{
        time: 52.36,
        text: "A day has passed and i've"
    },
	
	{
        time: 54.54,
        text: "planned another trip."
    },
	
	{
        time: 56.72,
        text: "Chilling in the park was a"
    },
	
	{
        time: 58.90,
        text: "whole other level of dreamlike."
    },
	
	{
        time: 61.09,
        text: "I've sat on the chairs in peace while"
    },
	
	{
        time: 63.27,
        text: "the sky was shining with stars."
    },
	
	{
        time: 65.45,
        text: "A place absent from"
    },
	
	{
        time: 67.63,
        text: "drama and the trauma."
    },
	
	{
        time: 69.81,
        text: "It's Friday night and i've"
    },
	
	{
        time: 72.00,
        text: "wandered through the whole park."
    },
	
	{
        time: 74.18,
        text: "Solitude's the only way where"
    },
	
	{
        time: 76.36,
        text: "i can finally rest outdoors."
    },
	
	{
        time: 78.54,
        text: "I've never felt much peace"
    },
	
	{
        time: 80.72,
        text: "more than an empty town."
    },
	
	{
        time: 82.90,
        text: "It's a breakthrough from the trauma and i've"
    },
	
	{
        time: 85.09,
        text: "learned to ignore it."
    },
	
	{
        time: 87.27,
        text: "I've focused on the things that"
    },
	
	{
        time: 89.45,
        text: "matter to me much more."
    },
	
	{
        time: 91.63,
        text: "I've moved on to things that"
    },
	
	{
        time: 93.81,
        text: "made me forget the pain."
    },
	
	{
        time: 96.00,
        text: "It's been a huge change that"
    },
	
	{
        time: 98.18,
        text: "made my life much better."
    },
	
	{
        time: 100.36,
        text: "Park trip's coming to an end,"
    },
	
	{
        time: 102.54,
        text: "and i'm going back home."
    },
	
	{
        time: 104.72,
        text: "The trip has ended and it's"
    },
	
	{
        time: 106.90,
        text: "time to take a rest."
    },
	
	{
        time: 109.09,
        text: "The day has ended in a"
    },
	
	{
        time: 111.27,
        text: "peaceful manner,"
    },
	
	{
        time: 113.45,
        text: "I've ended up home and it's my"
    },
	
	{
        time: 115.63,
        text: "time to go sleeping."
    },
	
	{
        time: 117.81,
        text: "In a place absent from"
    },
	
	{
        time: 120.00,
        text: "drama and trauma."
    },
	
	{
        time: 122.18,
        text: "Made by A2 Interactive"
    },
];

position = 0;

lyric_movement = function() {
    if (position >= array_length(lyrics)) {
        return;
    }
    
    if (audio_sound_get_track_position(audio) >= lyrics[position].time) {
        lyric_text = lyrics[position].text;
        position++;
    }
}

fade = 1;