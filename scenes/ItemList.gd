extends ItemList
func _ready():
	var achieve = File.new()
	if achieve.file_exists("user://1.save") or achieve.file_exsists("user://1_dlc.save"):
		add_item("First Level Passed")
	if achieve.file_exists("user://2.save") or achieve.file_exsists("user://2_dlc.save"):
		add_item("So much Snow!")