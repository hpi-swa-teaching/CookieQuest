instance creation
fromAboveCollisionCondition

	^ self new conditionBlock: [:aCollision | aCollision direction == CqCollision directionAbove]