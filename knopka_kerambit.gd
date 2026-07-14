extends Button

func _ready() -> void:
	pass 

func _process(delta: float) -> void:
	pass

func _on_button_down() -> void:
	if Global.blue==true and Global.count-100>=0:
		Global.tx="kerush"
		Global.blue=false
		Global.count-=100
		Global.skin=true
	elif Global.blue==true and Global.count-100<0:
		Global.tx="hosh"
	if Global.skin==true:
		Global.tx="kerush"
