extends Attack

var a_vars : vars = vars

func _init():
	frames = 150

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
	#gb_part_one()

func bones_part_one():

    
	seeSawBones()
	blasters()

	await get_tree().create_timer(2.5).timeout
	a_vars.attack_manager.delete_bullets.emit()
	await a_vars.attack_manager.black_screen(.15)

func seeSawBones():
	while(true):
		a_vars.attack_manager.bone(0,Vector2(440,384),-2,0,120,-45,0,0,true)
		a_vars.attack_manager.bone(0,Vector2(150,254),2,0,120,0,50,0,true)
		await get_tree().create_timer(.9).timeout

func blasters():
	while(true):
		a_vars.attack_manager.gaster_blaster(0,Vector2(-100,-100),Vector2(380,100),0,Vector2(1,1),0,0,false)
		a_vars.attack_manager.gaster_blaster(0,Vector2(-100,-100),Vector2(250,100),0,Vector2(1,1),0,0,false)
		await get_tree().create_timer(.4).timeout