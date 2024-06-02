extends Attack

var a_vars : vars = vars

func _init():
	frames = 500

func pre_attack():
	a_vars.player_heart.heart_mode = PlayerHeart.e_heart_mode.blue
	a_vars.battle_box.set_box_size([244,250,399,390])
	await get_tree().process_frame
	a_vars.player_heart.visible = true
	a_vars.player_heart.global_position = Vector2(321, 375)

func start_attack():
	vars.player_heart.input_enabled = true
	attack_started = true
#	a_vars.attack_manager.gaster_blaster(0,Vector2(-100,-100),Vector2(150,100),0,Vector2(1,1),0,0,false)
#	a_vars.attack_manager.gaster_blaster(0,Vector2(-100,-100),Vector2(180,100),0,Vector2(1,1),0,0,false)
#	a_vars.attack_manager.gaster_blaster(0,Vector2(-100,-100),Vector2(210,100),0,Vector2(1,1),0,0,false)
	bones_part_one()
	gb_part_one()

func bones_part_one():

	a_vars.attack_manager.throw(270,750)
	await get_tree().create_timer(.5).timeout

	await get_tree().create_timer(.55).timeout
	a_vars.attack_manager.throw(90,750)
	await get_tree().create_timer(.9).timeout
	a_vars.attack_manager.throw(0,750)
	
	


func gb_part_one():
#	vars.attack_manager.gaster_blaster(Vector2(-100,-100),Vector2(150,100),20,Vector2(.8,1),false)
	a_vars.attack_manager.gaster_blaster(0,Vector2(-100,-100),Vector2(380,100),0,Vector2(1,1),0,0,false)
	await get_tree().create_timer(1.1).timeout
	
	a_vars.attack_manager.gaster_blaster(0,Vector2(500,-100),Vector2(320,100),0,Vector2(1,1),0,0,false)
	await get_tree().create_timer(.6).timeout
	await get_tree().create_timer(.6).timeout
	
	a_vars.attack_manager.gaster_blaster(0,Vector2(170,-100),Vector2(200,380),270,Vector2(1,1),0,0,false)

