extends Node
func _ready():
	var dlc = File.new()
	if dlc.file_exists("user://dlc_2/Untitled Song 2.ogg"):
		$music.stop()
		$music2.play()
	if not dlc.file_exists("user://dlc_2/Untitled Song 2.ogg"):
		$music.play()
		$music2.stop()
func _on_Area2D2_body_entered(body):
	if body.name == "player":
		get_tree().change_scene("scenes/GameOver.tscn")
func save():
    var save_dict = {
        "filename" : get_filename(),
        "parent" : get_parent().get_path(),
        "coins_points" : get_node("/root/game_state").points,
        "killed_enemies_points" : get_node("/root/killed_enemies").points,
        "experience_points" : get_node("/root/game_experience").points,
		"pos_x" : get_position().x,
		"pos_y" : get_position().y,
    }
    return save_dict


func _on_nextlevel_body_entered(body):
	if body.name == "player":
		get_tree().change_scene("scenes/stages/pixel_adventure/stage2.tscn")
	var a = File.new()
	a.open("user://1.save", File.WRITE)
	var save_nodes = get_tree().get_nodes_in_group("Persist")
	for i in save_nodes:
		var node_data = i.call("save");
		a.store_line(to_json(node_data))
	a.close()
