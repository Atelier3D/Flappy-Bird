extends Node2D

export (PackedScene) var obstacle
export (int) var frequence_app_obstacle


var duree = 0.0

func _physics_process(delta):
	duree+= delta
	if duree >= frequence_app_obstacle:
		duree = 0
		ajouter_obstacle()
		
		
func ajouter_obstacle():
	var obs = obstacle.instance()
	obs.initialiser($Oiseau.position.x + 500)
	add_child(obs)