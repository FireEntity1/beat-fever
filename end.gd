extends Area2D

var beat = 0
var isInArea = false
var note = preload("res://note.tscn")
var noteInstance
var currentNote
var bpm = 151.2
var misses = 0
var hits = 0
var accuracy = 0
var total = 0
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
	spawn(82.4)
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
	
	spawn(167)
	spawn(167.5)
	spawn(168)
	spawn(169)
	spawn(170)
	
	spawn(175)
	spawn(176)
	spawn(176.5)
	spawn(177)
	
	spawn(181+0.5)
	spawn(181.5+0.5)
	spawn(182+0.5)
	spawn(182.5+0.5)
	spawn(183+0.5)
	spawn(183.5+0.5)
	spawn(184+0.5)
	
	spawn(186.5)
	spawn(187)
	spawn(187.5)
	spawn(188)
	spawn(188.5)
	
	spawn(190+0.5)
	spawn(190.5+0.5)
	spawn(191+0.5)
	spawn(191.5+0.5)
	spawn(192+0.5)
	
	spawn(203-2)
	spawn(204.5-2)
	spawn(206-2)
	spawn(207.5-2)
	spawn(209-2)
	spawn(211-2)
	spawn(212.1-2)
	spawn(213.5-2)
	spawn(215-2)
	spawn(216.5-2)
	spawn(218-2)
	spawn(219-2)
	spawn(220-2)
	spawn(221.5-2)
	spawn(223-2)
	spawn(224.5-2)
	spawn(226-2)
	spawn(224.5)
	
	spawn(229.6)
	spawn(230)
	spawn(230.5)
	spawn(231)
	spawn(232)
	spawn(232.5)
	spawn(233)
	
	spawn(237.5)
	spawn(238)
	spawn(238.5)
	spawn(239)
	spawn(240)
	spawn(240.5)
	spawn(241)
	
	spawn(245.5)
	spawn(246)
	spawn(247)
	spawn(248)
	spawn(248.5)
	spawn(249)
	
	spawn(253.5)
	spawn(254)
	spawn(254.5)
	spawn(255)
	spawn(256.5)
	spawn(257)
	
	spawn(261.5)
	spawn(262)
	spawn(262.5)
	spawn(263)
	spawn(264)
	spawn(264.5)
	spawn(265)
	
	spawn(269.5)
	spawn(270)
	spawn(270.5)
	spawn(271.5)
	spawn(272)
	spawn(272.5)
	spawn(273)
	
	spawn(277.5)
	spawn(278)
	spawn(278.5)
	spawn(278)
	spawn(279.5)
	spawn(280)
	spawn(280.5)
	
	spawn(285)
	spawn(285.5)
	spawn(286)
	spawn(286.5)
	spawn(287)
	spawn(287.5)
	spawn(288.1)
	
func _process(delta):
	total = hits + misses
	get_overlapping_areas()
	if Input.is_action_just_pressed("click"):
		if isInArea == false:
			print("miss")
			misses += 1
		if isInArea == true:
			print("hit!")
			currentNote.queue_free()
			hits += 1
	$hits.text = str(hits)
	$misses.text = str(misses)
	$accuracy.text = str(accuracy*100) + "%"
	accuracy = round_to_dec((float(hits)+1)/(float(total)+1), 2)

func _on_area_entered(area):
	isInArea = true
	currentNote = area


func _on_bpm_timer_timeout():
	$Music.play()
	# beat = 196

func spawn(fireBeat,fired=false):
	if beat >= fireBeat - 4 and beat < fireBeat-3.96:
		add_child(note.instantiate())
		

func _on_area_exited(area):
	isInArea = false


func _on_miss_area_entered(area):
	misses += 1

func round_to_dec(num, digit):
	return round(num * pow(10.0, digit)) / pow(10.0, digit)

func _on_music_finished():
	$finishText.modulate.a = 1
