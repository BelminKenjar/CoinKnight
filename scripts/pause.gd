extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func unpause():
	get_tree().paused = false;
	$".".hide();


func _on_main_menu_pressed() -> void:
	get_tree().paused = false;
	get_tree().change_scene_to_file("res://scenes/menu.tscn")


func _on_restart_pressed() -> void:
	get_tree().paused = false;
	get_tree().change_scene_to_file("res://scenes/levels/level_1.tscn")
