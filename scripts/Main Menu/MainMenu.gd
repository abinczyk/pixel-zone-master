extends Control


func _on_window_size_changeds(prev, now):
	rect_size = now
	$Viewport.size = now
func _on_Play_pressed():
	var a = File.new()
	if a.file_exists("user://dlc_1/stage_dlc1.tscn"):
		background_load.load_scene("user://dlc_1/stage_dlc1.tscn")
	if not a.file_exists("user://dlc_1/stage_dlc1.tscn"):
		background_load.load_scene("res://scenes/stages/pixel_adventure/stage.tscn")
		
func _on_Quit_pressed():
	get_tree().quit()
func _process(delta):
	var b = File.new()
	if b.file_exists("user://report_bug/BugReporter.tscn"):
		$TextureRect/VBoxContainer/Play7.disabled = false
	if not b.file_exists("user://report_bug/BugReporter.tscn"):
		$TextureRect/VBoxContainer/Play7.disabled = true
func _ready():
	settings.connect("window_size_changed", self, "_on_window_size_changeds")
	var c = File.new()
	var d = File.new()
	if c.file_exists("user://dlc_1/stage_dlc1.tscn"):
		$TextureRect/WindowDialog/ItemList.add_item("Power Up!")
	if c.file_exists("user://report_bug/BugReporter.tscn"):
		$TextureRect/WindowDialog/ItemList.add_item("Report a Bug")
func _on_Play7_pressed():
	OS.shell_open("https://github.com/MasterPolska123/pixel-zone-master/issues")
func _on_Play6_pressed():
	$TextureRect/WindowDialog.popup_centered()

func _on_PP_pressed():
	OS.shell_open("https://masterpolska.pl.tl/Polityka--Prywatno%26%23347%3Bci.htm")

func _on_License_pressed():
	$TextureRect/WindowDialog.hide()
	$TextureRect/PixelZoneLicense.popup_centered()
	$TextureRect/MITLicense.hide()
	$TextureRect/GodotEngineLicense.hide()


func _on_GELicense_pressed():
	$TextureRect/WindowDialog.hide()
	$TextureRect/PixelZoneLicense.hide()
	$TextureRect/MITLicense.hide()
	$TextureRect/GodotEngineLicense.popup_centered()


func _on_MITLicense_pressed():
	$TextureRect/WindowDialog.hide()
	$TextureRect/PixelZoneLicense.hide()
	$TextureRect/MITLicense.popup_centered()
	$TextureRect/GodotEngineLicense.hide()


func _on_Licenses_pressed():
	$TextureRect/LicenseSelector.popup_centered()
