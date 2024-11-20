extends Node


@onready var player = $Player
var scoreJugador := 0

func _ready() -> void:
	player.connect("ganarPuntos", subirScore)
	
func subirScore():
	scoreJugador+=1
	$score.text = str(scoreJugador)
	pass
