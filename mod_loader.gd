extends Node

func _ready():
	ProjectSettings.load_resource_pack(ProjectSettings.globalize_path("user://"))
	var data = preload("user://mod.tscn").instance()
	add_child(data)