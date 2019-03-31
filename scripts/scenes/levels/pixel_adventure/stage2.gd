extends Node
signal achieve1

func ready():
	$player/ui/AnimationPlayer.play("loaded_level")
	emit_signal("achieve1")




func _on_Area2D2_body_entered(body):
	if body.name == "player":
		get_tree().change_scene("scenes/GameOver.tscn")

func _on_nextlevel_body_entered(body):
	if body.name =="player":
		get_tree().change_scene("scenes/stages/pixel_adventure/stage3_boss.tscn")

func _on_Area2D_body_entered(body):
   if body.name == "player":
    emit_signal("achieve1")