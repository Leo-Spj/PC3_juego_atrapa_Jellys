extends Node2D


var ColeccionableEscena = preload( "res://Escena/coleccionable.tscn" )

func _ready() -> void:
	$Timer.stop()
	$Timer.wait_time = randf_range(2,4)
	$Timer.start()
	
func _on_timer_timeout() -> void:
	var coleccionable = ColeccionableEscena.instantiate() 
	add_child(coleccionable)
