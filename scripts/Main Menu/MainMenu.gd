extends Control
func _on_Play_pressed():
	var a = File.new()
	if a.file_exists("user://dlc_3/stage.tscn"):
		background_load.load_scene("user://dlc_3/char.tscn")
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
	var dlc = File.new()
	if dlc.file_exists("user://dlc_2/Drum & Bass.ogg"):
		$TextureRect/WindowDialog/ItemList.add_item("Custom Music")
	if c.file_exists("user://dlc_1/stage_dlc1.tscn"):
		$TextureRect/WindowDialog/ItemList.add_item("Power Up!")
	if c.file_exists("user://report_bug/BugReporter.tscn"):
		$TextureRect/WindowDialog/ItemList.add_item("Report a Bug")
	if c.file_exists("user://dlc_3/stage.tscn"):
		$TextureRect/WindowDialog/ItemList.add_item("Character Selection")
func _on_Play7_pressed():
	OS.shell_open("mailto:karoltomaszewskimusic@gmail.com")
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


func _on_Continue_pressed():
	var con = File.new()
	if not con.file_exists("user://1.save") and not con.file_exists("user://2.save") and not con.file_exists("user://3.save") and not con.file_exists("user://4.save"):
		return
	if not con.file_exists("user://1_dlc1.save") and not con.file_exists("user://2_dlc1.save") and not con.file_exists("user://3_dlc1.save") and not con.file_exists("user://4_dlc1.save") and con.file_exists("user://dlc_1/stage_dlc1.tscn"):
		return
	if con.file_exists("user://1.save") and not con.file_exists("user://2.save") and not con.file_exists("user://3.save") and not con.file_exists("user://4.save"):
		background_load.load_scene("scenes/stages/pixel_adventure/stage2.tscn")
	if con.file_exists("user://2.save") and con.file_exists("user://1.save") and not con.file_exists("user://3.save") and not con.file_exists("user://4.save"):
		background_load.load_scene("scenes/stages/ice_cap_adventure/ice_01.tscn")
	if con.file_exists("user://3.save") and con.file_exists("user://1.save") and con.file_exists("user://3.save") and not con.file_exists("user://4.save"):
		background_load.load_scene("scenes/stages/ice_cap_adventure/ice_02.tscn")
	if con.file_exists("user://4.save") and con.file_exists("user://3.save") and con.file_exists("user://1.save") and con.file_exists("user://3.save"):
		background_load.load_scene("scenes/stages/ice_cap_adventure/ice_03.tscn")
	if con.file_exists("user://1_dlc1.save") and not con.file_exists("user://2_dlc1.save") and not con.file_exists("user://3_dlc1.save") and not con.file_exists("user://4_dlc1.save") and con.file_exists("user://dlc_1/stage_dlc1.tscn"):
		background_load.load_scene("user://dlc_1/stage2_dlc1.tscn")
	if con.file_exists("user://2_dlc1.save") and con.file_exists("user://1_dlc1.save") and not con.file_exists("user://3_dlc1.save") and not con.file_exists("user://4_dlc1.save") and con.file_exists("user://dlc_1/stage_dlc1.tscn"):
		background_load.load_scene("user://dlc_1/ice_01_dlc1.tscn")
	if con.file_exists("user://3_dlc1.save") and con.file_exists("user://1_dlc1.save") and con.file_exists("user://3_dlc1.save") and not con.file_exists("user://4_dlc1.save") and con.file_exists("user://dlc_1/stage_dlc1.tscn"):
		background_load.load_scene("user://dlc_1/ice_02_dlc1.tscn")
	if con.file_exists("user://4_dlc1.save") and con.file_exists("user://3_dlc1.save") and con.file_exists("user://1_dlc1.save") and con.file_exists("user://3_dlc1.save") and con.file_exists("user://dlc_1/stage_dlc1.tscn"):
		background_load.load_scene("user://dlc_1/ice_03_dlc1.tscn")
