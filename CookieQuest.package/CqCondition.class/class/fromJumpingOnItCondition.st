instance creation
fromJumpingOnItCondition

	^ self new conditionBlock: [:aCollision |
		(self fromCollisionWeakAboveCondition conditionBlock value: aCollision)
		| (aCollision direction == CqCollision directionAbove)]