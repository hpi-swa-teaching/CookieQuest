logic
negate

	^ self class new conditionBlock: [:aCollision |
		(self conditionBlock value: aCollision) not]