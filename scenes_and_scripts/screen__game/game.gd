extends Control

onready var note_to_compare:int 
onready var octave_to_compare:int

func _ready():
	var _err1 = Signals.connect("new_sound_generated", self, "on_generated_sound")
	var _err2 = Signals.connect("piano_key_input_detected",self,"on_key_pressed")
	SoundGenerator.generate_new_key_sound()

func on_generated_sound(note:int, octave:int):
	note_to_compare = note
	octave_to_compare = octave
	print(note_to_compare, octave_to_compare)

func on_key_pressed(note:int, octave:int):
	if note == note_to_compare - 1 and octave == octave_to_compare:
		print("correct answer")
	else:
		print("wrong answer")
	SoundGenerator.generate_new_key_sound()
