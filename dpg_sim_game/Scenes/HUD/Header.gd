extends Node

# Dependencies
onready var date_counter = $PanelContainer/HudLeft/DateCounter
onready var money = $MoneySystem
onready var phase_hud = $PanelContainer/HudRight/PhaseHUD

func Start():
	date_counter.Start()
	money.Start()

func StartProject():
	money.Spend(global.curProject["MoneyCost"])

var totalDays = 0
func CheckTime():
	totalDays += 1
	if date_counter.day == 1:
		money.Salary()
