extends MeshInstance3D


var rng = RandomNumberGenerator.new()
var roll = 0
@export var ui : CanvasLayer

var rolls = [
	Vector3(-0.123856, -0.7, 0),
	Vector3(0, 4.01752, 0.117129),
	Vector3(-0.150088, -5.418769, 4.447003),
	Vector3(0.087665, 7.16221, 1.363888),
	Vector3(0.204197, 8.783293, 1.562659),
	Vector3(4.710738, 1.030179, -0.104536)
]

func _process(delta):
	if Input.is_action_just_pressed("roll"):
		roll = rng.randi_range(1, 6)
		ui.get_node("Label").text = "You rolled a " + str(roll) + ""
	
	rotation = rotation.lerp(rolls[roll-1], 0.5)
