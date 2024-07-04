extends Node3D

class_name Weapon

@export var damage = 10
@export var ammo = 5
@export var max_ammo = 5
@export var equip_anim : String
@export var fire_anim : String
@export var reload_anim : String
@export var gun_action = "weapon fire"

@onready var aimcast = $"../../../Head/Camera3D/AimCast"
@onready var anim_player = $"../../../AnimationPlayer"
@onready var ammo_text = $"../../../Head/Camera3D/Control/ammo_count"

func _ready():
	pass

func shoot():
	if ammo > 0:
		if not anim_player.is_playing():
			anim_player.play(fire_anim)
			ammo -= 1
			if aimcast.is_colliding():
				var target = aimcast.get_collider()
				if target.is_in_group("Enemy"):
					target.health -= damage
	print(gun_action)
	ammo_text.text = String(ammo)
	if ammo <= 0:
		anim_player.play(reload_anim)
		ammo = max_ammo
	if Input.is_action_just_pressed("reload") and ammo < 5:
		anim_player.play(reload_anim)
		ammo = max_ammo
