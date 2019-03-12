extends Node2D

export (int) var max_pos
export (int) var min_pos

func initialiser(pos_x):
	position = Vector2(pos_x, max_pos)


func _ready():
	pass 