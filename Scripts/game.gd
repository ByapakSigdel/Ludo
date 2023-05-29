extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	func _on_play_pressed():
		_animation_diceroll()
	
	func _animation_diceroll():
		$AnimatedSprite2D.play("dice_roll")
	#_animated_sprite.play("dice_roll")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



