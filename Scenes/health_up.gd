extends Area2D
@export var speed = 150
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	translate(Vector2.LEFT * speed * delta)
