instance creation
fromHorizontalCollisionCondition

	^ self new conditionBlock: [:aCollision | aCollision isHorizontalCollision]