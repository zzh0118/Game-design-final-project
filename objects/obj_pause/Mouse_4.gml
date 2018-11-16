/// @description Toogle gamePaused
if (gamePaused == 0)
{
	instance_deactivate_all(true);
	gamePaused = 1;
	//instance_create_depth(obj_pause.x - 700,obj_pause.y - 300,0,obj_PauseMenu);
	instance_create_depth(obj_pause.x - 700,obj_pause.y - 300,-1,obj_restart);
	instance_create_depth(obj_pause.x - 500,obj_pause.y - 300,-1,obj_quit);
}else{
	//instance_destroy(obj_PauseMenu);
	instance_destroy(obj_restart);
	instance_destroy(obj_quit);
	instance_activate_all();
	
	gamePaused = 0;
}
