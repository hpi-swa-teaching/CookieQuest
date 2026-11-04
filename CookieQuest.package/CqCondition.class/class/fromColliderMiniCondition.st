instance creation
fromColliderMiniCondition

	^ self new conditionBlock: [:aCollision |
		aCollision collider activeState sizeToken == CqMiniSizeState stateToken]