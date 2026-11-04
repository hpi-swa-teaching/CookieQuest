instance creation
fromCollideeFloatingCondition

	^ self new conditionBlock: [:aCollision |
		aCollision collidee activeState movementToken == CqFloatingState stateToken]