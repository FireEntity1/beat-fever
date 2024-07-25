extends Area2D

var beat = 0
var isInArea = false
var note = preload("res://note.tscn")
var noteInstance
var currentNote
# Called when the node enters the scene tree for the first time.
func _ready():
	$songTimer.start()


func _physics_process(delta):
	beat += 0.042
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
	
	
	
	

func _process(delta):
	get_overlapping_areas()
	if Input.is_action_just_pressed("ui_accept"):
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
