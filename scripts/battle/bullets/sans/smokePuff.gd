extends Bullet

class_name smokePuff

@onready var sprite := $bone
@onready var collision := $bone/area/collision

func _init():
	curse = e_curse.none
	damage = 5
	karma = 2

func _ready():
	super._ready()
	area2d = $bone/area

func _process(delta):
	sprite.pivot_offset = sprite.size / 2
	collision.position = Vector2(sprite.size.x / 2, sprite.size.y / 2)

func _physics_process(delta):
	global_position += Vector2(x,y) * speed * delta
	sprite.rotation_degrees += rotation_speed * delta

	if(speed != 0):
		if(speed > 0):
			speed -= 0.1
		else:
			speed += 0.1

	duration_tick(delta)
	if(gravity_enabled):
		global_position.y += gravity_drag.y * delta
		gravity_drag.y += max(abs(gravity_drag.y),200) * delta * 2
		global_position.x += gravity_drag.x * delta
		rotation_degrees += gravity_drag.x * 2 * delta
