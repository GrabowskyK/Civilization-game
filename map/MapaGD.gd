extends TileMap

@onready var tileMap : TileMap = $"."
var test : int = 30;
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("XD");
	
	pass # Replace with function body.

func _input(event):
#	if(Input.is_action_just_pressed("click")):
#		var xd = tileMap.local_to_map(get_global_mouse_position())
#		#tileMap.set_cell(0,xd,0,Vector2i(1,1))
#		tileMap.set_cell(0,xd,1,Vector2i(0,0))
		
