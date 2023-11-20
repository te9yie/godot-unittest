extends Resource

@export var id: int
@export var name: String
@export var hp: int

func _init(id_ = 0, name_ = "", hp_ = 0):
	id = id_
	name = name_
	hp = hp_
