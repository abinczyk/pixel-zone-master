extends Node2D
signal achieve3

func _on_Area2D_body_entered(body):
	if body.name == "player":
		get_tree().change_scene("res://scenes/stages/ice_cap_adventure/ice_02.tscn")


func _on_Area2D2_body_entered(body):
	if body.name == "player":
		get_tree().change_scene("res://scenes/GameOver.tscn")





func _on_Area2D3_body_entered(body):
	if body.name == "player":
		emit_signal("achieve3")