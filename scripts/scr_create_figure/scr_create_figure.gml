function scr_create_figure() {
	global.CurrentFigure = instance_create_layer(0, 0, "Instances", objFigure);
	global.NextFigure = irandom(Figures.FigLine);



}
