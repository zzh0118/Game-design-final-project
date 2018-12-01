/// @description Insert description here
// You can write your code in this editor

if (!fetch){
	
	draw_set_font( fnt_dialog );
	
	var x_offset = 0;
	if (dialog_avatar != ""){
		x_offset = -32;
	} else {
		x_offset = 32;
	}
	
	var x_pos = camera_get_view_width (view_camera[0]) / 2 - 96 - x_offset;
	var y_pos = camera_get_view_height(view_camera[0]) - 100;
	
	
	//draw dialog box
	draw_set_halign(fa_left);
	draw_sprite(spr_dialog, 0 , x_pos, y_pos);
	draw_text_ext (x_pos + 10, y_pos + 6, string_hash_to_newline(dialog_output), 16,175);
	
	show_debug_message("dialog_avatar is " + string(dialog_avatar));
	if (dialog_avatar != ""){
		if (dialog_left_facing){
				draw_sprite(spr_portrait,1,x_pos - 61, y_pos);
				draw_sprite(dialog_avatar,1, x_pos - 61, y_pos + 4);
		} else {
			draw_sprite(spr_portrait,1,x_pos + 186 , y_pos);
			draw_sprite_ext(dialog_avatar,1,x_pos + 248, y_pos + 4, -1, 1, 0, c_white,1);
		} 
	}
	
	
}

