extends Area2D

var speed = 500
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	translate(Vector2.RIGHT * speed * delta)
	
	
	
	
