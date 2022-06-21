extends Camera

var sine_time_1 := 0.0
var sine_time_2 := 0.0

func _physics_process(delta):
	sine_time_1 = wrapf(sine_time_1 + delta * 0.5, 0, TAU)
	sine_time_2 = wrapf(sine_time_1 + delta * 0.3, 0, TAU)
	
	h_offset = sin(sine_time_2)*0.1
	v_offset = sin(sine_time_1)*0.1
	
	rotation_degrees.y = sin(sine_time_2)*2 + 15.638
	rotation_degrees.x = -sin(sine_time_1)*2 + 9.776
