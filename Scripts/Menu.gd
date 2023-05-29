extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func move_to_ludo():
	get_node("ludo_mode").position.x = 0;
	get_node("game_selection").position.x = 576;
	
func move_to_sl():
	get_node("s&d_mode").position.x = 0;
	get_node("game_selection").position.x = -576;

func _on_ludo_pressed():
	move_to_ludo();


func _on_snake_ladder_pressed():
	move_to_sl(); 

func move_to_gs():
	get_node("ludo_mode").position.x = 576;
	get_node("game_selection").position.x = 0;
	
func move_to_gs1():
	get_node("s&d_mode").position.x = -576;
	get_node("game_selection").position.x = 0;

func _on_back_pressed():
	move_to_gs();


func _on_back_1_pressed():
	move_to_gs1();


func _on_ludo_ai_pressed():
	get_tree().change_scene_to_file("res://Scenes/ludo_ai.tscn");
