extends Node2D

var amount = -0.5

func _physics_process(float):
	position.y += amount


func _ready():
	switch()

func switch():
	await get_tree().create_timer(1).timeout
	amount *= -1
	switch()

func _on_visibility_changed():
	audio.play("music/gasterbanger",audio.global_volume * 6)
	get_node("speech_bubble").visible = true
	get_node("speech_bubble/speech_writer").writer_text = "(sound:mono1)My fucking son!"
	await get_tree().create_timer(2).timeout
	get_node("speech_bubble/speech_writer").writer_text = "(sound:mono1)You monster!"
	await get_tree().create_timer(2).timeout
	get_node("speech_bubble/speech_writer").writer_text = "(sound:mono1)You... Just..."
	await get_tree().create_timer(2).timeout
	get_node("speech_bubble/speech_writer").writer_text = "(sound:mono1)Fuck you!"
	await get_tree().create_timer(2).timeout
	get_node("speech_bubble").visible = false
	get_tree().quit()
