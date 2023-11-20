extends Resource

const StatusData = preload("res://scripts/data/status_data.gd")

var data: Array = [
	StatusData.new(1, "Alice", 10),
]
enum {
	Alice = 1,
}
var index: Dictionary

func _init():
	for x in data:
		index[x.id] = x
		
func get_data(id):
	return index[id]

func get_data_by_index(i):
	return data[i]
	
func size():
	return data.size()
