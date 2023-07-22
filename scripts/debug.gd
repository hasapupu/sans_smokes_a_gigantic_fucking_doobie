extends Node2D

@onready var text = $text
var enabled = false
var time_elasped := 0.01

func _ready():
	vars.debug = self
	visible = false

func _process(delta):
	time_elasped += (time_elasped * (delta / time_elasped))
	debug()

func debug():
	if(Input.is_action_just_pressed("debug")):
		enabled = !enabled
		visible = enabled
	if(visible):
		if(Input.is_action_pressed("turn_changer")):
			if(Input.is_action_just_pressed("right")):
				if(is_instance_valid(vars.attack_manager)):
					vars.attack_manager.turn_num += 1
			if(Input.is_action_just_pressed("left")):
					vars.attack_manager.turn_num -= 1
		text.visible = true
		var string = "Engine By Soldier\n"
		string += "HP = Infinite\n"
		string += str("FPS = " + str(Engine.get_frames_per_second())) + "\n"
		string += str("Timer = " + str(snapped(time_elasped, 0.01))) + "\n"
		if(is_instance_valid(vars.attack_manager)):
			if(!is_instance_valid(vars.attack_manager.current_attack)):
				string += "Status : Not Attacking\n"
				string += "Attack Counter : 0\n"
			else:
				string += "Status : Attacking\n"
				string += "Attack Counter : " + str(int(vars.attack_manager.current_attack.current_frames)) + "\n"
			string += "Current Turn : " + str(vars.attack_manager.turn_num) + "\n"
		text.text = string
