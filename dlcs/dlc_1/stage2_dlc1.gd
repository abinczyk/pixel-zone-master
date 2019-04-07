extends Node
signal achieve1






func _on_Area2D2_body_entered(body):
	if body.name == "player":
		get_tree().change_scene("scenes/GameOver.tscn")

func _on_nextlevel_body_entered(body):
	if body.name =="player":
		get_tree().change_scene("user://dlc_1/stage3_boss_dlc1.tscn")

func _on_Area2D_body_entered(body):
   if body.name == "player":
    emit_signal("achieve1")