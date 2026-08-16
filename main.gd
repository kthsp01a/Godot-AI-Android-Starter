extends Control

@onready var status: Label = $VBox/Status
@onready var button: Button = $VBox/TestButton

func _ready() -> void:
    button.pressed.connect(_on_test_button_pressed)

func _on_test_button_pressed() -> void:
    status.text = "터치 입력 정상"
