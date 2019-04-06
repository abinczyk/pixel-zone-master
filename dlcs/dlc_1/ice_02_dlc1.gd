extends Node2D


func _on_Area2D_body_entered(body):
	if body.name == "player":
		get_tree().change_scene("user://ice_03_dlc1.tscn")


func _on_Area2D2_body_entered(body):
	if body.name == "player":
		get_tree().change_scene("res://scenes/GameOver.tscn")
