extends Node

# Dependencies
onready var exit_button = $CenterContainer/Control/Exit_Button
onready var continue_button = $CenterContainer/Control/Continue_Button
onready var settings_button = $CenterContainer/Control/Settings_Button
onready var settings = $CenterContainer/Control/Settings

func Start():
	exit_button.connect("buttonPressed", global.game, "ExitGame")
	continue_button.Start()
	settings_button.Start()
	exit_button.Start()

func ShowMainMenu(show):
	continue_button.visible = show
	settings_button.visible = show
	exit_button.visible = show

func _on_Settings_Button_buttonPressed():
	settings.Start()
	settings.visible = true
	ShowMainMenu(false)
	settings.connect("on_back", self, "_on_Settings_back")

func _on_Continue_Button_buttonPressed():
	global.game.PauseGame(false)

func _on_Settings_back():
	ShowMainMenu(true)
	settings.disconnect("on_back", self, "_on_Settings_back")
