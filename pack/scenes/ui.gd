extends CanvasLayer

class_name UI

@onready var center_container = $MarginContainer/CenterContainer
@onready var life_count_label = %LifeCountLabel
@onready var game_score_label = %GameScoreLabel
@onready var game_label = %GameLabel


func set_lifes(lifes):
	life_count_label.text = "%d Nyawa" % lifes
	if lifes == 0: 
		game_lost()

func set_score(score):
	game_score_label.text = "SKOR: %d" % score

func game_lost():
	game_label.text = "MAMPUS LU KORUPTOR"
	center_container.show()

func game_won():
	game_label.text = "OKE KAMU MENANG, TAPI KALAH SAAT UDAH DI ATAS"
	center_container.show()
