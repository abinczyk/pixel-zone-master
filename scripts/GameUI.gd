extends Control
var green = load("res://themes/green_theme.tres")
var grey = load("res://themes/grey_theme.tres")
var red = load("res://themes/red_theme.tres")
var yellow = load("res://themes/yellow_theme.tres")
var old = load("res://themes/2theme.tres")
var blue = load("res://themes/blue_theme.tres")
var default = load("res://themes/theme_test.tres")
func _on_Blue_pressed():
	self.set_theme(blue)
func _on_Default_pressed():
	self.set_theme(default)
func _on_Old_pressed():
	self.set_theme(old)
func _on_Grey_pressed():
	self.set_theme(grey)
func _on_Red_pressed():
	self.set_theme(red)
func _on_Green_pressed():
	self.set_theme(green)
func _on_Yellow_pressed():
	self.set_theme(yellow)
func _ready():
	$UIScaler/Menu/OptionsPage/TabContainer/Theme/VBoxContainer/Red.connect("pressed", self, "_on_Red_pressed")
	$UIScaler/Menu/OptionsPage/TabContainer/Theme/VBoxContainer/Yellow.connect("pressed", self, "_on_Yellow_pressed")
	$UIScaler/Menu/OptionsPage/TabContainer/Theme/VBoxContainer/Grey.connect("pressed", self, "_on_Grey_pressed")
	$UIScaler/Menu/OptionsPage/TabContainer/Theme/VBoxContainer/Green.connect("pressed", self, "_on_Green_pressed")
	$UIScaler/Menu/OptionsPage/TabContainer/Theme/VBoxContainer/Blue.connect("pressed", self, "_on_Blue_pressed")
	$UIScaler/Menu/OptionsPage/TabContainer/Theme/VBoxContainer/Default.connect("pressed", self, "_on_Default_pressed")
	$UIScaler/Menu/OptionsPage/TabContainer/Theme/VBoxContainer/Old.connect("pressed", self, "_on_Old_pressed")