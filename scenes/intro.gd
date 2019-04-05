extends Control

func _on_AnimationPlayer_animation_finished(intro_new):
	var a = File.new()
	if a.file_exists("user://GUI_dlc1.tscn"):
		get_tree().change_scene("user://GUI_dlc1.tscn")
	if not a.file_exists("user://dlc1.pck"):
		background_load.load_scene("res://scenes/GUI.tscn")
	