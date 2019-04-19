extends Node2D

func _ready():
	var dlc = File.new()
	if dlc.file_exists("user://dlc_2/Drum & Bass.ogg"):
		$music.stop()
		$music2.play()
	if not dlc.file_exists("user://dlc_2/Drum & Bass.ogg"):
		$music.play()
		$music2.stop()
func _on_Area2D_body_entered(body):
	if body.name == "player":
		get_tree().change_scene("res://scenes/Credits.tscn")


func _on_Area2D2_body_entered(body):
	if body.name == "player":
		get_tree().change_scene("res://scenes/GameOver.tscn")
