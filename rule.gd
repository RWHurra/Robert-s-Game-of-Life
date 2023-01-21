extends ConfirmationDialog

@onready var main = get_tree().get_current_scene()
@onready var vertical_box_container = main.find_child("VBoxContainer")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_cancel_pressed():
	queue_free()
	vertical_box_container.show()
