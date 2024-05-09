
var _eventType = event_data[? "event_type"];
var _message = event_data[? "message"];
var _elementID = event_data[? "element_id"];

if (_eventType == "sequence event") {
	switch (_message) {
		case "SequenceEnd2":
			 global.clear=1;
			room_goto(rm_worldmap);
		break;
	}
}