extends Panel
onready var tab_container = get_node("TabContainer")
func _process(delta):
	tab_container.set_tab_title(0, "KEY_CON_TAB")
	tab_container.set_tab_title(1, "KEY_LANG")
	tab_container.set_tab_title(2, "KEY_G_A")
	tab_container.set_tab_title(3, "KEY_CONTROLLER")

func _on_ApplyButton_pressed():
	hide()

func _on_Englisch_pressed():
	TranslationServer.set_locale("en")
func _on_Spanisch_pressed():
	TranslationServer.set_locale("es")
func _on_Detusch_pressed():
	TranslationServer.set_locale("de")
func _on_Polisch_pressed():
	TranslationServer.set_locale("pl")
func _on_Italiano_pressed():
	TranslationServer.set_locale("it")
func _on_Portuguese_pressed():
	TranslationServer.set_locale("pt")
func _on_French_pressed():
	TranslationServer.set_locale("fr")



func _on_Europe_langs_pressed():
	$TabContainer/Language/Europe.show()
	#$TabContainer/Language/Asia.hide()
	$TabContainer/Language/American.hide()


func _on_American_langs_pressed():
	$TabContainer/Language/Europe.hide()
	#$TabContainer/Language/Asia.hide()
	$TabContainer/Language/American.show()

func _on_USA_pressed():
	TranslationServer.set_locale("en")
