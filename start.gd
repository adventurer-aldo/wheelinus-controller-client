extends ColorRect

var response

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _on_continue_pressed():
	Global.server = "http://" + $Server.text + ':8080'
	get_tree().change_scene_to_file("res://controller.tscn")

func _on_quick_connect_request_completed(result, response_code, headers, body):
	response = body

func _on_sense_value_changed(value):
	Global.sensitivity = value

func auto_hide_label():
	await get_tree().create_timer(3).timeout
	$AutoFindLabel.hide()

func _on_stream_pressed():
	Global.mode = 'stream'
	Global.server = $Server.text
	get_tree().change_scene_to_file("res://controller.tscn")
