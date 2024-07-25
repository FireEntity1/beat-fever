extends Area2D
#BPM 151.2

var beat = 0
var isInArea = false

func _ready():
	#$bpmTimer.start()
	pass



func _process(delta):
	pass
	
func _physics_process(delta):
	position.y += 6.84


func _on_end_area_entered(area):
	isInArea = true


func _on_bpm_timer_timeout():
	beat += 1
	$bpmTimer.start()
	print(str(beat))
