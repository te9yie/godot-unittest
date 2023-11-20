@tool
extends GutTest

var StatusData = load("res://scripts/data/status_data.gd")
	
func test_new():
	var dp = StatusData.new(1, "Alice", 10)
	assert_eq(dp.id, 1)
	assert_eq(dp.name, "Alice")
	assert_eq(dp.hp, 10)
