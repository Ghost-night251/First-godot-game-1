extends Button

func _ready() -> void:
	pass 

func _process(delta: float) -> void:
	pass

func _on_button_down() -> void:
	if Global.blue==false:
		Global.tx="hosh"
		Global.blue=true
		Global.skin=true
 	
