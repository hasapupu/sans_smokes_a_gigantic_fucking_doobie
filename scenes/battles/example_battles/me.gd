extends Node2D


func _ready():
	print(typeof(this))

func _on_visibility_changed():
	print("onvis")
	audio.play("music/sans",audio.global_volume * 6)
	get_node("speech_bubble").visible = true
	get_node("speech_bubble/speech_writer").writer_text = "(sound:mono1)Hey, I'm the developer of this game."
	await get_tree().create_timer(2).timeout
	get_node("speech_bubble/speech_writer").writer_text = "(sound:mono1)I'm here becouse I genuinely have no idea how to finish this game."
	await get_tree().create_timer(2).timeout
	get_node("speech_bubble/speech_writer").writer_text = "(sound:mono1)So I'll take this opprtunity to plug my other stuff."
	await get_tree().create_timer(2).timeout
	get_node("speech_bubble/speech_writer").writer_text = "(sound:mono1)You can find out how I made this on my youtube channel,cornL games."
	await get_tree().create_timer(2).timeout
	get_node("speech_bubble/speech_writer").writer_text = "(sound:mono1)Along with other devlogs on Mythos, the main game I'm working on."
	await get_tree().create_timer(2).timeout
	get_node("speech_bubble/speech_writer").writer_text = "(sound:mono1)It's supposed to be quite similar to undertale, so hopefully you'll like it."
	await get_tree().create_timer(2).timeout
    get_node("speech_bubble/speech_writer").writer_text = "(sound:mono1)I guess that's everything..."
	await get_tree().create_timer(2).timeout
	get_node("speech_bubble/speech_writer").writer_text = "(sound:mono1)Bye!"
	await get_tree().create_timer(2).timeout
	get_node("speech_bubble").visible = false
	get_tree().quit()
