extends Node

var rng = RandomNumberGenerator.new()
var roll = 0
@export var camera : Camera3D

func _process(delta):
	if Input.is_action_just_pressed("roll"):
		var x : AnimationPlayer
		roll = 1#rng.randi_range(1, 6)
		print(roll)
		#$AnimationPlayer.play("Cube|CubeAction")
		
		#$RootNode/Cube.look_at(camera.global_transform.origin)
	
	$AnimationPlayer.stop()
	
	if Input.is_key_pressed(KEY_W):
		$RootNode/Cube.rotation.y += 1 * delta
	
	match roll:
		1:
			$RootNode/Cube.rotation = Vector3(0, 0.1, 0)
	
	"""match roll:
		1:
			$RootNode/Cube.rotation.x = 89.55
		2:
			$RootNode/Cube.rotation.x = 89.55
			$RootNode/Cube.rotation.z = 4.6
		3:
			pass
		4:
			$RootNode/Cube.rotation.y = 0.3"""
