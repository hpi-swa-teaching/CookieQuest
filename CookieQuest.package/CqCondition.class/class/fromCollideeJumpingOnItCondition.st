instance creation
fromCollideeJumpingOnItCondition

	^ self new conditionBlock: [:aCollision |
		CqCondition fromJumpingOnItCondition conditionBlock value: aCollision inverted]