extends Attack

var a_vars : vars = vars

func _init():
	frames = 350

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
	var rightDoobie = a_vars.attack_manager.doobie_bullet(0,Vector2(450,400),0,0,0,0,false)
	while true:
		await get_tree().create_timer(1.0).timeout
		a_vars.attack_manager.gaster_blaster(0,Vector2(-100,-100),Vector2(220,200),360,Vector2(2.5,1),0,0,false)
		a_vars.attack_manager.smoke_puff(0,Vector2(rightDoobie.position.x - 10,rightDoobie.position.y),-3,-4,40,0,false)
		a_vars.attack_manager.gaster_blaster(0,Vector2(-100,-100),Vector2(450,380),90,Vector2(1,1),0,0,false)



