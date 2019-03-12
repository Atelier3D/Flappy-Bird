extends Node2D

export (int) var max_pos
export (int) var min_pos


func _ready():
	randomize()
	 

func initialiser(pos_x):
	var pox_y = rand_range(max_pos, min_pos)
	position = Vector2(pos_x, pox_y)


func _on_Tronc_body_entered(body):
	if body.has_method("on_touche"):
		body.on_touche()
