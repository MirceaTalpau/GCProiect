extends RigidBody2D

var jump_speed = 600;

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	connect("body_shape_entered", self, "_on_body_shape_entered")


func _on_body_shape_entered(body:Node):
	if body.is_in_group('Paddles'):
		set_axis_velocity(Vector2(0, -jump_speed));
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass;
