extends Node

var fir = UDPServer.new()
var sec = PacketPeerUDP.new()
var debody = PackedByteArray([89, 111])

func _ready():
	print(IP.get_local_interfaces())
	fir.listen(12345)
	sec.bind(8080)

func _process(delta):
	fir.poll()
	if fir.is_connection_available():
		print(true)
