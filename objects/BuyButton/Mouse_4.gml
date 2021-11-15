/// @description Insert description here
// You can write your code in this editor
if (cannonUpgrade.selected) {
	global.Cannon = 1;
}

if (weaponUpgrade.selected) {
	global.gunLvl = 1;
}

audio_play_sound(SelectLevelButton, 500, false);