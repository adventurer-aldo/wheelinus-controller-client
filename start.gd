extends ColorRect

var response

# Called when the node enters the scene tree for the first time.
func _ready():
	search()

func search():
	var ips = IP.resolve_hostname_addresses("DESKTOP-PJ24A4A", IP.TYPE_IPV4)
	$TextEdit.text = str(IP.get_local_interfaces())
	if ips.size() > 1:
		$Server.text = ips[1]
		$AutoFindLabel.show()

func _on_continue_pressed():
	Global.server = "http://" + $Server.text + ':12345'
	get_tree().change_scene_to_file("res://controller.tscn")

func _on_quick_connect_request_completed(result, response_code, headers, body):
	response = body

func _on_sense_value_changed(value):
	Global.sensitivity = value

func auto_hide_label():
	await get_tree().create_timer(3).timeout
	$AutoFindLabel.hide()

func _on_search_pressed():
	search()
