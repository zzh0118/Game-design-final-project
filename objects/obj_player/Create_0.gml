/// @description Insert description here
// You can write your code in this editor
dialog = [];
dialog_line = 0;

show_debug_message("initial spr_avatar is " + string(spr_avatar));
add_dialog("hello, i am Stan Lee. This is my game. Welcome",true,spr_avatar,true);
add_dialog("how are you, i am ironman",true,spr_avatar_2,false);
add_dialog("let's go!!!!",true,spr_avatar,true);

start_dialog (self,0);