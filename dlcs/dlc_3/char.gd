extends Control

# Declare member variables here. Examples:
func _on_character1_pressed():
	var a = File.new()
	if a.file_exists("user://dlc_1/stage_dlc1.tscn"):
		background_load.load_scene("user://dlc_1/stage_dlc1.tscn")
	if not a.file_exists("user://dlc_1/stage_dlc1.tscn"):
		background_load.load_scene("res://scenes/stages/pixel_adventure/stage.tscn")


func _on_character2_pressed():
	var a = File.new()
	if a.file_exists("user://dlc_3/stage_dlc1.tscn"):
		background_load.load_scene("user://dlc_3/stage_dlc1.tscn")
	if not a.file_exists("user://dlc_3/stage_dlc1.tscn"):
		background_load.load_scene("user://dlc_3/stage.tscn")