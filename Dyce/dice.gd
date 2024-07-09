extends Node

func _process(delta):
	if Input.is_action_just_pressed("roll"):
		var x : AnimationPlayer
		$AnimationPlayer.play("Cube|CubeAction")
