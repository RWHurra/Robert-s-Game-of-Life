extends Button

#@onready var vertical_box_container = get_parent()
@onready var create_rule_dialog_scene = preload("res://create_rule.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	var create_rule_dialog_instance = create_rule_dialog_scene.instantiate()
	add_child(create_rule_dialog_instance)
	create_rule_dialog_instance.position = Vector2(50, 50)
	create_rule_dialog_instance.show()
