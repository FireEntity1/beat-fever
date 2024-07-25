extends Area2D

var beat = 0
var isInArea = false
var note = preload("res://note.tscn")
var noteInstance
# Called when the node enters the scene tree for the first time.
func _ready():
	$bpmTimer.start()



func _physics_process(delta):
	pass

func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		if isInArea == false:
			print("miss")
		if isInArea == true:
			print("hit!")


func _on_area_entered(area):
	isInArea = true
	add_child(note.instantiate())


func _on_bpm_timer_timeout():
	beat += 1
	$bpmTimer.start()

func middle(fireBeat):
	if beat > fireBeat - 4:
		pass

func _on_area_exited(area):
	isInArea = false
