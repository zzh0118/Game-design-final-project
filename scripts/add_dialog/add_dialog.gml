
///capture input
var dialog_part = []; 
var dialog_text = argument[0];
var dialog_continue = argument[1]; 
var dialog_avatar = argument[2]; 
var dialog_left_facing = argument[3];
/*if (argument_count >= 1){ 
	dialog_text = argument[0];
}

if (argument_count >= 2) {
	dialog_continue = argument[1];
}

if (argument_count >= 3) {
	dialog_avatar = argument[2];
}
if (argument_count >= 4) {
	dialog_left_facing = argument[3];
}*/

dialog_part[0] = dialog_text; // text to dispaly
dialog_part[1] = dialog_continue //continue
dialog_part[2] = dialog_avatar // image to display
dialog_part[3] = dialog_left_facing; // should the avatar be displayed on the left or the right
dialog[dialog_line] = dialog_part
dialog_line += 1;

return dialog_line - 1;