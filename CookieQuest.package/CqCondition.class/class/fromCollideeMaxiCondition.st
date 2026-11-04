instance creation
fromCollideeMaxiCondition

	^ self new conditionBlock: [:aCollision |
		aCollision collidee activeState sizeToken == CqMaxiSizeState stateToken]