extends KinematicBody2D

export (int) var vitesse = 100
export (int) var saut = 70

var mouvement = Vector2(vitesse, 0)

const GRAVITE = 50

var score = 0

func _ready():
	$Camera2D.limit_bottom = get_viewport_rect().size.y
	pass 

func _physics_process(delta):
	if Input.is_action_just_pressed("saut"):
		mouvement.y -= saut

	mouvement.y += GRAVITE * delta
	
	mouvement = move_and_slide(mouvement)
	
func on_touche():
	print ("On touche")
	$AnimationPlayer.play("mort")
	
func incrementer_score():
	score +=1
	print (score)