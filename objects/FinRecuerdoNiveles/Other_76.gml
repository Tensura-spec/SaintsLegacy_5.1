
var _eventType = event_data[? "event_type"];
var _message = event_data[? "message"];
var _elementID = event_data[? "element_id"];



if (_eventType == "sequence event" ) 
{

	switch (_message) {
		case BD:
			
			if (room == MiguelMagoneRecuerdo)
			{
			global.clearMiMa = 1;
			room_goto(rm_medallaMiMa);
			}
			else if (room == LauraVRecuerdo)
			{
			global.clearLV = 1;
			room_goto(rm_medallaLV);
			}
			else if (room == DomingoSavioRecuerdo)
			{
			global.clearDS = 1;
			room_goto(rm_medallaDS);
			}
			else if (room == CeferinoNamuncuraRecuerdo)
			{
			global.clearCN = 1;
			room_goto(rm_medallaCN);
			}
			else if (room == BartolomeGarelliRecuerdo)
			{
			global.clearBG = 1;
			room_goto(rm_medallaBG);
			}
		break;

	}
}