instance creation
fromCollideeNormalSizeCondition

	^ self new conditionBlock: [:aCollision |
		aCollision collidee activeState sizeToken == CqNormalSizeState stateToken]