extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_nextlevel_body_entered(body):
	if body.name == "player":
		get_tree().change_scene("res://scenes/stages/ice_cap_adventure/ice_01.tscn")