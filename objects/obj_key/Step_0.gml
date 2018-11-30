/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,obj_player1)||place_meeting(x,y,obj_player2)||place_meeting(x,y,obj_player3) || place_meeting(x,y,obj_player4))
{
	with (obj_block7)
	{
		keynum1 = 1;
		}
	instance_destroy();
}