extends "res://content/map/Map.gd"


func init(fromDeserialize: = false):
	.init(fromDeserialize)
	Data.apply("map.totaltiles", Level.map.tileData().get_remaining_mineable_tile_count())
	print(Data.of("map.totaltiles"))
