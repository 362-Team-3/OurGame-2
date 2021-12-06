Health = 20;
speed = random_range(2,6)
move_towards_point(AsteroidBossPlayer.x, AsteroidBossPlayer.y, speed)
audio_play_sound(asteroidExploding, 500, false);