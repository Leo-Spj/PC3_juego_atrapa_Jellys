extends CharacterBody2D

var speed := 600
signal ganarPuntos
@onready var animated_sprite_2d = $AnimatedSprite2D

func _physics_process(delta):
	var input_vel = Input.get_axis("ui_left", "ui_right")
	var apriete_salto = Input.get_action_strength("ui_accept")

	# Movimiento horizontal
	velocity.x = input_vel * speed

	# Salto
	if apriete_salto != 0 and is_on_floor():
		velocity.y = -1000  # Fuerza de salto
	elif not is_on_floor():
		velocity.y += 40  # Gravedad simple

	move_and_slide()

	# Animaciones
	if velocity.x != 0:
		animated_sprite_2d.play("run")
	else:
		animated_sprite_2d.play("idle")

	if input_vel != 0:
		animated_sprite_2d.flip_h = input_vel < 0

func subirScore():
	$Sonido.play()
	emit_signal("ganarPuntos")
