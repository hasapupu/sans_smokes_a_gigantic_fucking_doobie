extends Node
class_name Enemy

enum e_dodge {
	none,
}

var enemy_name : String
var current_hp : int
var max_hp : int
var def : float
var dodge : e_dodge
var border_stick : bool = true
var offset : int = 0 #Offset for border stick

var show_health_bar : bool

var act_options = {
	}

func _init(enemy_name : String, hp : int, df : float):
	self.enemy_name = enemy_name
	self.current_hp = hp
	self.max_hp = hp
	self.def = def

func attack():
	pass
