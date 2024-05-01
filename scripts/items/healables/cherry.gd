extends Healable
class_name cherry

func _init():
	names = ["Cherry","Cherry","Cherry"]
	heals = [1,1,1]

func cornLBS():
	vars.dialouge_manager.oneHit()

func get_use_text() -> String:
	if(is_instance_valid(vars.hud_manager)):
		if(!vars.hud_manager.serious_mode):
			return "(enable:z)(enable:x)(sound:mono2)* You eat the cherry.\n" + "* One hit mode activated." + "(pc)"
	return "(enable:z)(enable:x)(sound:mono2)* You eat the cherry.\n" + "One hit mode activated" + "(pc)"

func get_info_text() -> String:
	return "(enable:z)(enable:x)(sound:mono2)* \"Snowman Piece\" - Heals 45 HP\n* Please take this to the\n  ends of the earth.(pc)"

