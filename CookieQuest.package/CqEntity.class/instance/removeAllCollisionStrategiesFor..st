collision handling
removeAllCollisionStrategiesFor: aSymbol
	"Removes all collision strategies for the given symbol."

	self collisionStrategies removeKey: aSymbol ifAbsent: []