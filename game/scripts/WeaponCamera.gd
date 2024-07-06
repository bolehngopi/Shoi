extends Camera3D

@export var MAIN_CAMERA : Node3D

func _process(delta):
	global_transform = MAIN_CAMERA.global_transform
