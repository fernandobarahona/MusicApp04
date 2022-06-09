extends Control

onready var quaver:TextureRect = $Quaver

onready var quaver_x:int = 400
onready var quaver_y:int = 0

func _ready():
	var _err1 = Signals.connect("new_sound_generated", self, "on_generated_sound")


func on_generated_sound(note, octave):
	
	match [note, octave]:
		[1,1]:
			$Quaver.texture = $Quaver.center_normal_texture
			quaver_y = 576
		[2,1]:
			$Quaver.texture = $Quaver.normal_texture
			quaver_y = 512
		[3,1]:
			$Quaver.texture = $Quaver.normal_texture
			quaver_y = 480
		[4,1]:
			$Quaver.texture = $Quaver.normal_texture
			quaver_y = 432
		[5,1]:
			$Quaver.texture = $Quaver.normal_texture
			quaver_y = 384
		[6,1]:
			$Quaver.texture = $Quaver.normal_texture
			quaver_y = 336
		[7,1]:
			$Quaver.texture = $Quaver.normal_texture
			quaver_y = 288
		[8,1]:
			$Quaver.texture = $Quaver.bemol_texture
			quaver_y = 532
			#print("Db")
		[9,1]:
			$Quaver.texture = $Quaver.bemol_texture
			quaver_y = 500
			#print("Eb")
		[10,1]:
			$Quaver.texture = $Quaver.bemol_texture
			quaver_y = 404
			#print("Gb")
		[11,1]:
			$Quaver.texture = $Quaver.bemol_texture
			quaver_y = 357
			#print("Ab")
		[12,1]:
			$Quaver.texture = $Quaver.bemol_texture
			quaver_y = 308
			#print("Bb")
		[1,2]:
			$Quaver.texture = $Quaver.normal_texture
			quaver_y = 240
		[2,2]:
			$Quaver.texture = $Quaver.normal_texture
			quaver_y = 192
		[3,2]:
			$Quaver.texture = $Quaver.normal_texture
			quaver_y = 136
		[4,2]:
			$Quaver.texture = $Quaver.normal_texture
			quaver_y = 88
		[5,2]:
			$Quaver.texture = $Quaver.normal_texture
			quaver_y = 56
		[6,2]:
			$Quaver.texture = $Quaver.center_normal_texture
			quaver_y = -16
		[7,2]:
			$Quaver.texture = $Quaver.upper_normal_texture
			quaver_y = -60
		[8,2]:
			$Quaver.texture = $Quaver.bemol_texture
			quaver_y = 212
			#print("Db")
		[9,2]:
			$Quaver.texture = $Quaver.bemol_texture
			quaver_y = 156
			#print("Eb")
		[10,2]:
			$Quaver.texture = $Quaver.bemol_texture
			quaver_y = 60
			#print("Gb")
		[11,2]:
			$Quaver.texture = $Quaver.center_bemol_texture
			quaver_y = 4
			#print("Ab")
		[12,2]:
			$Quaver.texture = $Quaver.upper_bemol_texture
			quaver_y = -46
			#print("Bb")
		
	var quaver_position:Vector2 = Vector2(quaver_x, quaver_y)
	$Quaver.rect_position = quaver_position
	#print(note, octave)

