extends Node

var axis_x = 32767/2
var axis_y = 32767/2
var axis_z = 32767/2
var axis_rx = 32767/2
var axis_ry = 32767/2
var axis_rz = 32767/2
var button_1 = false
var button_2 = false
var button_3 = false
var button_4 = false
var button_5 = false
var button_6 = false
var button_7 = false
var button_8 = false
var button_9 = false
var button_10 = false
var button_11 = false
var button_12 = false
var button_13 = false
var button_14 = false

var server_address = "http://localhost:12345"

func _process(_delta):
	send_input()

# Called when the node enters the scene tree for the first time.
func send_input():
	# Replace with your server's IP and port
	$HTTPRequest.request(Global.server, ["Content-Type: application/json"], HTTPClient.METHOD_POST, JSON.stringify({
		'axis_x': axis_x,
		'axis_y': axis_y,
		'axis_z': axis_z,
		'axis_rx': axis_rx,
		'axis_ry': axis_ry,
		'axis_rz': axis_rz,
		'button_1': button_1,
		'button_2': button_2,
		'button_3': button_3,
		'button_4': button_4,
		'button_5': button_5,
		'button_6': button_6,
		'button_7': button_7,
		'button_8': button_8,
		'button_9': button_9,
		'button_10': button_10,
		'button_11': button_11,
		'button_12': button_12,
		'button_13': button_13,
		'button_14': button_14
	}))
