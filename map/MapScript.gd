extends Node2D

@onready var tileMap : TileMap = $MapaGD
@onready var popupMap = $PopupMenu
const Enums = preload("res://map/EnumsPopup.gd") #Tutaj znajdują sie enumy do popupa
var mouse_positon

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _process(delta: float) -> void:
	pass
	
func _input(event):  
	if(event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_RIGHT):
		
		mouse_positon = get_global_mouse_position()
		var position = tileMap.local_to_map(Vector2(mouse_positon.x,mouse_positon.y))
		var xd = tileMap.get_cell_atlas_coords(0,Vector2i(position.x,position.y))
		print(tileMap.get_cell_atlas_coords(0,Vector2i(position.x,position.y)))
		if(tileMap.get_cell_atlas_coords(0,Vector2i(position.x,position.y)) == Vector2i(0,0)): #water
			popupMap.clear()
			popupMap.reset_size()
			popupMap.add_item("Create fish", Enums.popUpsWater.CREATE_FISH)
			popupMap.add_item("Create ship", Enums.popUpsWater.Create_ship)
			popupMap.add_item("Sey Hi", Enums.popUpsWater.sey_Hi)
		elif(tileMap.get_cell_atlas_coords(0,Vector2i(position.x,position.y)) == Vector2i(0,1)): #desert
			popupMap.clear()
			popupMap.reset_size()
			popupMap.add_item("Create desert", Enums.popUpsDesert.CREATE_DESERT)
			popupMap.add_item("Exit", Enums.popUpsDesert.Exit)
		elif(tileMap.get_cell_atlas_coords(0,Vector2i(position.x,position.y)) == Vector2i(1,0)): #forest
			popupMap.clear()
			popupMap.reset_size()
			popupMap.add_item("Create farm", Enums.popUpsGrass.CREATE_FARM)
			popupMap.add_item("Create wheat", Enums.popUpsGrass.CREATE_WHEAT)
			popupMap.add_item("Create fill", Enums.popUpsGrass.Fill)
		elif(tileMap.get_cell_atlas_coords(0,Vector2i(position.x,position.y)) == Vector2i(1,1)): #grass
			popupMap.clear()
			popupMap.reset_size()
			popupMap.add_item("Create woods", Enums.popUpsForest.CREATE_WOOD)
			popupMap.add_item("Exit", Enums.popUpsForest.Exit)
		else:
			popupMap.clear() 
			
		popupMap.popup(Rect2(mouse_positon.x,mouse_positon.y,popupMap.size.x,popupMap.size.y))

