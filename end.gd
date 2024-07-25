extends Area2D

var beat = 0
var isInArea = false
var note = preload("res://note.tscn")
var noteInstance
var currentNote
var bpm = 151.2
# Called when the node enters the scene tree for the first time.
func _ready():
	$songTimer.start()


func _physics_process(delta):
	beat += bpm/60/60
	spawn(7)
	spawn(7.5)
	spawn(8)
	spawn(8.5)
	spawn(9)
	
	spawn(14)
	spawn(14.5)
	spawn(15)
	spawn(15.5)
	spawn(16)
	spawn(16.5)
	spawn(18)
	
	spawn(23)
	spawn(23.5)
	spawn(24)
	spawn(24.5)
	spawn(25)
	
	spawn(30)
	spawn(30.5)
	spawn(31)
	spawn(31.5)
	spawn(32)
	spawn(32.5)
	spawn(34)
	
	spawn(38.5)
	spawn(39)
	spawn(39.5)
	spawn(40)
	spawn(40.45)
	spawn(41)
	
	spawn(46.5)
	spawn(47)
	spawn(47.5)
	spawn(48)
	spawn(48.5)
	spawn(50)
	spawn(51.5)
	
	spawn(55)
	spawn(55.5)
	spawn(56)
	spawn(56.5)
	spawn(57)
	
	spawn(62.5)
	spawn(63)
	spawn(63.5)
	spawn(64)
	spawn(64.5)
	spawn(66)
	
	spawn(73)
	spawn(74.5)
	spawn(76)
	spawn(77.5)
	spawn(79)
	spawn(80)
	spawn(81)
	spawn(82.6)
	spawn(84)
	spawn(85.5)
	spawn(87)
	spawn(88)
	spawn(89)
	spawn(90.5)
	spawn(92)
	spawn(93.5)
	spawn(95)
	spawn(96)
	spawn(96.5)
	
	spawn(101.5)
	spawn(102)
	spawn(102.5)
	spawn(103)
	spawn(104)
	spawn(104.5)
	spawn(105)
	
	spawn(109.5)
	spawn(110)
	spawn(110.5)
	spawn(111)
	spawn(112)
	spawn(112.5)
	spawn(113)
	
	
	spawn(117.5)
	spawn(118)
	spawn(119)
	spawn(120)
	spawn(120.5)
	spawn(121)
	
	spawn(125.5)
	spawn(126)
	spawn(126.5)
	spawn(127)
	spawn(128.5)
	spawn(129)
	
	spawn(133.5)
	spawn(134)
	spawn(134.5)
	spawn(135)
	spawn(136)
	spawn(136.5)
	spawn(137)
	
	spawn(141.5)
	spawn(142)
	spawn(142.5)
	spawn(143.5)
	spawn(144)
	spawn(144.5)
	spawn(145)
	
	spawn(149.5)
	spawn(150)
	spawn(150.5)
	spawn(151)
	spawn(152)
	spawn(152.5)
	spawn(153)
	
	spawn(157.5)
	spawn(158)
	spawn(158.5)
	spawn(159)
	spawn(160.5)
	spawn(161)
	
	spawn(166)
	spawn(167)
	spawn(168)
	spawn(169)
	spawn(170)
	
	spawn(175)
	spawn(176)
	spawn(176.6)
	spawn(177)
	
	spawn(181.5)
	spawn(182)
	spawn(182.5)
	spawn(183)
	spawn(183.5)
	spawn(184)
	spawn(184.5)
	
	spawn(186)
	spawn(186.5)
	spawn(187)
	spawn(187.5)
	spawn(188)
	
	spawn(189.5)
	spawn(190)
	spawn(190.5)
	spawn(191)
	spawn(191.5)
	spawn(192)
	
	
func _process(delta):
	get_overlapping_areas()
	if Input.is_action_just_pressed("click"):
		if isInArea == false:
			print("miss")
		if isInArea == true:
			print("hit!")
			currentNote.queue_free()

func _on_area_entered(area):
	isInArea = true
	currentNote = area


func _on_bpm_timer_timeout():
	$Music.play()

func spawn(fireBeat,fired=false):
	if beat >= fireBeat - 4 and beat < fireBeat-3.96:
		add_child(note.instantiate())
		

func _on_area_exited(area):
	isInArea = false
