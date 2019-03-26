extends Node


func ready():
	$player/ui/AnimationPlayer.play("loaded_level")
	




func _on_Area2D2_body_entered(body):
	if body.name == "player":
		get_tree().change_scene("scenes/GameOver.tscn")

func _on_nextlevel_body_entered(body):
	if body.name =="player":
		get_tree().change_scene("scenes/stages/pixel_adventure/stage3_boss.tscn")