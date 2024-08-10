extends Node2D

var bpm
var item = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	$noteEditor.select_mode = ItemList.SELECT_MULTI


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	bpm = float($bpm.text)
	item += 1
	$noteEditor.add_item(str(item))

func load_mp3(path):
	var file = FileAccess.open(path, FileAccess.READ)
	var sound = AudioStreamMP3.new()
	sound.data = file.get_buffer(file.get_length())
	$Player.stream = sound
	$Player.play()

func load_ogg(path):
	$Player.stream = AudioStreamOggVorbis.load_from_file(path)
	$Player.play()


func _on_open_button_up():
	$fileOpen.show()


func _on_file_open_file_selected(path):
	if path.ends_with(".mp3"):
		load_mp3(path)
	elif path.ends_with(".ogg"):
		load_ogg(path)
	else:
		print("UNKNOWN FILE")
