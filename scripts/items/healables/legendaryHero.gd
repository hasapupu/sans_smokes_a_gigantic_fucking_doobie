extends Healable
class_name legendaryHero

func _init():
	names = ["LegendaryHero","LHero","LHero"]
	heals = [45,45,45]

func get_use_text() -> String:
	if(is_instance_valid(vars.hud_manager)):
		if(!vars.hud_manager.serious_mode):
			return "(enable:z)(enable:x)(sound:mono2)* You ate the Legendary Hero.\n" + str(hp_message(45)) + "(pc)"
	return "(enable:z)(enable:x)(sound:mono2)* You ate the Legendary Hero.\n" + str(hp_message(45)) + "(pc)"

func get_info_text() -> String:
	return "(enable:z)(enable:x)(sound:mono2)* \"Snowman Piece\" - Heals 45 HP\n* Please take this to the\n  ends of the earth.(pc)"
