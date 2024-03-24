extends Node2D

var fir = UDPServer.new()
var sec = PacketPeerUDP.new()
var debody = PackedByteArray([89, 111])
var stick_pressed = false

func _ready():
	print(IP.get_local_interfaces())
	fir.listen(12345)
	sec.bind(8080)

func _process(delta):
	if stick_pressed == true:
		$TouchScreenButton.position = clamp(get_viewport().get_mouse_position(), Vector2(200, 400), Vector2(300,500))


func _on_touch_screen_button_pressed():
	stick_pressed = true


func _on_touch_screen_button_released():
	stick_pressed = false
