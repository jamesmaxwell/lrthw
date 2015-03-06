require 'minitest/autorun'
require '../lib/game'

class MyUnitTests < MiniTest::Test
	def setup
		@gold = Room.new("GoldRoom",
			"This room has gold in it you can grab. There's a door to the north.")
	end

	def test_room()
		assert_equal(@gold.name, "GoldRoom")
		assert_equal(@gold.paths, {})
	end

	def test_room_paths()
		center = Room.new("Center", "Test room in the center.")
		north  = Room.new("North",  "Test room in the north.")
		south  = Room.new("South",  "Test room in the south.")

		center.add_paths({ :north => north, :south => south })
		assert_equal(center.go(:north), north)
		assert_equal(center.go(:south), south)
	end

	def test_map()
		start = Room.new("Start", "start")
		west  = Room.new("Trees", "trees")
		down  = Room.new("Dungeon", "dark down")

		start.add_paths({ west: west, down: down })
		west.add_paths({ east: start })
		down.add_paths({ up: start })

		assert_equal(start.go(:west), west)
		assert_equal(start.go(:west).go(:east), start)
		assert_equal(start.go(:down).go(:up), start)
	end
	
end