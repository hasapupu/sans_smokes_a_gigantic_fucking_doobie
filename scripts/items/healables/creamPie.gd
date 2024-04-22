extends Healable
class_name creamPie

func _init():
	names = ["Cream Pie","CreamPie","CreamPie"]
	heals = [99,99,99]

func cornLBS():
	vars.dialouge_manager.checkDD()

func get_use_text() -> String:
	if(is_instance_valid(vars.hud_manager)):
		if(!vars.hud_manager.serious_mode):
			return "(enable:z)(enable:x)(sound:mono2)* You attempt to creampie Sans,\n but this is not tumblr.\n" + str(hp_message(99)) + "(pc)"
	return "(enable:z)(enable:x)(sound:mono2)* You attempt to creampie Sans,\n but this is not tumblr\n" + str(hp_message(99)) + "(pc)"

func get_info_text() -> String:
	return "(enable:z)(enable:x)(sound:mono2)* \"Snowman Piece\" - Heals 45 HP\n* Please take this to the\n  ends of the earth.(pc)"
