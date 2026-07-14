extends Node2D
@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var sprite2: AnimatedSprite2D = $AnimatedSprite2D2
var apple = preload("res://rigid_body_2d.tscn")
var banan=preload("res://rigid_body_2dban.tscn")
var bomb=preload("res://rigid_body_2dbomba.tscn")
var hp=10

func _ready() -> void:
	pass
func _process(delta: float) -> void:
	if hp <= 0:
		get_tree().change_scene_to_file("res://styrt_menushka.tscn")
	$Label.text = "Hp: "+str(hp)
	$Label2.text="Count: "+str(Global.count)
	if Input.is_action_just_pressed("esc"):
		get_tree().change_scene_to_file("res://styrt_menushka.tscn")
	if Global.tx=="kerush":
		$AnimatedSprite2D2.position=get_global_mouse_position()
	if Global.tx=="hosh":
		$AnimatedSprite2D.position=get_global_mouse_position()
	if Input.is_action_just_pressed("kn") and Global.tx=="kerush":
		sprite2.play("kerush")	
	if Input.is_action_just_pressed("kn") and Global.tx=="hosh":
		sprite.play("hosh")	

func take_damage() -> void:
	hp -= 1
	
func Chet() ->void:
	Global.count+=1

func _on_timer_timeout() -> void:
	var k=randi_range(1,4)
	if k==1:
		var fr=apple.instantiate()
		add_child(fr)
		fr.sprite.position=Vector2(randf_range(100,900),717)
		fr.suu.connect(Chet)
		for i in range(1):
			var gf=banan.instantiate()
			add_child(gf)
			gf.sprite.position=Vector2(randf_range(100,900),717)
			gf.zov.connect(Chet)
	if k==2:
		var gf=banan.instantiate()
		add_child(gf)
		gf.sprite.position=Vector2(randf_range(100,900),717)
		gf.zov.connect(Chet)
		for i in range(1):
			var fr=apple.instantiate()
			add_child(fr)
			fr.sprite.position=Vector2(randf_range(100,900),717)
			fr.suu.connect(Chet)
	if k==3:
		var gf=banan.instantiate()
		add_child(gf)
		gf.sprite.position=Vector2(randf_range(100,900),717)
		gf.zov.connect(Chet)
		for i in range(1):
			var fr=apple.instantiate()
			add_child(fr)
			fr.sprite.position=Vector2(randf_range(100,900),717)
			fr.suu.connect(Chet)
		var hj=bomb.instantiate()
		add_child(hj)
		hj.sprite.position=Vector2(randf_range(100,900),717)
		hj.dhg.connect(take_damage)
