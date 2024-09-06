extends Area2D

var speed = 200

const EXPLOSION = preload("res://Scenes/explosion.tscn")
const HEALTH_UP = preload("res://Scenes/health_up.tscn")
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	translate(Vector2.LEFT * speed * delta)
	position.y += sin(position.x * delta) *.4


func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("Projectile"):
		explode()
		
		
func explode():
	var explosion = EXPLOSION.instantiate()
	explosion.global_position = global_position
	add_sibling(explosion)
	queue_free()
	if randi_range(0,5)==0:
		var powerup = HEALTH_UP.instantiate()
		powerup.global_position = global_position
		add_sibling(powerup)
		
