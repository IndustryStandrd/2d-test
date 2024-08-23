extends Area2D

#Tile Size should match the size our the tiles used
var tile_size = 16
var inputs = {"Right": Vector2.RIGHT,
"Left": Vector2.LEFT, 
"Up": Vector2.UP,
"Down": Vector2.DOWN}

func _ready():
	position = position.snapped(Vector2.ONE * tile_size)
	position += Vector2.ONE * tile_size/2

func _unhandled_input(event):
	for dir in inputs.keys():
		if event.is_action_pressed(dir):
			move(dir)

func move(dir):
	position += inputs[dir] * tile_size
