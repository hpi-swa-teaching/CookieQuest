collision handling
registerCollisionStrategy: aStrategy for: aProperty
	"Register a collision strategy to be executed for the given property."

	| currentStrategies |
	currentStrategies := self collisionStrategies
		at: aProperty
		ifAbsentPut: [OrderedCollection new].
	currentStrategies add: aStrategy