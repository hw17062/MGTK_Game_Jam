/// @description C-C-C-C-combo
// You can write your code in this editor

tit_timer_clear++;

if !instance_exists(obj_Ball){
	tit_timer_holding++;
}

if tit_enemies_killed >= 10{
	
	accuracy = tit_throws/tit_init_hits;
	score_High_Accuracy = (accuracy *100) -70 div 5
	
	score_Bounce = tit_bounce_hits - 3
	
	score_Clear = 10 - (tit_timer_clear / room_speed) 
	score_Time_With_Pillar = (tit_timer_holding / room_speed) = 6
	
	all_scores = ds_list_create()
	
	ds_list_add(all_scores, score_Large_Combo, score_High_Accuracy,score_Time_With_Pillar, score_Bounce, score_Clear, score_Disconnected)
	
	i_high = -1;
	
	for (var i = 0; i < ds_list_size(all_scores); i++){
		if i_high == -1 && all_scores[| i] > -1{
			i_high = i
		} else if all_scores[| i] > all_scores[| i_high]{
			i_high = i
		}
	}
	
	switch(i_high){
		case -1:
			break;
		case 0:
			mod_High_Accuracy++;
			break;
		case 1:
			mod_Time_With_Pillar++;
			break;
		case 2:
			mod_Bounce++;
			break;
		case 3:
			mod_Clears++;
			break;
		case 4:
			mod_Disconnected++;
			break;
		case 5:
			mod_Modifiers++;
			break;
	}
	
	updateTitle();
	
	tit_enemies_killed = 0 


	tit_throws = 0 
	tit_init_hits = 0 
	tit_bounce_hits = 0 

	tit_timer_clear = 0
	tit_timer_holding = 0;
	
	score_Large_Combo			= 0
	score_High_Accuracy			= 0
	score_Time_With_Pillar		= 0
	score_Bounce				= 0
	score_Clear					= 0
	score_Disconnected			= 0
}