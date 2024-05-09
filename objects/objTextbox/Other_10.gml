if (textOnDisplay != pages[page]) {
	textOnDisplay = pages[page];
	exit;
}

page += 1;
textOnDisplay = "";
alarm[0] = 3;

if (page >= array_length(pages)) {
	pages = noone;
	
	if (callback != noone) {
		script_execute_ext(callback[0], callback[1]);
		callback = noone;
	}
}