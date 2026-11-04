collision handling
collideWith: aSymbol describedBy: aCollision
	"Runs the collision strategies registered for the given symbol."

	(self collisionStrategies at: aSymbol ifAbsent: [OrderedCollection new])
		do: [:each | each collide: aCollision]