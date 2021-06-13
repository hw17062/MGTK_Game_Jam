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


function comboCounter(){
	combo++;
	alarm_set(1,180)
}

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