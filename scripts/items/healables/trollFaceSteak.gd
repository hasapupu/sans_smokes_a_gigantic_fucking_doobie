extends Healable
class_name trollFaceSteak

func _init():
	names = ["TrollFace Steak","TFSteak","TFSteak"]
	heals = [60,60,60]

func cornLBS():
	vars.dialouge_manager.tfReaction()

func get_use_text() -> String:
	vars.scene.get_node("enemies/example_enemy/head").frame = 1
	
	if(is_instance_valid(vars.hud_manager)):
		if(!vars.hud_manager.serious_mode):
			vars.dialouge_manager.tfReaction()
			return "(enable:z)(enable:x)(sound:mono2)* You ate the Troll Face Steak.\n" + str(hp_message(60)) + "(pc)"
	return "(enable:z)(enable:x)(sound:mono2)* You ate the Troll Face Steak.\n" + str(hp_message(60)) + "(pc)"

func get_info_text() -> String:
	return "(enable:z)(enable:x)(sound:mono2)* \"Snowman Piece\" - Heals 45 HP\n* Please take this to the\n  ends of the earth.(pc)"
