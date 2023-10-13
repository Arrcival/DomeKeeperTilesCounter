extends HudElement

var totalTiles = 0
var brokenTiles = 0


func init():
	Data.listen(self, "map.tilesdestroyed", true)
	Data.listen(self, "map.totaltiles", true)
	
	updateText()

func propertyChanged(property:String, oldValue, newValue):
	match property:
		"map.tilesdestroyed":
			brokenTiles = newValue
		"map.totaltiles":
			totalTiles = newValue
	updateText()


func updateText():
	find_node("TilesCount").text = str(totalTiles - brokenTiles + 1) + "-" + str(totalTiles)
