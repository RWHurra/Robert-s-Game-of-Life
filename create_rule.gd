extends ConfirmationDialog

@onready var main = get_tree().get_current_scene()
@onready var vertical_box_container = main.find_child("VBoxContainer")
@onready var rules_container = main.find_child("Rules Container")
@onready var rule_scene = preload("res://rule.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_cancel_pressed():
	queue_free()
	vertical_box_container.show()


func _on_confirmed():
	var rule_instance = rule_scene.instantiate()
	rules_container.add_child(rule_instance)
	rule_instance.show()
	print("Rule created: ", rule_instance)
	print("Rules container children: ", rules_container.get_children())
