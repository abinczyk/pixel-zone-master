extends ItemList
export(String, FILE) var FILE_PATH = ""
var _dict = {}
var USER_PATH = "user://achievement.json"
func read_achievements():
	var file = File.new()
	if file.file_exists(USER_PATH):
		file.open(USER_PATH, file.READ)
		var text = file.get_as_text()
		_dict = parse_json(text)
		file.close()
	else:
		file.open(FILE_PATH, file.READ)
		var text = file.get_as_text()
		_dict = parse_json(text)
		file.close()
		write_achievements()

func write_achievements():
	var file = File.new()
	file.open(USER_PATH, file.WRITE_READ)
	file.store_string(to_json(_dict))
	file.close()

