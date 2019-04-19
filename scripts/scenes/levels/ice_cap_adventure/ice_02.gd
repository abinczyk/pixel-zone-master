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
		get_tree().change_scene("res://scenes/stages/ice_cap_adventure/ice_03.tscn")
	var a = File.new()
	a.open("user://4.save", File.WRITE)
	var save_nodes = get_tree().get_nodes_in_group("Persist")
	for i in save_nodes:
		var node_data = i.call("save");
		a.store_line(to_json(node_data))
	a.close()


func _on_Area2D2_body_entered(body):
	if body.name == "player":
		get_tree().change_scene("res://scenes/GameOver.tscn")

