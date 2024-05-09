/// @description

draw_set_font(fntBigBlue);
draw_set_halign(fa_right);
draw_text(window_get_width() - 8, 0, "SCORE");

var zeroes = "";
for (var i = 0; i < 5 - string_length(string(score)); i++)
{
  zeroes += "0";
}

for (var i = 5 - string_length(string(score)); i < 5; i++)
{
  zeroes += " ";
}

draw_set_alpha(0.2);  
draw_text(window_get_width() - 8, 40, zeroes);

draw_set_alpha(1);
draw_text(window_get_width() - 8, 40, score);

draw_text(window_get_width() - 8, 120, "NEXT");

if (global.IsGameOver)
{
  var text = "GAME OVER M8!";
  
  //var hw = window_get_width() / 2;
  //var hh = window_get_height() / 2;
  
  //scr_draw_textbox(hw, hh, text);
  scr_draw_textbox(LeftmostSquare + 14 * BlockSize, UpmostSquare + 20 * BlockSize, text);
  
  draw_set_halign(fa_right);
  draw_text_transformed(window_get_width() + 8, window_get_height() - 64, "Hit 'Enter' to restart", 0.5, 0.5, 0);
}