function scrOpenTexbox(text){
	objTextbox.pages = scrSplitTextIntoPages(text, global.TEXTBOX_FONT, 10, 230, 51);
	objTextbox.page = 0;
	objTextbox.alarm[0] = 3;
}