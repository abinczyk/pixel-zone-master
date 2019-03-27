extends Control
func _on_Play_pressed():
	get_tree().change_scene("res://scenes/stages/pixel_adventure/stage.tscn")
func _on_Quit_pressed():
	get_tree().quit()
	var player_name = get_node("CharacterSelector/LineEdit").text
var current_player = 0
signal current_player_changed
func _on_Select_pressed():
	var player_name = get_node("CharacterSelector/LineEdit").text
	if get_node("CharacterSelector/LineEdit").text == "":
		get_node("CharacterSelector/ErrorMessage").text = "Invalid name!"
		return
	if get_node("CharacterSelector/LineEdit").text == player_name:
		get_node("CharacterSelector/ErrorMessage").text == ""
		current_player = 0
		emit_signal("current_player")