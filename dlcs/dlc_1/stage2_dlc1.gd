extends Node
signal achieve1






func _on_Area2D2_body_entered(body):
	if body.name == "player":
		get_tree().change_scene("scenes/GameOver.tscn")

func _on_nextlevel_body_entered(body):
	if body.name =="player":
		get_tree().change_scene("user://dlc_1/ice_01_dlc1.tscn")
	var a = File.new()
	a.open("user://2_dlc1.save", File.WRITE)
	var save_nodes = get_tree().get_nodes_in_group("Persist")
	for i in save_nodes:
		var node_data = i.call("save");
		a.store_line(to_json(node_data))
	a.close()

func _on_Area2D_body_entered(body):
   if body.name == "player":
    emit_signal("achieve1")