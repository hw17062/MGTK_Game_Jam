/// @description Insert description here
// You can write your code in this editor
global.recall_cooldown = false;
paused = false;
paused_sprite = noone;

/*
var _dwidth = display_get_width();
var _dheight = display_get_height();
var _xpos = (_dwidth / 2) - 480;
var _ypos = (_dheight / 2) - 270;
window_set_rectangle(10, 10, _dwidth, _dheight);
*/
global.broken = false;
chain_break = 0  //variable indicating momentat which chain is broken, not the state of the chain

combo = 0;
time = 0
cheer_sound = 0

alarm_set(4, 540)

line = 1
next = 1
no_replay = 0

function comboCounter(){
	combo++;
	alarm_set(1,180)
	if combo - 8 > score_Large_Combo{
		score_Large_Combo = combo - 5
	}
}

// ----------------------------------------------------------------------------
/*								Title System
*
Titles and stats:

Large Combos: Skilled, Tenacious, Powerful                  ------> Champion

High Accuracy: Eagle-Eyed, Dextrous, Confident				------> Hunter

Long Time Spent with Pillar: Defensive, Meek, Fortified		-------> Tank

High Bounce accuracy: Tactical, Cunning, Calculating		--------> Mastermind

Fast Clear time: Efficient, Formidable, Merciless           -------> Gladiator

Long Time Disconnected: Daring, Arrogant, Audacious			-------> Daredevil

"", Very, Really, Extremely, Unparalleledly, Title

*
*
*
*/

// List of possible title & modifiers
lst_Large_Combo_Titles = ds_list_create()
lst_High_Accuracy_Titles = ds_list_create()
lst_Time_With_Pillar_Titles = ds_list_create()
lst_Bounce_Titles = ds_list_create()
lst_Clear_Time_Titles = ds_list_create()
lst_Disconnected_Titles = ds_list_create()
lst_Modifiers  = ds_list_create()

ds_list_add(lst_Large_Combo_Titles,"Skilled", "Tenacious", "Powerful" )
ds_list_add(lst_High_Accuracy_Titles, "Eagle-Eyed", "Dextrous", "Confident")
ds_list_add(lst_Time_With_Pillar_Titles, "Defensive", "Meek", "Fortified")
ds_list_add(lst_Bounce_Titles, "Tactical", "Cunning", "Calculating")
ds_list_add(lst_Clear_Time_Titles,"Efficient", "Formidable", "Merciless")
ds_list_add(lst_Disconnected_Titles, "Daring", "Arrogant", "Audacious")
ds_list_add(lst_Modifiers, "", "Very", "Really", "Extremely", "Unparalleledly")


function rollTitles(){
	title_Large_Combo		= lst_Large_Combo_Titles[| irandom(2)]
	title_High_Accuracy		= lst_High_Accuracy_Titles[| irandom(2)]
	title_Time_With_Pillar	= lst_Time_With_Pillar_Titles[| irandom(2)]
	title_Bounce			= lst_Bounce_Titles[| irandom(2)]
	title_Clear_Time		= lst_Clear_Time_Titles[| irandom(2)]
	title_Disconnected		= lst_Disconnected_Titles[| irandom(2)]
}
// Vars to hold title
legacy_title = "pleb"
gain_legacy = false
title = "Pleb"

title_Large_Combo		= lst_Large_Combo_Titles[| irandom(2)]
title_High_Accuracy		= lst_High_Accuracy_Titles[| irandom(2)]
title_Time_With_Pillar	= lst_Time_With_Pillar_Titles[| irandom(2)]
title_Bounce			= lst_Bounce_Titles[| irandom(2)]
title_Clear_Time		= lst_Clear_Time_Titles[| irandom(2)]
title_Disconnected		= lst_Disconnected_Titles[| irandom(2)]

//var to hold level of each title

mod_Large_Combo			= -1
mod_High_Accuracy		= -1
mod_Time_With_Pillar	= -1
mod_Bounce				= -1
mod_Clears				= -1
mod_Disconnected		= -1


// Vars to gather scores to determine which title to get



score_Large_Combo			= 0
score_High_Accuracy			= 0
score_Time_With_Pillar		= 0
score_Bounce				= 0
score_Clear					= 0
score_Disconnected			= 0

tit_enemies_killed = 0 


tit_throws = 0 
tit_init_hits = 0 
tit_bounce_hits = 0 

tit_timer_clear = 0
tit_timer_holding = 0;


function updateTitle(){
	title = ""
	if mod_Large_Combo >= 0 && mod_Large_Combo < 5{
		title += lst_Modifiers[|mod_Large_Combo]  + " "+ title_Large_Combo;
	} else if mod_Large_Combo == 5 && !gain_legacy{ 
		gain_legacy = true;
		gain_legacy = "Champion"
	}
	
	if mod_High_Accuracy >= 0 && mod_High_Accuracy < 5{
		title += lst_Modifiers[|mod_High_Accuracy] + " "+ title_High_Accuracy;
	} else if mod_High_Accuracy == 5 && !gain_legacy{ 
		gain_legacy = true;
		gain_legacy = "Hunter"
	}
	
	if mod_Time_With_Pillar >= 0 && mod_Time_With_Pillar < 5{
		title += lst_Modifiers[|mod_Time_With_Pillar] + " "+ title_Time_With_Pillar;
	} else if mod_Time_With_Pillar == 5 && !gain_legacy{ 
		gain_legacy = true;
		gain_legacy = "Tank"
	}
	
	if mod_Bounce >= 0 && mod_Bounce < 5{
		title += lst_Modifiers[|mod_Bounce] + " "+ title_Bounce;
	} else if mod_Bounce == 5 && !gain_legacy{ 
		gain_legacy = true;
		gain_legacy = "Mastermind"
	}
	
	if mod_Clears >= 0 && mod_Clears < 5{
		title += lst_Modifiers[|mod_Clears] + " "+ title_Clear_Time;
	} else if mod_Clears == 5 && !gain_legacy{ 
		gain_legacy = true;
		gain_legacy = "Gladiator"
	}
	
	if mod_Disconnected >= 0 && mod_Disconnected < 5{
		title += lst_Modifiers[|mod_Clears] + " "+ title_Disconnected;
	} else if mod_Disconnected == 5 && !gain_legacy{ 
		gain_legacy = true;
		gain_legacy = "Daredevil"
	}
	
	title += " " + legacy_title
	
}

// ----------------------------------------------------------------------------

function rom_num (n) {
    var _n = is_string(n) ? n : string(n)
    
    var has_unit     = 0
    var has_ten      = 0
    var has_hundred  = 0
    var has_thousand = 0
    
    var unit, ten, hundred, thousand
    
    switch (string_length(_n)) {
        case 0:
            return ""
            break
        case 1:
            has_unit = 1
            
            ten      = ""
            hundred  = ""
            thousand = ""
            break
        case 2:
            has_unit = 1
            has_ten  = 1
            
            hundred  = ""
            thousand = ""
            break
        case 3:
            has_unit    = 1
            has_ten     = 1
            has_hundred = 1
            
            thousand = ""
            break
        case 4:
            has_unit     = 1
            has_ten      = 1
            has_hundred  = 1
            has_thousand = 1
            break
        default:
            return "MMMCMXCIX"
    }
    
    if (has_thousand) {
        var _t = real(string_char_at(_n, 1))
        switch(_t) {
            case 0:
                thousand = ""
                break
            case 1:
                thousand = "M"
                break
            case 2:
                thousand = "MM"
                break
            case 3:
                thousand = "MMM"
                break
            default:
                return "MMMCMXCIX"
        }
    }
    
    if (has_hundred) {
        var _h = real(string_char_at(_n, 1 + has_thousand))
        switch(_h) {
            case 0:
                hundred = ""
                break
            case 1:
                hundred = "C"
                break
            case 2:
                hundred = "CC"
                break
            case 3:
                hundred = "CCC"
                break
            case 4:
                hundred = "CD"
                break
            case 5:
                hundred = "D"
                break
            case 6:
                hundred = "DC"
                break
            case 7:
                hundred = "DCC"
                break
            case 8:
                hundred = "DCCC"
                break
            case 9:
                hundred = "CM"
                break
            default:
                hundred = ""
        }
    }
    
    if (has_ten) {
        var _t = real(string_char_at(_n, 1 + has_thousand + has_hundred))
        switch(_t) {
            case 0:
                ten = ""
                break
            case 1:
                ten = "X"
                break
            case 2:
                ten = "XX"
                break
            case 3:
                ten = "XXX"
                break
            case 4:
                ten = "XL"
                break
            case 5:
                ten = "L"
                break
            case 6:
                ten = "LX"
                break
            case 7:
                ten = "LXX"
                break
            case 8:
                ten = "LXXX"
                break
            case 9:
                ten = "XC"
                break
            default:
                ten = ""
        }
    }
    
    if (has_unit) {
        var _t = real(string_char_at(_n, 1 + has_thousand + has_hundred + has_ten))
        switch(_t) {
            case 0:
                unit = ""
                break
            case 1:
                unit = "I"
                break
            case 2:
                unit = "II"
                break
            case 3:
                unit = "III"
                break
            case 4:
                unit = "IV"
                break
            case 5:
                unit = "V"
                break
            case 6:
                unit = "VI"
                break
            case 7:
                unit = "VII"
                break
            case 8:
                unit = "VIII"
                break
            case 9:
                unit = "IX"
                break
            default:
                unit = ""
        }
    }
    
    return thousand + hundred + ten + unit
}