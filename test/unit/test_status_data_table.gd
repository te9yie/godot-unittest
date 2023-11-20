@tool
extends GutTest

var Table = load("res://scripts/data/status_data_table.gd")

func test_get_data():
	var table = Table.new()
	var alice = table.get_data(table.Alice)
	assert_eq(alice.id, 1)
	assert_eq(alice.name, "Alice")
	assert_eq(alice.hp, 10)

func test_get_data_by_index():
	var table = Table.new()
	for i in range(table.size()):
		var i_entry = table.get_data_by_index(i)
		var entry = table.get_data(i_entry.id)
		assert_eq(entry.name, i_entry.name)
