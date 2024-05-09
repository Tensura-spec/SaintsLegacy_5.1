if (pages != noone && textOnDisplay != pages[page]) {
	textOnDisplay += string_char_at(pages[page], string_length(textOnDisplay) + 1);
	alarm[0] = 3;
}