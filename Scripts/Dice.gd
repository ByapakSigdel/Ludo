extends Node2D


var temp_number = RandomNumberGenerator.new()
var rand_num
@onready var _animated_sprite = $AnimatedSprite2D
var object_to_delete

func _ready():
	pass

func _process(delta):
	pass

func dice():
	_animated_sprite.play("dice_roll")
	
	object_to_delete = get_node("../glass cube2")
	await(get_tree().create_timer(2).timeout)
	if is_instance_valid(object_to_delete):
		object_to_delete.queue_free()
	temp_number.randomize()
	rand_num = temp_number.randi_range(1,6)
	print(rand_num)
	match(rand_num-1):
		0:
			_animated_sprite.pause()
			_animated_sprite.set_frame_and_progress(0, 0.2)
		1:
			_animated_sprite.pause()
			_animated_sprite.set_frame_and_progress(1, 0.2)
		2:
			_animated_sprite.pause()
			_animated_sprite.set_frame_and_progress(2, 0.2)
		3:
			_animated_sprite.pause()
			_animated_sprite.set_frame_and_progress(3, 0.2)
		4:
			_animated_sprite.pause()
			_animated_sprite.set_frame_and_progress(4, 0.2)
		5:
			_animated_sprite.pause()
			_animated_sprite.set_frame_and_progress(5, 0.2)

func _on_play_pressed():
	$AnimatedSprite2D.position.x = 55;
	$AnimatedSprite2D.position.y = 789;
	dice();
	
	await(get_tree().create_timer(5).timeout)
	bot1_turn();
	
func bot1_turn():
	$AnimatedSprite2D.position.x = 57;
	$AnimatedSprite2D.position.y = 332;
	dice();
	await(get_tree().create_timer(5).timeout)
	bot2_turn();
	
	
func bot2_turn():
	$AnimatedSprite2D.position.x = 523;
	$AnimatedSprite2D.position.y = 337;
	dice();
	await(get_tree().create_timer(5).timeout)
	bot3_turn();
	
func bot3_turn():
	$AnimatedSprite2D.position.x = 518;
	$AnimatedSprite2D.position.y = 787;
	dice();
	await(get_tree().create_timer(5).timeout)
	print("Your Turn")
	
