/// @description Insert description here
// You can write your code in this editor
//user input
var key_left = keyboard_check(vk_left)
var key_right = keyboard_check(vk_right)
var key_right_released = keyboard_check_released(vk_right)
var key_left_released = keyboard_check_released(vk_left)
var key_jump = keyboard_check(vk_space)
var key_shoot = keyboard_check(ord("Z"))
var vx = camera_get_view_x(view_camera[0]);

var vy = camera_get_view_y(view_camera[0]);
var left_n1_right_p1

var canJump = 0
if (place_meeting(x,y+1,obj_block1) || place_meeting(x, y + 1,obj_block4)){
	canJump = 1
}


left_n1_right_p1 = key_right - key_left;

//draw walk sprite
if (key_left){
	sprite_index = spr_player_walk;
	image_xscale = -1;
}
else if (key_left_released){
	sprite_index = spr_player;
	image_xscale = -1;
}

if (key_right){
	sprite_index = spr_player_walk;
	image_xscale = 1;
}
else if (key_right_released){
	sprite_index = spr_player;
	image_xscale = 1;
}


//Horizontal movement
var xs = left_n1_right_p1 * WALKSP;
if (place_meeting(x + xs,y,obj_block1) || place_meeting(x + xs,y,obj_block4)){
	while( !place_meeting(x + left_n1_right_p1, y, obj_block1) && !place_meeting(x + left_n1_right_p1, y, obj_block4)){
		x = x + left_n1_right_p1;
	}
	xs = 0
}
x = x + xs;
if ((x + xs) >= 300 && (x + xs) < 2650){
	obj_pause.x = obj_pause.x + xs;
	obj_timer.x = obj_timer.x + xs;
	camera_set_view_pos(view_camera[0],vx + xs,vy);
}

if (canJump && key_jump){
	ys = JUMPSP
}

//Gravity
ys = ys + gr;
if (place_meeting(x, y + ys, obj_block1) || place_meeting(x, y + ys, obj_block4)){
	while (!place_meeting( x, y + sign(ys), obj_block1) && !place_meeting(x, y + sign(ys), obj_block4)){
		y = y + sign(ys);
	}
	ys = 0;
}
y = y + ys;


//Goal
if (place_meeting(x, y + ys, obj_block6)){
	room_goto_next();
}

if (place_meeting(x, y + ys, obj_block5) || place_meeting(x , y + ys, obj_block3)){
	room_goto(rm_lose);
}

//shoot
if (key_shoot && cooldown < 0){
	show_debug_message(key_shoot);
	instance_create_layer(x,y - 10,layer,obj_bullet);
	cooldown = 20;
}
cooldown--;

show_debug_message(cooldown);
