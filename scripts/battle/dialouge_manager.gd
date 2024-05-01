extends Node
class_name DialougeManager

signal done

func _ready():
	pass

func start():
	done.emit()

func tfReaction():
	done.emit()

func checkDD():
	done.emit()

func initiateHumor():
	done.emit()

func oneHit():
	done.emit()