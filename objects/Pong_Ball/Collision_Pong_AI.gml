/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 591F6121
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "Pong_Player.y"
if(y < Pong_Player.y)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7FD314DA
	/// @DnDParent : 591F6121
	/// @DnDArgument : "expr" "115+random(40)"
	/// @DnDArgument : "var" "direction"
	direction = 115+random(40);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7175768A
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4E0C9B9F
	/// @DnDParent : 7175768A
	/// @DnDArgument : "expr" "205+random(40)"
	/// @DnDArgument : "var" "direction"
	direction = 205+random(40);
}