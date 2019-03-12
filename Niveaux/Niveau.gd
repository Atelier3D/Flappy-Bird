extends Node2D

export (PackedScene) var tronc
export (int) var frequence_app_tronc

var duree = 0.0

func _physics_process(delta):
	duree+= delta
	if duree >= frequence_app_tronc:
		duree = 0
		ajouter_tronc()
		
		
func ajouter_tronc():
	var t = tronc.instance()
	t.initialiser($Oiseau.position.x + 500)
	add_child(t)