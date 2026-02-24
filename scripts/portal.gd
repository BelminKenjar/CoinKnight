extends Area2D

const FILE_BEGIN = "res://scenes/levels/level_"
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var game_manager: Node = %GameManager

func _on_body_entered(body: Node2D) -> void:
	get_tree().paused = true
	animation_player.play("transition")
	await animation_player.animation_finished


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	get_tree().paused = false
	var current_scene_file = get_tree().current_scene.scene_file_path
	var next_level_number = current_scene_file.to_int() + 1
	var next_level_path = FILE_BEGIN + str(next_level_number) + ".tscn"
	 
	if next_level_number == 3:
		get_tree().change_scene_to_file("res://scenes/menu.tscn")
	else:
		get_tree().change_scene_to_file(next_level_path)
