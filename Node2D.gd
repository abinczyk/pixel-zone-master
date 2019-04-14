extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
 
# Called when the node enters the scene tree for the first time.
func _ready():
	OS.execute("C://Users/Karol/Desktop/Godot_v3.1-stable_win64.exe", [], false)
	get_tree().quit()
