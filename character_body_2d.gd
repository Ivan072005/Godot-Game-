extends CharacterBody2D

var speed = 50

var health = 100
var damage

var dead = false
var player_in_area = false
var player

func _ready():
	dead = false

func _physics_process(delta):
	if !dead:
		$detector/CollisionShape2D.disabled = false
		if player_in_area:
			position+=(player.position-position)/ speed
			$AnimatedSprite2D.play("move")
		else:
			$AnimatedSprite2D.play("idle")
	if dead:
		$detection_area/collisionShape2D.dssabled = true
func _on_detector_body_entered(body):
	if body.has_method("player"):
		player_in_area = true
		player = body


func _on_hit_box_area_entered(area):
	if area.has_method("arrow_damage"):
		damage = 50
		take_damage(damage)

func  take_damage(damage):
	health = health- damage
	if health<= 0 and !dead:
		death()

func death():
	dead = true
	$AnimatedSprite2D.play("death")
	await get_tree().create_timer(1).timeout
	queue_free()






	



	