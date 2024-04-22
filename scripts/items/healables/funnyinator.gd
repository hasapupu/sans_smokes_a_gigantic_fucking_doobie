extends Healable
class_name funnyinator

func _init():
	names = ["funnyinator","funnyinator","funnyinator"]
	heals = [0,0,0]

func cornLBS():
	vars.dialouge_manager.initiateHumor()

func get_use_text() -> String:
	if(is_instance_valid(vars.hud_manager)):
		if(!vars.hud_manager.serious_mode):
			return "(enable:z)(enable:x)(sound:mono2)* You used the funnyinator.\n" + "(pc)"
	return "(enable:z)(enable:x)(sound:mono2)* You used the funnyinator.\n" + "(pc)"

func get_info_text() -> String:
	return "(enable:z)(enable:x)(sound:mono2)* \"Snowman Piece\" - Heals 45 HP\n* Please take this to the\n  ends of the earth.(pc)"
