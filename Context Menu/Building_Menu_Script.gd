extends Node2D

@onready var _pm = $"PopupMenu"
@onready var _map = $"../map"
var mouse_positon

enum PopupOptions{
	Main,
	Sawmill,
	Grass 
}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_pm.add_item("Jeden", PopupOptions.Main)
	_pm.add_item("Dwa", PopupOptions.Main)
	_pm.add_item("Trzy", PopupOptions.Main)
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _input(event):  
	if(Input.is_action_just_pressed("right_click")):
		
		mouse_positon = get_global_mouse_position()
		_pm.popup(Rect2(mouse_positon.x,mouse_positon.y,_pm.size.x,_pm.size.y))
		

