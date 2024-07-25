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
	middle(7)
	middle(7.5)
	middle(8)
	middle(8.5)
	middle(9)
	middle(14)
	middle(14.5)
	middle(15)
	middle(15.5)
	middle(16)
	middle(17)
	middle(18)

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

func middle(fireBeat,fired=false):
	if beat > fireBeat - 4 and beat < fireBeat-3.96:
		add_child(note.instantiate())
		

func _on_area_exited(area):
	isInArea = false
