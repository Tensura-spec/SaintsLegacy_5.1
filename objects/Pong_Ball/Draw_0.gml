draw_self();

draw_set_font(Score_Font);

draw_set_colour($FFFFFFFF & $ffffff);
var l782B3C9A_0=($FFFFFFFF >> 24);
draw_set_alpha(l782B3C9A_0 / $ff);

draw_text(270, 30,  + string(objSystemP.Player_Score));

draw_text(370, 30,  + string(AI_Score));