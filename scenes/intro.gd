extends Control
func _ready():
	settings.connect("window_size_changed", self, "_on_window_size_changeds")

func _on_window_size_changeds(prev, now):
	rect_size = now
	$Viewport.size = now
func _on_AnimationPlayer_animation_finished(intro_new):
	background_load.load_scene("res://scenes/Main Menu/GUI.tscn")
	