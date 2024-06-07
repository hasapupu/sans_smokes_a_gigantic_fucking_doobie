extends Attack

var a_vars : vars = vars

func _init():
	frames = 300

func pre_attack():
	a_vars.player_heart.heart_mode = PlayerHeart.e_heart_mode.blue
	a_vars.battle_box.set_box_size([200,250,440,390])
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

func bones_part_one():
	var topLeftDoobie = a_vars.attack_manager.doobie_bullet(0,Vector2(150,285),0,0,0,0,false)
	topLeftDoobie.scale.x = -1
	topLeftDoobie.scale.y = -1
	var bottomLeftDoobie = a_vars.attack_manager.doobie_bullet(0,Vector2(150,390),0,0,0,0,false)
	bottomLeftDoobie.scale.x = -1
	var topRightDoobie = a_vars.attack_manager.doobie_bullet(0,Vector2(490,285),0,0,0,0,false)
	topRightDoobie.scale.y = -1
	var bottomRightDoobie = a_vars.attack_manager.doobie_bullet(0,Vector2(490,390),0,0,0,0,false)

	while true:
		a_vars.attack_manager.smoke_puff(0,bottomLeftDoobie.position,8,-4,20,0,false)
		a_vars.attack_manager.smoke_puff(0,bottomRightDoobie.position,-8,-4,20,0,false)
		await get_tree().create_timer(.6).timeout
		a_vars.attack_manager.smoke_puff(0,topLeftDoobie.position,8,4,20,0,false)
		a_vars.attack_manager.smoke_puff(0,topRightDoobie.position,-8,4,20,0,false)
		await get_tree().create_timer(.6).timeout

