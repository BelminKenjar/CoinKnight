extends Node2D

var rotation_speed = 1.2
@onready var platform_2: AnimatableBody2D = $Platform_2
@onready var platform_3: AnimatableBody2D = $Platform_3

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	rotation_degrees += rotation_speed
	platform_2.rotation_degrees -= rotation_speed
	platform_3.rotation_degrees -= rotation_speed
