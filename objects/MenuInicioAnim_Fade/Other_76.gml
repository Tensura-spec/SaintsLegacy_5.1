
var _eventType = event_data[? "event_type"];
var _message = event_data[? "message"];
var _elementID = event_data[? "element_id"];

if (_eventType == "sequence event") {
	switch (_message) {
		case "SequenceEnd":
			room_goto_next()
		break;
	}
}