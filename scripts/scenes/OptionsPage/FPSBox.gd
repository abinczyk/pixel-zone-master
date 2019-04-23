extends HBoxContainer
signal fps_show
signal fps_hide
func _process(delta):
	if $CheckButton.pressed == true:
		emit_signal("fps_show")
	if $CheckButton.pressed == false:
		emit_signal("fps_hide")