extends Control
func _on_Play_pressed():
	background_load.load_scene("res://scenes/stages/pixel_adventure/stage.tscn")

func _on_Quit_pressed():
	get_tree().quit()