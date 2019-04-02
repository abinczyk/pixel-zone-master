extends Control

func _on_AnimationPlayer_animation_finished(intro_new):
	background_load.load_scene("res://scenes/Main Menu/GUI.tscn")
