extends Node2D
var sprite
var apple = preload("res://rigid_body_2d.tscn")
var banan=preload("res://rigid_body_2dban.tscn")
var bomb=preload("res://rigid_body_2dbomba.tscn")
var hp=10
var count=0

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	if hp <= 0:
		get_tree().quit()
	$Label.text = "Hp: "+str(hp)
	$Label2.text="Count: "+str(count)

func take_damage() -> void:
	hp -= 1
	
func Chet() ->void:
	count+=1

func _on_timer_timeout() -> void:
	var k=randi_range(1,4)
	if k==1:
		var fr=apple.instantiate()
		fr.suu.connect(Chet)
		add_child(fr)
		fr.sprite.position=Vector2(randf_range(100,900),717.0)
	if k==2:
		var gf=banan.instantiate()
		gf.zov.connect(Chet)
		add_child(gf)
		gf.sprite.position=Vector2(randf_range(100,900),717.0)
	if k==3:
		var hj=bomb.instantiate()
		add_child(hj)
		hj.sprite.position=Vector2(randf_range(100,900),717.0)
		hj.dhg.connect(take_damage)
