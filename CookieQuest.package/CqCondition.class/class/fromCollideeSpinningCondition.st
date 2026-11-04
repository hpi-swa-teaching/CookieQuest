instance creation
fromCollideeSpinningCondition

	^ self new conditionBlock: [:aCollision |
		aCollision collidee activeState movementToken == CqSpinningState stateToken]